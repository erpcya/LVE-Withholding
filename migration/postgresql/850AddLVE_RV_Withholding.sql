--DROP VIEW LVE_RV_Withholding
CREATE OR REPLACE VIEW LVE_RV_Withholding AS 
SELECT DISTINCT
	CI.AD_Client_ID,                    --Companny ID
	CI.AD_Org_ID,                       --Org ID
	CIL.C_Invoice_ID,                   --Root Document(Document WithHolding ID)
	CI.C_Invoice_ID AS DocAffected_ID,  --Document Retain
	CI.DateInvoiced,                    --Date Documentno
	CI.ControlNo,                       --Control No
	CDT.Name,                           --Document Type Name
	CTAX.Rate,                          --Aliquot Invoice
	CTAX.TaxAmt,                        --Tax Amt
	CTAX.TaxBaseAmt,                    --Base Amt
	CI.TotalLines,                      --Total Lines exclude tax
	CI.GrandTotal,                      --Total Document
	CIL.LinenetAmt,                     --Line Net (Retention Amt)
    CIAffected.DocumentNo,              --DocumentNo Affeected
	CIAffected.Amount,                  --Amount Affected
	WHC.Aliquot,                        --Aliquot WithHolding
	WCC.Subtrahend,                     --Subtrahend
	WT.value AS withholdinggroupvalue,  --Value WithHolding Group
	WT.name AS name_retentiongroup,     --Name WithHolding Group
	CIL.line / 10 AS line,              --Line No
	WHC.value,                          --WithHolding Combination Code
    WCC.MinValue,                       --WithHolding Minimal
    CIW.DocumentNo As WH_DocumentNo     --WithHolding DocumentNo
FROM 
-- Invoice DocType
C_DocType CDT 
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
                    sum(CASE CTAX.Rate WHEN 0 THEN 0 ELSE CITAX.TaxBaseAmt END) AS TaxBaseAmt
            FROM C_InvoiceTax CITAX
            INNER JOIN C_Tax CTAX ON CITAX.C_Tax_ID = ctax.C_Tax_ID
            GROUP BY CITAX.C_Invoice_ID) ctax ON CTAX.C_Invoice_ID = CI.C_Invoice_ID -- Tax Invoice
-- Allocation Invoice
LEFT JOIN (Select   CAL.C_Invoice_ID AS WH_Document_id, 
                    CALREL.c_invoice_id, 
                    CI.DocumentNo, 
                    CALREL.amount
            FROM C_AllocationHDR CAH
            INNER JOIN C_AllocationLine CAL ON CAH.C_AllocationHDR_ID = CAL.C_AllocationHDR_ID
            INNER JOIN C_allocationLine CALREL ON CAH.C_AllocationHDR_ID = CALREL.C_AllocationHDR_ID
            INNER JOIN C_Invoice CI ON CI.C_Invoice_ID = CALREL.C_Invoice_ID
            WHERE NOT EXISTS(SELECT 1
                             FROM LVE_Withholding
                             WHERE LVE_Withholding.WithholdingDocType_ID = CI.c_doctype_id
                            )) CIAffected ON CIAffected.WH_Document_id = CI.C_Invoice_ID AND CIAffected.C_Invoice_ID <> CI.C_Invoice_ID;
