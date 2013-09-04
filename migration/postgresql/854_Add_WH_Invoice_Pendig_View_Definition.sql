Create Or Replace View LVE_RV_WH_ISLR As 
SELECT 	inv.AD_Client_ID,
	inv.AD_Org_ID,
	inv.C_Invoice_ID, 
	cn.LVE_WH_Config_ID, 
	bp.C_BPartner_ID, 
	rr.LVE_Withholding_ID, 
	SUM(linv.LineNetAmt) WithholdingAmt,
	inv.DateAcct
FROM 
--Invoice
C_Invoice inv
--Invoice Line
INNER JOIN C_InvoiceLine linv 		ON(linv.C_Invoice_ID = inv.C_Invoice_ID)
--Business Partner
INNER JOIN C_BPartner bp 		ON(bp.C_BPartner_ID = inv.C_BPartner_ID)
--WithHolding Relation
INNER JOIN LVE_WH_Relation rr 		ON(rr.C_BPartner_ID = bp.C_BPartner_ID)
--WithHolding
INNER JOIN LVE_Withholding rt 		ON(rt.LVE_Withholding_ID = rr.LVE_Withholding_ID)
--WithHolding
INNER JOIN LVE_WH_Type 	   rty 		ON(rt.LVE_WH_Type_ID = rty.LVE_WH_Type_ID)
--WithHolding Concept Group
INNER JOIN LVE_WH_ConceptGroup cg 	ON(cg.LVE_WH_ConceptGroup_ID = rt.LVE_WH_ConceptGroup_ID)
--WithHolding Concept
INNER JOIN LVE_WH_Concept whc 		ON(whc.LVE_WH_ConceptGroup_ID = cg.LVE_WH_ConceptGroup_ID)
--WithHolding Combination
INNER JOIN LVE_WH_Combination cb 	ON(cb.LVE_WH_Concept_ID = whc.LVE_WH_Concept_ID)
--WithHolding Configuration
INNER JOIN LVE_WH_Config cn 		ON(cn.LVE_WH_Combination_ID = cb.LVE_WH_Combination_ID AND cn.LVE_Withholding_ID = rr.LVE_Withholding_ID)
--DocType Invoice
INNER JOIN C_DocType dt 		ON(dt.C_DocType_ID = inv.C_DocType_ID)
--DocType WithHolding
INNER JOIN C_DocType dtr 		ON(dtr.C_DocType_ID = rt.WithholdingDocType_ID)
--WH Relation
INNER JOIN LVE_WH_Relation rrdt 	ON(rrdt.C_DocType_ID = inv.C_DocType_ID AND rrdt.LVE_Withholding_ID = rr.LVE_Withholding_ID)
--WithHolding Product Charge
LEFT JOIN LVE_WC_ProductCharge wcp ON(wcp.C_Charge_ID = linv.C_Charge_ID OR wcp.M_Product_ID = linv.M_Product_ID)
-- Filter
WHERE inv.DocStatus IN('CO')
AND (
		(whc.LVE_WH_Concept_ID = inv.LVE_WH_Concept_ID AND inv.LVE_WH_Concept_ID IS NOT NULL)
		OR
		(whc.LVE_WH_Concept_ID = wcp.LVE_WH_Concept_ID AND inv.LVE_WH_Concept_ID IS NULL)
     )
AND bp.LVE_PersonType_ID = cb.LVE_PersonType_ID
--Valid Exists other Retention
AND NOT EXISTS(SELECT 1 FROM C_Invoice ret
 				LEFT JOIN C_InvoiceLine retl ON(ret.C_Invoice_ID = retl.C_Invoice_ID)
				WHERE ret.DocStatus IN('CO', 'CL') 
				AND ret.C_DocType_ID = rt.WithholdingDocType_ID
				AND retl.DocAffected_ID = inv.C_Invoice_ID)
--Group
GROUP BY inv.AD_Client_ID,
	inv.AD_Org_ID,
	inv.C_Invoice_ID, 
	cn.LVE_WH_Config_ID, 
	bp.C_BPartner_ID,
	rt.C_Charge_ID,  
	rr.LVE_Withholding_ID,
	rt.WithholdingDocType_ID,
	inv.DateAcct
