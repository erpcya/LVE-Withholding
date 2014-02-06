-- Sep 16, 2013 11:42:01 AM VET
-- LVE Withholding
UPDATE AD_Column SET IsAlwaysUpdateable='Y', IsUpdateable='Y',Updated=TO_TIMESTAMP('2013-09-16 11:42:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66406
;

-- Sep 16, 2013 11:55:58 AM VET
-- LVE Withholding
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52208,'NOT EXISTS(
SELECT 1 FROM LVE_Withholding wh
INNER JOIN C_DocType dt ON(dt.C_DocType_ID = wh.WithholdingDocType_ID)
INNER JOIN C_Invoice whr ON(whr.C_DocType_ID = dt.C_DocType_ID)
INNER JOIN C_InvoiceLine whrl ON(whrl.C_Invoice_ID = whr.C_Invoice_ID)
WHERE whr.DocStatus IN(''CO'', ''CL'')
AND whrl.DocAffected_ID = C_Invoice.C_Invoice_ID
AND (wh.LVE_Withholding_ID = @LVE_Withholding_ID@  OR @LVE_Withholding_ID@  IS NULL)
AND whr.C_BPartner_ID = @C_BPartner_ID@)  
AND IsSOTrx = ''N''
AND DocStatus = ''CO''
AND C_BPartner_ID =@C_BPartner_ID@
AND NOT EXISTS(SELECT 1 FROM LVE_Withholding wh WHERE wh.WithholdingDocType_ID = C_Invoice.C_DocType_ID)',TO_TIMESTAMP('2013-09-16 11:55:55','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','C_Invoice of C_BPartner And Not Withholding Applied','S',TO_TIMESTAMP('2013-09-16 11:55:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Sep 16, 2013 11:56:58 AM VET
-- LVE Withholding
UPDATE AD_Process_Para SET AD_Val_Rule_ID=52208,Updated=TO_TIMESTAMP('2013-09-16 11:56:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=53935
;

