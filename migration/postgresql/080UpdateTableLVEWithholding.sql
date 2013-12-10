-- Aug 13, 2013 11:05:21 AM VET
-- LVE Withholding
UPDATE AD_Column SET DefaultValue='MAS(SeqNo) + 10',Updated=TO_TIMESTAMP('2013-08-13 11:05:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66655
;

-- Aug 13, 2013 11:06:09 AM VET
-- LVE Withholding
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2013-08-13 11:06:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66655
;

-- Aug 13, 2013 11:06:13 AM VET
-- LVE Withholding
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2013-08-13 11:06:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66405
;

-- Aug 13, 2013 11:06:42 AM VET
-- LVE Withholding
UPDATE AD_Column SET DefaultValue='MAX(SeqNo) + 10',Updated=TO_TIMESTAMP('2013-08-13 11:06:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66655
;

-- Aug 13, 2013 11:07:14 AM VET
-- LVE Withholding
UPDATE AD_Column SET ColumnSQL='(MAX(SeqNo) + 10)', DefaultValue=NULL, IsMandatory='N', IsUpdateable='N',Updated=TO_TIMESTAMP('2013-08-13 11:07:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66655
;

-- Aug 13, 2013 11:10:29 AM VET
-- LVE Withholding
UPDATE AD_Column SET ColumnSQL=NULL, DefaultValue='@SQL=SELECT NVL(MAX(SeqNo),0)+10 AS DefaultValue FROM LVE_Withholding WHERE LVE_Withholding_ID=@LVE_Withholding_ID@',Updated=TO_TIMESTAMP('2013-08-13 11:10:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66655
;

-- Aug 13, 2013 11:10:51 AM VET
-- LVE Withholding
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2013-08-13 11:10:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66655
;

-- Aug 13, 2013 11:11:40 AM VET
-- LVE Withholding
UPDATE AD_Column SET DefaultValue='@SQL=SELECT NVL(MAX(SeqNo),0)+10 AS DefaultValue FROM LVE_Withholding',Updated=TO_TIMESTAMP('2013-08-13 11:11:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66655
;