--Having
HAVING (SUM(linv.LineNetAmt) >= cn.MinValue AND SUM(linv.LineNetAmt) > 0)
ORDER BY bp.C_BPartner_ID, 
	 rr.LVE_Withholding_ID, 
	 inv.C_Invoice_ID, 
	 rt.C_Charge_ID, 
	 rt.WithholdingDocType_ID;

Create Or Replace View LVE_RV_WH_IVA As 
SELECT 
	inv.AD_Client_ID,
	inv.AD_Org_ID,
	inv.C_Invoice_ID, 
	cn.LVE_WH_Config_ID, 
	bp.C_BPartner_ID, 
	rr.LVE_Withholding_ID, 
	SUM(itax.TaxAmt) WithholdingAmt,
	inv.DateAcct
	
FROM 
--Invoice
C_Invoice inv 
--Invoice Tax
INNER JOIN C_InvoiceTax itax ON(itax.C_Invoice_ID = inv.C_Invoice_ID) 
--Partner
INNER JOIN C_BPartner bp ON(bp.C_BPartner_ID = inv.C_BPartner_ID) 
--WH Relation
INNER JOIN LVE_WH_Relation rr ON(rr.C_BPartner_ID = bp.C_BPartner_ID) 
--WithHolding
INNER JOIN LVE_Withholding rt ON(rt.LVE_Withholding_ID = rr.LVE_Withholding_ID) 
--Concept Group
INNER JOIN LVE_WH_ConceptGroup cg ON(cg.LVE_WH_ConceptGroup_ID = rt.LVE_WH_ConceptGroup_ID) 
--Concept
INNER JOIN LVE_WH_Concept whc ON(whc.LVE_WH_ConceptGroup_ID = cg.LVE_WH_ConceptGroup_ID) 
--Combination
INNER JOIN LVE_WH_Combination cb ON(cb.LVE_WH_Concept_ID = whc.LVE_WH_Concept_ID) 
--Config
INNER JOIN LVE_WH_Config cn ON(cn.LVE_WH_Combination_ID = cb.LVE_WH_Combination_ID AND cn.LVE_Withholding_ID = rt.LVE_Withholding_ID)  
--Invoice DocType 
INNER JOIN C_DocType dt ON(dt.C_DocType_ID = inv.C_DocType_ID) 
--WH DocType
INNER JOIN C_DocType dtr ON(dtr.C_DocType_ID = rt.WithholdingDocType_ID) 
--WH Relation
INNER JOIN LVE_WH_Relation rrdt ON(rrdt.C_DocType_ID = inv.C_DocType_ID AND rrdt.LVE_Withholding_ID = rr.LVE_Withholding_ID) 
--Filter
WHERE 
inv.DocStatus IN('CO') 
AND NOT EXISTS(SELECT 1 
		FROM C_Invoice ret 
		LEFT JOIN C_InvoiceLine retl ON(ret.C_Invoice_ID = retl.C_Invoice_ID) 
		WHERE ret.DocStatus IN('CO', 'CL') 
		AND ret.C_DocType_ID = rt.WithholdingDocType_ID 
		AND retl.DocAffected_ID = inv.C_Invoice_ID) 
--Group By
GROUP BY inv.AD_Client_ID,
	 inv.AD_Org_ID,
	 inv.C_Invoice_ID, 
	 cn.LVE_WH_Config_ID, 
	 bp.C_BPartner_ID, 
	 rr.LVE_Withholding_ID,
	 rt.C_Charge_ID, 
	 rt.WithholdingDocType_ID,
	 inv.DateAcct
--Having
HAVING (SUM(itax.TaxAmt) > 0) 
--Order By
ORDER BY bp.C_BPartner_ID, rr.LVE_Withholding_ID, inv.C_Invoice_ID, rt.C_Charge_ID, rt.WithholdingDocType_ID; 
