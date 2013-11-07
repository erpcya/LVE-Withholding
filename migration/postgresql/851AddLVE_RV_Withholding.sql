--Referenced Documents
Create Or Replace Function LVE_ReferencedDocuments(p_C_Invoice_ID Numeric)
RETURNS RECORD AS 
$$
Declare
result Record;
AllocLine Record;
v_DocumentNo Varchar;
v_Amt Numeric;
v_ID Numeric;
Begin
For AllocLine In Select cal.C_AllocationHdr_ID 
		From 
		C_AllocationLine cal 
		Inner Join C_AllocationHdr cah On cal.C_AllocationHdr_ID=cah.C_AllocationHdr_ID
		Where cal.C_Invoice_ID=p_C_Invoice_ID And cah.DocStatus In('CO','CL')
Loop
	--Not Allocation invoice
	If Not Exists(Select 1 
			From C_AllocationLine cal 
			Inner Join C_Invoice ci On cal.C_Invoice_ID=ci.C_Invoice_ID
			Inner Join C_DocType dt On dt.C_DocType_ID=ci.C_DocType_ID
			Where cal.C_AllocationHdr_ID=AllocLine.C_AllocationHdr_ID 
			And Exists(Select 1 From LVE_Withholding WH Where WH.WithholdingDocType_ID=ci.C_DocTypeTarget_ID) --Don't WithHolding Dcuments
			) Then 

		v_Amt:=null;
		v_DocumentNo:=null;
		Select Abs(cal.Amount),ci.DocumentNo,ci.C_Invoice_ID into v_Amt,v_DocumentNo,v_ID From 
		C_AllocationLine cal 
		Inner Join C_invoice ci On cal.C_Invoice_ID = ci.C_Invoice_ID
		Inner Join C_DocType dt On dt.C_DocType_ID=ci.C_DocType_ID
		Where cal.C_AllocationHdr_ID= AllocLine.C_AllocationHdr_ID And --Equals to Allocation
		cal.C_Invoice_ID<>p_C_Invoice_ID And --Documents <> WithHolding
		dt.DocTypeDeclare ='01' And --Only Document Invoice
		Not Exists(Select 1 From LVE_Withholding WH Where WH.WithholdingDocType_ID=ci.C_DocTypeTarget_ID) --Don't WithHolding Dcuments
		Limit 1;
		if (v_Amt Is Not Null And v_DocumentNo Is Not Null) Then
			result := (Cast(v_Amt AS Numeric),Cast(v_DocumentNo AS Varchar(30)),Cast(v_ID As Numeric));
			Raise Notice 'DocumentNo % - Amt %', v_DocumentNo,v_Amt ;
		End If;
		
	End If;
End Loop;

Return result;
End;
$$
Language PLPGSQL;

--DROP VIEW LVE_RV_Withholding
CREATE OR REPLACE VIEW LVE_RV_Withholding AS 
SELECT DISTINCT
	CI.AD_Client_ID,                    --Companny ID
	CI.AD_Org_ID,                       --Org ID
	CIL.C_Invoice_ID,                   --Root Document(Document WithHolding ID)
	CI.C_Invoice_ID AS DocAffected_ID,  --Document Retain
	CI.DateInvoiced,                    --Date Documentno
	CI.ControlNo,                       --Control No
	CDTT.Name,                           --Document Type Name
	CTAX.Rate,                          --Aliquot Invoice
	CTAX.TaxAmt,                        --Tax Amt
	CTAX.TaxBaseAmt,                    --Base Amt
	CI.TotalLines,                      --Total Lines exclude tax
	CI.GrandTotal,                      --Total Document
	CIL.LinenetAmt,                     --Line Net (Retention Amt)
	--CIAffected.DocumentNo,              --DocumentNo Affeected
	--CIAffected.Amount,                  --Amount Affected
	(Select DocumentNo From LVE_ReferencedDocuments(CI.C_Invoice_ID) As (Amount Numeric ,DocumentNo Varchar(30),Invoice_ID Numeric)) DocumentNo, --DocumentNo Affeected
	(Select Amount From LVE_ReferencedDocuments(CI.C_Invoice_ID) As (Amount Numeric ,DocumentNo Varchar(30),Invoice_ID Numeric)) Amount, --Amount Affected
	WHC.Aliquot,                        --Aliquot WithHolding
	WCC.Subtrahend,                     --Subtrahend
	WT.value AS withholdinggroupvalue,  --Value WithHolding Group
	WT.name AS name_retentiongroup,     --Name WithHolding Group
	CIL.line / 10 AS line,              --Line No
	WHC.value,                          --WithHolding Combination Code
	WCC.MinValue,                       --WithHolding Minimal
	CIW.DocumentNo As WH_DocumentNo,     --WithHolding DocumentNo
	CTAX.Exempt,
	TO_CHAR(CI.DateAcct,'MM') AS MONTH,
	TO_CHAR(CI.DateAcct,'YYYY') AS Year
