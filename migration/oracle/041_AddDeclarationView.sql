Create Or Replace View CUST_RV_Declaration As
Select distinct 
	ci.ad_client_id, ci.ad_org_id,
	ci.C_Invoice_ID, /*Invoice ID Document Declaration*/
	cil.DocAffected_ID, /*Retention Document ID*/
	oi.TaxID, /*ID Organization*/
	cdti.DocTypeDeclare, /* Declared Type*/
	cdti.Value ,/*Bussines Partner Value*/
	cdti.TaxID AS BCTaxID,/*Bussines Partner TaxID*/
	cdti.DocumentNo,/*DocumentNo */
	cdti.ControlNo,/*Control No*/
	crr.GrandTotal,/*Document Total*/
	crr.TaxBaseAmt,/*Base Amt*/
	crr.LinenetAmt,/*Retain Amt*/
	crr.DocumentNo As AffectedDocumentNo, /*Affected Document No*/
	cir.DocumentNo as RetentionNo ,/*Retention No*/
	crr.Rate,/*Rate*/
	crr.TaxAmt,/*Tax Amt*/
	crr.TotalLines, /*Total Lines*/
	crr.Value As RetentionCod,/*Retention Cod*/
	crr.Aliquot, /*Aliquot Retention*/
	cdti.C_BPartner_ID, /*Bussiness Partner ID*/
	cdti.Name, /*Bussiness Partner Name*/
	cdti.DateAcct,/*Date Acct Document Retained*/	
	o.value AS RifOrg, 
	ci.dateinvoiced, 
	ifac.totalex
From 
AD_OrgInfo oi 
Inner Join C_Invoice ci On oi.AD_Org_ID = ci.AD_Org_ID
Inner Join C_InvoiceLine cil On ci.C_Invoice_ID=cil.C_Invoice_ID
Inner Join CUST_RV_Retention crr On crr.C_Invoice_ID = cil.DocAffected_ID
Inner Join C_Invoice cir On cir.C_Invoice_ID=crr.C_Invoice_ID
Left Join (Select ci.C_Invoice_ID, 
		  cdt.C_DocType_ID,
		  cdt.DocTypeDeclare,
		  cbp.Value,
		  cbp.TaxID,
		  ci.DocumentNo,
		  ci.ControlNo,
		  ci.C_BPartner_ID,
		  cbp.Name,
		  ci.DateAcct
		From C_Invoice ci 
		Inner Join C_DocType cdt  On  ci.C_DocType_ID = cdt.C_DocType_ID
		Inner Join C_BPartner cbp On ci.C_BPartner_ID = cbp.C_BPartner_ID
	  ) cdti on cdti.C_Invoice_ID=crr.DocAffected_ID
JOIN AD_Org o ON o.AD_Org_ID = oi.AD_Org_ID
 JOIN ( SELECT li.c_invoice_id, 
    sum(
        CASE
            WHEN li.taxamt = 0 THEN li.taxbaseamt
            ELSE 0
        END) AS totalex, 
    sum(
        CASE
            WHEN li.taxamt <> 0 THEN li.taxbaseamt
            ELSE 0
        END) AS totalbi, 
    sum(
        CASE
            WHEN li.taxamt <> 0 THEN li.taxamt
            ELSE 0
        END) AS totalimpuesto, 
    max(im.rate) AS tasaimpuesto
   FROM c_invoicetax li
   JOIN c_tax im ON im.c_tax_id = li.c_tax_id
  GROUP BY li.c_invoice_id) ifac ON ifac.c_invoice_id = cdti.c_invoice_id;
