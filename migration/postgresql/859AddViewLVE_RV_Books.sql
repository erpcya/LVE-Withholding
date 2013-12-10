--DROP VIEW LVE_RV_Books;
CREATE OR REPLACE VIEW LVE_RV_Books AS 
SELECT
	i.AD_Client_ID,
	i.AD_Org_ID,
	i.C_Invoice_ID,
	dt.C_DocType_ID,
	dt.DocTypeDeclare,
	i.DateInvoiced,
	i.DateAcct,
	i.ControlNo,
	i.DocumentNo,
	bp.NAME,
	bp.VALUE,
	bp.TaxID,
	i.GrandTotal,
	itax.Exempt,
	itax.TaxBaseAmt,
	itax.Rate,
	itax.TaxAmt,
	--iaffected.DocAffected_ID,
	(Select DocAffected_ID From LVE_ReferencedDocuments(I.C_Invoice_ID) As (Amount Numeric ,DocumentNo Varchar(30),DocAffected_ID Numeric,DateInvoiced Timestamp)) DocAffected_ID,
	wit.DocumentNo  AS RetDocumentNo,
	wit.LineNetAmt,
	i.DocStatus,
	i.DocAction,
	i.IsSoTrx,
	itax.TaxBaseAmt AS A_Base_Amount,
	i.C_BPartner_ID 
FROM C_DocType dt 
INNER JOIN C_Invoice i ON dt.C_DocType_ID = i.C_DocType_ID 
INNER JOIN C_BPartner bp ON bp.C_BPartner_ID = i.C_BPartner_ID 
INNER JOIN (	
		SELECT 
			it.C_Invoice_ID,
			MAX(t.Rate) AS Rate,
			SUM(it.TaxAmt) AS TaxAmt,
			SUM(CASE t.Rate WHEN 0 THEN 0 ELSE it.TaxBaseAmt END )  AS TaxBaseAmt,
			SUM(CASE t.Rate WHEN 0 THEN it.TaxBaseAmt ELSE 0 END)   AS Exempt 
		FROM C_InvoiceTax it 
		INNER JOIN C_Tax t ON t.C_Tax_ID = it.C_Tax_ID 
		GROUP BY
			it.C_Invoice_ID 
		) itax ON itax.C_Invoice_ID = i.C_Invoice_ID 
/*LEFT JOIN (	
		SELECT DISTINCT
			al.C_Invoice_ID,
			alrel.C_Invoice_ID AS DocAffected_ID,
			i.DocumentNo,
			alrel.Amount 
		FROM C_AllocationHdr ah 
		INNER JOIN C_AllocationLine al ON al.C_AllocationHdr_ID = ah.C_AllocationHdr_ID 
		INNER JOIN C_AllocationLine alrel ON alrel.C_AllocationHdr_ID = ah.C_AllocationHdr_ID 
		INNER JOIN C_Invoice i ON i.C_Invoice_ID = alrel.C_Invoice_ID 
		WHERE NOT ( 
				EXISTS (	
					SELECT 1 
					FROM LVE_Withholding w 
					WHERE
						w.WithholdingDocType_ID = i.C_DocType_ID 
					)
			) 
	)iaffected ON (iaffected.C_Invoice_ID = i.C_Invoice_ID) AND iaffected.DocAffected_ID <> i.C_Invoice_ID */
LEFT JOIN (	
		SELECT DISTINCT 
				ilw.DocAffected_ID,
				iw.DocumentNo,
				ilw.LineNetAmt,
				wt.Value 
		FROM C_Invoice iw 
		INNER JOIN C_InvoiceLine ilw ON (iw.C_Invoice_ID = ilw.C_Invoice_ID) 
		INNER JOIN LVE_Withholding w ON w.WithholdingDocType_ID = iw.C_DocType_ID 
		INNER JOIN LVE_WH_Type wt ON (wt.LVE_WH_Type_ID = w.LVE_WH_Type_ID) 
		WHERE 
			(iw.DocStatus = ANY (ARRAY ['CL'::BPCHAR,'CO'::BPCHAR ])) 
			AND wt.VALUE = 'RIVA' 
	)wit ON (wit.DocAffected_ID = i.C_Invoice_ID) 
WHERE 
	dt.AffectsBook = 'Y'::bpchar 
	AND i.DocStatus IN ('CL','CO')
	--AND i.C_Invoice_ID = 1060610
	--AND i.IsSOTrx = 'N'
	--AND wit.VALUE = 'RIVA' 
	
	
UNION
	ALL 
SELECT
	cbj.ad_client_id,
	cbj.ad_org_id,
	cbj.c_invoice_id,
	cbj.c_doctypetarget_id                   AS c_doctype_id,
	tdoc.doctypedeclare,
	cbj.datedoc                              AS dateinvoiced,
	cbj.dateacct,
	cbj.controlno,
	cbj.referenceno                          AS documentno,
	bp.NAME,
	bp.VALUE,
	bp.taxid,
	CASE	 
		WHEN cbj.docstatus = 'RE'::bpchar 
		THEN 0 
		ELSE 1 
	END::NUMERIC * SUM(cbj.amount * (-1)::NUMERIC) AS grandtotal,
	Round(cbj.amount - (cbj.a_base_amount + 
	CASE	 
		WHEN cbj.c_tax_id IS NULL 
		THEN 0::NUMERIC 
		ELSE (	SELECT
				cbj.a_base_amount * (c_tax.rate / 100::NUMERIC) 
			FROM
				c_tax 
			WHERE
				c_tax.c_tax_id = cbj.c_tax_id
		)
	END), 2)                AS exempt,
	cbj.taxbaseamt,
	cbj.rate,
	round( 
	CASE	 
		WHEN cbj.c_tax_id IS NULL 
		THEN 0::NUMERIC 
		ELSE (	SELECT
				cbj.a_base_amount * (c_tax.rate / 100::NUMERIC) 
			FROM
				c_tax 
			WHERE
				c_tax.c_tax_id = cbj.c_tax_id
		)
	END, 2)                       AS taxamt,
	NULL::NUMERIC                            AS docaffected_id,
	NULL::CHARACTER VARYING                  AS retdocumentno,
	NULL::NUMERIC                            AS linenetamt,
	cbj.docstatus,
	cbj.docaction,
	'N'::bpchar                              AS issotrx,
	cbj.a_base_amount,
	cbj.C_BPartner_ID
FROM
	LVE_RV_CashBookJournal cbj 
		JOIN c_bpartner bp 
		ON bp.c_bpartner_id = cbj.c_bpartner_id 
		JOIN c_doctype tdoc 
		ON tdoc.c_doctype_id = cbj.c_doctypetarget_id 
WHERE
	cbj.affectsbook = 'Y'::bpchar AND
	cbj.cashtype = 'C'::bpchar AND
	cbj.docstatus IN ('CO','CL') 
GROUP BY
	cbj.ad_client_id,
	cbj.ad_org_id,
	cbj.c_invoice_id,
	cbj.c_doctypetarget_id,
	cbj.datedoc,
	cbj.dateacct,
	cbj.controlno,
	cbj.referenceno,
	bp.NAME,
	bp.VALUE,
	bp.taxid,
	cbj.docstatus,
	cbj.amount,
	cbj.a_base_amount,
	cbj.c_tax_id,
	cbj.docaction,
	cbj.taxbaseamt,
	cbj.rate,
	tdoc.doctypedeclare,
	cbj.C_BPartner_ID
	--ORDER BY
	--6 DESC
	;