FROM 
-- Invoice DocType
C_DocType CDT 
-- Translate DocType
LEFT JOIN C_DocType_Trl CDTT ON (CDTT.C_DocType_ID = CDT.C_DocType_ID)
-- Invoice
INNER JOIN C_Invoice CI ON CI.C_DocType_ID = CDT.C_DocType_ID 
-- WithHolding Line
INNER JOIN C_InvoiceLine CIL ON CI.C_Invoice_ID = CIL.DocAffected_ID 
-- WithHolding Header
INNER JOIN (Select  C_Invoice_ID,
                    C_DocType_ID,
                    DocumentNo
            From C_Invoice )CIW ON CIW.C_Invoice_ID = CIL.C_Invoice_ID 
--WithHolding Config
INNER JOIN LVE_WH_Config WCC ON WCC.LVE_WH_Config_ID = CIL.LVE_WH_Config_ID 
--WithHolding Combination
INNER JOIN LVE_WH_Combination WHC ON whc.LVE_WH_Combination_ID = WCC.LVE_WH_Combination_ID 
--WithHolding Concept
INNER JOIN LVE_WH_Concept WC ON WC.LVE_WH_Concept_ID = WHC.LVE_WH_Concept_ID 
-- WithHolding Concept Group
INNER JOIN LVE_WH_ConceptGroup WCG ON WCG.LVE_WH_ConceptGroup_ID = WC.LVE_WH_ConceptGroup_ID 
--WithHolding
INNER JOIN LVE_Withholding W ON WC.LVE_WH_ConceptGroup_ID = W.LVE_WH_ConceptGroup_ID And CIW.C_DocType_ID = W.WithHoldingDocType_ID 
--WithHolding Type
INNER JOIN LVE_WH_Type WT ON WT.LVE_WH_Type_ID = W.LVE_WH_Type_ID
-- Tax Invoice
INNER JOIN (Select  CITAX.C_Invoice_ID,
                    max(CTAX.Rate) AS rate, 
                    sum(CITAX.TaxAmt) AS taxamt, 
                    sum(CASE CTAX.Rate WHEN 0 THEN 0 ELSE CITAX.TaxBaseAmt END) AS TaxBaseAmt,
                    SUM(CASE CTAX.Rate WHEN 0 THEN CITAX.TaxBaseAmt ELSE 0 END) AS Exempt 
            FROM C_InvoiceTax CITAX
            INNER JOIN C_Tax CTAX ON CITAX.C_Tax_ID = ctax.C_Tax_ID
            GROUP BY CITAX.C_Invoice_ID) ctax ON CTAX.C_Invoice_ID = CI.C_Invoice_ID -- Tax Invoice
-- Allocation Invoice
/*LEFT JOIN (

		SELECT
			CAL.C_Invoice_ID AS WH_Document_id, 
			CALREL.c_invoice_id, 
			CI.DocumentNo, 
			CALREL.amount
		FROM C_AllocationHDR CAH
		INNER JOIN C_AllocationLine CAL ON CAH.C_AllocationHDR_ID = CAL.C_AllocationHDR_ID
		INNER JOIN C_allocationLine CALREL ON CAH.C_AllocationHDR_ID = CALREL.C_AllocationHDR_ID
		INNER JOIN C_Invoice CI ON CI.C_Invoice_ID = CALREL.C_Invoice_ID
		--INNER JOIN C_Invoice CIT ON CIT.C_Invoice_ID = CAL.C_Invoice_ID
		INNER JOIN C_DocType dt ON (CI.C_DocType_ID = dt.C_DocType_ID)
		WHERE NOT (
				EXISTS(SELECT 1
					FROM LVE_Withholding
					WHERE LVE_Withholding.WithholdingDocType_ID = CI.C_DocType_ID --OR LVE_Withholding.WithholdingDocType_ID = DT.C_DocType_ID
					)
                            ) 
                            AND dt.DocTypeDeclare = '01'

) CIAffected ON (
						(CIAffected.WH_Document_id = CI.C_Invoice_ID) 
						AND (CIAffected.C_Invoice_ID <> CI.C_Invoice_ID)
					)*/
					 
;

