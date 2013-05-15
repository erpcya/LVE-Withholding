-- 15-may-2013 10:08:39 VET
-- RETENTION LVE
DROP VIEW cust_rv_declaration;

-- 15-may-2013 10:08:39 VET
-- RETENTION LVE
DROP VIEW cust_rv_retention;


-- 15-may-2013 10:08:39 VET
-- RETENTION LVE
UPDATE AD_Column SET AD_Reference_ID=12,Updated=TO_TIMESTAMP('2013-05-15 10:08:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=3000022
;

-- 15-may-2013 10:08:55 VET
-- RETENTION LVE
UPDATE AD_Column SET AD_Reference_ID=12,Updated=TO_TIMESTAMP('2013-05-15 10:08:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=3000023
;

-- 15-may-2013 10:10:06 VET
-- RETENTION LVE
INSERT INTO t_alter_column values('cust_retentionconfig','Subtrahend','NUMERIC',null,'NULL')
;

-- 15-may-2013 10:10:06 VET
-- RETENTION LVE
Alter Table CUST_RetentionConfig Alter Column Subtrahend Type NUMERIC
;

-- 15-may-2013 10:13:36 VET
-- RETENTION LVE
INSERT INTO t_alter_column values('cust_retentionconfig','MinimalAmt','NUMERIC',null,'NULL')
;

-- 15-may-2013 10:10:06 VET
-- RETENTION LVE
Alter Table CUST_RetentionConfig Alter Column MinimalAmt Type NUMERIC
;

-- 15-may-2013 10:15:22 VET
-- RETENTION LVE
UPDATE AD_Column SET AD_Reference_ID=12, SeqNo=3,Updated=TO_TIMESTAMP('2013-05-15 10:15:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=3000021
;

-- 15-may-2013 10:15:28 VET
-- RETENTION LVE
INSERT INTO t_alter_column values('cust_retentionconfig','Aliquot','NUMERIC',null,'NULL')
;

-- 15-may-2013 10:10:06 VET
-- RETENTION LVE
Alter Table CUST_RetentionConfig Alter Column Aliquot Type NUMERIC
;

-- 15-may-2013 10:16:36 VET
-- RETENTION LVE
UPDATE AD_Column SET AD_Reference_ID=12,Updated=TO_TIMESTAMP('2013-05-15 10:16:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=3000309
;

-- 15-may-2013 10:17:28 VET
-- RETENTION LVE
UPDATE AD_Column SET AD_Reference_ID=12,Updated=TO_TIMESTAMP('2013-05-15 10:17:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=3000310
;

-- 15-may-2013 10:18:51 VET
-- RETENTION LVE
UPDATE AD_Column SET AD_Reference_ID=12,Updated=TO_TIMESTAMP('2013-05-15 10:18:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=3000403
;

-- 15-may-2013 10:18:51 VET
-- RETENTION LVE
Create Or Replace View CUST_RV_Retention As
Select  Distinct
	ci.AD_Client_ID,/*Company ID*/
	ci.AD_Org_ID,/*Org ID*/
	cil.C_Invoice_ID ,/*Root Document(Document Retention ID)*/ 
	ci.C_Invoice_ID As DocAffected_ID , /*Document Retain*/
	ci.DateInvoiced ,/*Date Documentno*/
	ci.ControlNo, /*Control No*/
	cdt.Name, /*Document Type Name*/
	ctax.Rate,/*Aliquot Invoice*/
	ctax.TaxAmt,/*Tax Amt*/
	ctax.TaxBaseAmt, /*Base Amt*/
	ci.TotalLines,/*Total Lines exclude tax*/
	ci.GrandTotal,/*Total Document*/
	cil.LineNetAmt, /*Line Net (Retention Amt)*/
	ciaffected.DocumentNo, /* DocumentNo Affeected*/
	ciaffected.Amount, /*Amount Affected*/
	crc.Aliquot,/*Aliquot Retention*/
	crc.Subtrahend, /*Subtrahend*/
	/*crt.Name As Name_RetentionType,Name Retention Type*/
	crg.Value As Value_RetentionGroup,/*Value Retention Group*/
	crg.Name As Name_RetentionGroup, /*Name Retention Group*/
	(cil.Line/10) AS Line,
	ccpc.value
From 
C_DocType cdt
Inner Join C_Invoice ci On ci.C_DocType_ID=cdt.C_DocType_ID
Inner Join C_InvoiceLine cil On ci.C_Invoice_ID = cil.DocAffected_ID
inner Join CUST_CR_PT_Combination ccpc On ccpc.CUST_CR_PT_Combination_ID=cil.CUST_CR_PT_Combination_ID
Inner Join CUST_RetentionConfig crc On ccpc.CUST_RetentionConfig_ID=crc.CUST_RetentionConfig_ID
Inner Join C_Invoice cir On cir.C_Invoice_ID = cil.C_Invoice_ID
Inner Join CUST_RetentionType crt On cir.C_DocType_ID = crt .C_DocType_ID
Inner Join CUST_RetentionGroup crg On crt.CUST_RetentionGroup_ID=crg.CUST_RetentionGroup_ID 
Inner Join 
	(Select citax.C_Invoice_ID,
		Max(ctax.Rate) Rate,
		Sum(TaxAmt) As TaxAmt,
		Sum(Case ctax.Rate When 0 Then 0 Else TaxBaseAmt End) As TaxBaseAmt 
	From 
		C_InvoiceTax citax 
		Inner Join C_Tax ctax On citax.C_Tax_ID=ctax.C_Tax_ID
		Group By citax.C_Invoice_ID) ctax On ctax.C_Invoice_ID = ci.C_Invoice_ID
Left Join 
	(Select cal.C_Invoice_ID As Retention_ID,
		calrel.C_Invoice_ID,
		ci.DocumentNo,
		calrel.Amount 
	From C_AllocationHdr cah 
	Inner Join C_AllocationLine cal on cah.C_AllocationHdr_ID= cal.C_AllocationHdr_ID
	Inner Join C_AllocationLine calrel on cah.C_AllocationHdr_ID= calrel.C_AllocationHdr_ID
	Inner Join C_Invoice ci On ci.C_Invoice_ID = calrel.C_Invoice_ID
	Where Not Exists (Select 1 From CUST_RetentionType Where C_DocType_ID = ci.C_DocType_ID )) ciaffected On ciaffected.Retention_ID = ci.C_Invoice_ID And ciaffected.C_Invoice_ID <>ci.C_Invoice_ID; 

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
    max(im.rate) AS tasaimpuesto
   FROM c_invoicetax li
   JOIN c_tax im ON im.c_tax_id = li.c_tax_id
  GROUP BY li.c_invoice_id) ifac ON ifac.c_invoice_id = cdti.c_invoice_id;
