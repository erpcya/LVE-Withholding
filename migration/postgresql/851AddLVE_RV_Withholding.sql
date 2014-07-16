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
	(Select DocumentNo From LVE_ReferencedDocuments(CI.C_Invoice_ID) As (Amount Numeric ,DocumentNo Varchar(30),Invoice_ID Numeric,DateInvoiced Timestamp)) DocumentNo, --DocumentNo Affeected
	(Select Amount From LVE_ReferencedDocuments(CI.C_Invoice_ID) As (Amount Numeric ,DocumentNo Varchar(30),Invoice_ID Numeric,DateInvoiced Timestamp)) Amount, --Amount Affected
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
	TO_CHAR(CI.DateAcct,'YYYY') AS Year,
	CASE WHEN CI.LVE_WH_Concept_ID IS NULL 
		THEN cilbwh.WHBaseAmt
		ELSE CI.TotalLines
	END WHBaseAmt ,				--Base Subject to WithHolding
	
	CASE WHEN CI.LVE_WH_Concept_ID IS NULL 
		THEN cilbwh.WHTaxAmt
		ELSE CTAX.TaxAmt
	END WHTaxAmt,				--Tax Subject to WithHolding
	WHC.TaxBaseRate,
	whr.ReferenceNO,
	whr.LVE_WH_Relation_ID
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
            GROUP BY CITAX.C_Invoice_ID) ctax ON CTAX.C_Invoice_ID = CI.C_Invoice_ID 
--Base Tax WithHolding
/*LEFT JOIN (SELECT 
		MAX(cil.C_Invoice_ID) C_Invoice_ID,
		Sum(cil.LineNetAmt) WHBaseAmt,
		Sum(cil.TaxAmt) WHTaxAmt
	   FROM C_invoiceLine cil 
	   INNER JOIN LVE_WC_ProductCharge wcpch ON (cil.M_Product_ID=wcpch.M_Product_ID OR cil.C_Charge_ID=wcpch.C_Charge_ID) 
	   WHERE wcpch.IsActive ='Y'
	   --GROUP BY cil.C_Invoice_ID,cil.LineNetAmt
	   ) cilbwh ON cilbwh.C_Invoice_ID = CI.C_Invoice_ID*/
LEFT JOIN ( SELECT cil.c_invoice_id AS c_invoice_id, 
   sum(cil.linenetamt) AS whbaseamt, sum(cil.taxamt) AS whtaxamt,w.WithHoldingDocType_ID
  FROM c_invoiceline cil
  JOIN lve_wc_productcharge wcpch ON cil.m_product_id = wcpch.m_product_id OR cil.c_charge_id = wcpch.c_charge_id
  LEFT JOIN LVE_WH_Concept wc ON wc.LVE_WH_Concept_ID = wcpch.LVE_WH_Concept_ID
  LEFT JOIN LVE_WH_ConceptGroup wcg ON wc.LVE_WH_ConceptGroup_ID = wcg.LVE_WH_ConceptGroup_ID
  LEFT JOIN LVE_WithHolding w ON wcg.LVE_WH_ConceptGroup_ID = w.LVE_WH_ConceptGroup_ID
 WHERE wcpch.isactive = 'Y'::bpchar group by cil.c_invoice_id, w.WithHoldingDocType_ID
 )
 cilbwh ON cilbwh.C_Invoice_ID = CI.C_Invoice_ID  AND cilbwh.WithHoldingDocType_ID = ciw.C_DocType_ID

	   
LEFT JOIN  (
		SELECT 
			ReferenceNO,
			C_BPartner_ID,
			LVE_WH_Relation_ID,
			LVE_Withholding_ID
		FROM LVE_WH_Relation whr
		WHERE ReferenceNO <> ''
	)whr ON (whr.C_BPartner_ID = CI.C_BPartner_ID AND whr.LVE_Withholding_ID = w.LVE_Withholding_ID)

 WHERE whr.lve_wh_relation_id IN (SELECT wrs.lve_wh_relation_id
   									FROM lve_wh_relation wrs
  									WHERE wrs.isactive = 'Y' AND 
  										wrs.c_bpartner_id = ci.c_bpartner_id AND 
  										wrs.validfrom <= ci.dateacct AND 
  										wrs.lve_withholding_id = whr.lve_withholding_id
  									ORDER BY wrs.validfrom DESC
  									LIMIT 1)
 OR whr.lve_wh_relation_id IS NULL
--WHERE  CIW.C_Invoice_ID= 1092745
--WHERE  ciw.C_Invoice_ID=1087997
--	AND CI.DocStatus IN ('CO','CL')--1077156
;



 --SELECT * FROM LVE_WC_ProductCharge WHERE C_Charge_ID=1000159