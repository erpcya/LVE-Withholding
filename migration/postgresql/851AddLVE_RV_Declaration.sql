--DROP VIEW LVE_RV_Declaration 
CREATE VIEW LVE_RV_Declaration AS 
SELECT DISTINCT
	ci.ad_client_id, 
	ci.ad_org_id, 
	ci.c_invoice_id, 
	cil.docaffected_id, 
	oi.taxid,
	cdti.doctypedeclare, 
	cdti.value, 
	cdti.taxid AS BusinessTaxID, 
	cdti.documentno, 
	cdti.controlno, 
	cdti.c_bpartner_id, 
	cdti.name, 
	cdti.dateacct,
		
	o.value AS riforg, 
	ci.dateinvoiced,
	ifac.totalex,
	iafect.grandtotal, --Total de la factura Afectada
	ifac.taxbaseamt, --Total Del Monto base de la factura Afectada
	il.linenetamt, -- Total de la Linea de la Retencion
	iafect.documentno AS affecteddocumentno,  -- Documento Afectado de la Linea de la Retencion
	ir.documentno AS WithholdingNo, -- Numero del documento Afectado
	ifac.tasaimpuesto AS rate ,
	ilafect.taxamt, -- Monto del impuesto del documento Afectado
	iafect.totallines -- Monto del total de linea del documento Afectado
FROM AD_OrgInfo oi
JOIN c_invoice ci ON oi.ad_org_id = ci.ad_org_id
JOIN c_invoiceline cil ON ci.c_invoice_id = cil.c_invoice_id
JOIN C_Invoice ir ON ir.C_Invoice_ID = cil.C_Invoice_ID
JOIN C_InvoiceLine il ON ci.C_Invoice_ID = il.C_Invoice_ID
LEFT JOIN ( 
	SELECT 
		ci.c_invoice_id, 
		ci.Grandtotal,
		cdt.c_doctype_id, 
		cdt.doctypedeclare,
		cbp.value, 
		cbp.taxid, 
		ci.documentno, 
		ci.controlno, 
		ci.c_bpartner_id,
		cbp.name, 
		ci.dateacct
   FROM c_invoice ci
   JOIN c_doctype cdt ON ci.c_doctype_id = cdt.c_doctype_id
   JOIN c_bpartner cbp ON ci.c_bpartner_id = cbp.c_bpartner_id
   
   ) cdti ON cdti.c_invoice_id = il.docaffected_id
JOIN ad_org o ON o.ad_org_id = oi.ad_org_id
JOIN ( SELECT li.c_invoice_id, 
    sum(
        CASE
            WHEN li.taxamt = 0::numeric THEN li.taxbaseamt
            ELSE 0::numeric
        END) AS totalex, 
    sum(
        CASE
            WHEN li.taxamt <> 0::numeric THEN li.taxbaseamt
            ELSE 0::numeric
        END) AS totalbi, 
    sum(
        CASE
            WHEN li.taxamt <> 0::numeric THEN li.taxamt
            ELSE 0::numeric
        END) AS totalimpuesto, 
    max(im.rate) AS tasaimpuesto,
    li.taxbaseamt,
    im.rate
   FROM c_invoicetax li
   JOIN c_tax im ON im.c_tax_id = li.c_tax_id
  GROUP BY li.c_invoice_id,li.taxbaseamt,im.rate) ifac ON ifac.c_invoice_id = cdti.c_invoice_id
  JOIN C_Invoice iafect ON iafect.C_Invoice_ID = cdti.C_Invoice_ID
  JOIN C_InvoiceLine ilafect on ilafect.C_Invoice_ID = iafect.C_Invoice_ID
