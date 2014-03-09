-- Nov 25, 2013 9:25:48 AM VET
-- LVE Withholding
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,Description,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52260,'EXISTS(
SELECT 1 
FROM LVE_Withholding w
WHERE C_Invoice.C_DocType_ID = w.DeclarationDocType_ID 
AND C_Invoice.DocStatus IN (''CO'', ''CL'')
)


',TO_TIMESTAMP('2013-11-25 09:25:47','YYYY-MM-DD HH24:MI:SS'),100,'Declared and Completed or Closed Invoices','ECA02','Y','C_Invoice Declared In Completed or Closed Invoices','S',TO_TIMESTAMP('2013-11-25 09:25:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 25, 2013 9:26:03 AM VET
-- LVE Withholding
UPDATE AD_Val_Rule SET Code='EXISTS(
SELECT 1 
FROM LVE_Withholding w
WHERE C_Invoice.C_DocType_ID = w.DeclarationDocType_ID 
AND C_Invoice.DocStatus IN (''CO'', ''CL'')
)',Updated=TO_TIMESTAMP('2013-11-25 09:26:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52260
;

-- Nov 25, 2013 9:26:12 AM VET
-- LVE Withholding
UPDATE AD_Process_Para SET AD_Val_Rule_ID=52260,Updated=TO_TIMESTAMP('2013-11-25 09:26:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=53947
;

