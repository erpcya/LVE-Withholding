-- 24-oct-2013 11:44:18 VET
-- CGI Anca
UPDATE AD_Val_Rule SET Code='NOT EXISTS(
SELECT 1 FROM LVE_Withholding wh
INNER JOIN C_DocType dt ON(dt.C_DocType_ID = wh.WithholdingDocType_ID)
INNER JOIN C_Invoice whr ON(whr.C_DocType_ID = dt.C_DocType_ID)
INNER JOIN C_InvoiceLine whrl ON(whrl.C_Invoice_ID = whr.C_Invoice_ID)
WHERE whr.DocStatus IN(''CO'', ''CL'')
AND whrl.DocAffected_ID = C_Invoice.C_Invoice_ID
AND whr.C_BPartner_ID = @C_BPartner_ID@)  
AND IsSOTrx = ''N''
AND DocStatus = ''CO''
AND C_BPartner_ID =@C_BPartner_ID@
AND NOT EXISTS(SELECT 1 FROM LVE_Withholding wh WHERE wh.WithholdingDocType_ID = C_Invoice.C_DocType_ID)',Updated=TO_TIMESTAMP('2013-10-24 11:44:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52208
;

