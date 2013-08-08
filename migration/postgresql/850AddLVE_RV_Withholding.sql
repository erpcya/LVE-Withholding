--DROP VIEW LVE_RV_Withholding
CREATE OR REPLACE VIEW LVE_RV_Withholding AS 
SELECT DISTINCT
	ci.ad_client_id, 
	ci.ad_org_id, 
	cil.c_invoice_id, 
	ci.c_invoice_id AS docaffected_id, 
	ci.dateinvoiced, 
	ci.controlno, 
	cdt.name, 
	ctax.rate, 
	ctax.taxamt, 
	ctax.taxbaseamt, 
	ci.totallines, 
	ci.grandtotal, 
	cil.linenetamt, 
	ciaffected.documentno,
	ciaffected.amount, 
	whc.aliquot, 
	wcc.subtrahend, 
	wt.value AS withholdinggroupvalue, 
	wt.name AS name_retentiongroup, 
	cil.line / 10::numeric AS line,
	whc.value
FROM c_doctype cdt
JOIN c_invoice ci ON ci.c_doctype_id = cdt.c_doctype_id
JOIN c_invoiceline cil ON ci.c_invoice_id = cil.docaffected_id
JOIN LVE_WH_Concept wc ON wc.LVE_WH_Concept_ID = ci.LVE_WH_Concept_ID
JOIN LVE_WH_Combination whc ON whc.LVE_WH_Concept_ID = wc.LVE_WH_Concept_ID
JOIN LVE_WH_Config wcc ON wcc.LVE_WH_Combination_ID = whc.LVE_WH_Combination_ID
JOIN LVE_Withholding w ON wc.LVE_Withholding_ID = w.LVE_Withholding_ID
JOIN LVE_WH_Type wt ON wt.LVE_WH_Type_ID = w.LVE_WH_Type_ID
JOIN ( SELECT citax.c_invoice_id, max(ctax.rate) AS rate, 
    sum(citax.taxamt) AS taxamt, 
    sum(
        CASE ctax.rate
            WHEN 0 THEN 0::numeric
            ELSE citax.taxbaseamt
        END) AS taxbaseamt
   FROM c_invoicetax citax
   JOIN c_tax ctax ON citax.c_tax_id = ctax.c_tax_id
  GROUP BY citax.c_invoice_id) ctax ON ctax.c_invoice_id = ci.c_invoice_id
   LEFT JOIN ( SELECT cal.c_invoice_id AS retention_id, calrel.c_invoice_id, 
    ci.documentno, calrel.amount
   FROM c_allocationhdr cah
   JOIN c_allocationline cal ON cah.c_allocationhdr_id = cal.c_allocationhdr_id
   JOIN c_allocationline calrel ON cah.c_allocationhdr_id = calrel.c_allocationhdr_id
   JOIN c_invoice ci ON ci.c_invoice_id = calrel.c_invoice_id
  WHERE NOT (EXISTS ( SELECT 1
   FROM LVE_Withholding
  WHERE LVE_Withholding.WithholdingDocType_ID = ci.c_doctype_id))) ciaffected ON ciaffected.retention_id = ci.c_invoice_id AND ciaffected.c_invoice_id <> ci.c_invoice_id;
