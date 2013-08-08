-- Aug 8, 2013 4:56:52 PM VET
-- LVE Withholding
UPDATE AD_ReportView SET EntityType='ECA02',Updated=TO_TIMESTAMP('2013-08-08 16:56:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ReportView_ID=53052
;

-- Aug 8, 2013 5:00:01 PM VET
-- LVE Withholding
UPDATE AD_Process SET Name='Withholding List', Value='LVE_WithholdingList',Updated=TO_TIMESTAMP('2013-08-08 17:00:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53432
;

-- Aug 8, 2013 5:00:01 PM VET
-- LVE Withholding
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=53432
;

-- Aug 8, 2013 5:00:01 PM VET
-- LVE Withholding
UPDATE AD_Menu SET Description=NULL, IsActive='Y', Name='Withholding List',Updated=TO_TIMESTAMP('2013-08-08 17:00:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53584
;

-- Aug 8, 2013 5:00:01 PM VET
-- LVE Withholding
UPDATE AD_Menu_Trl SET IsTranslated='N' WHERE AD_Menu_ID=53584
;

-- Aug 8, 2013 5:00:16 PM VET
-- LVE Withholding
UPDATE AD_Process SET Value='LVE_RV_Declare DeclareWithholding',Updated=TO_TIMESTAMP('2013-08-08 17:00:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53430
;

