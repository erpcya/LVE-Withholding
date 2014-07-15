-- May 29, 2014 5:31:57 PM VET
-- LVE Withholding
UPDATE AD_Tab SET DisplayLogic='@IsSOTrx@ = ''Y'' & @DocBaseType@ IN (''ARI'')',Updated=TO_DATE('2014-05-29 17:31:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53893
;

-- May 29, 2014 5:32:35 PM VET
-- LVE Withholding
UPDATE AD_Field SET DisplayLogic='@IsSOTrx@ = ''Y'' & @DocBaseType@ IN (''ARI'')',Updated=TO_DATE('2014-05-29 17:32:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73267
;

-- May 29, 2014 5:32:56 PM VET
-- LVE Withholding
UPDATE AD_Field SET DisplayLogic='@DocBaseType@ =''API'' |@DocBaseType@ =''ARI''  |@DocBaseType@ = ''APC'' |@DocBaseType@ =''ARC''',Updated=TO_DATE('2014-05-29 17:32:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71945
;

-- May 29, 2014 5:38:26 PM VET
-- LVE Withholding
UPDATE AD_Tab SET DisplayLogic='@IsSOTrx@ = ''Y'' & @DocBaseType@ =''ARI''',Updated=TO_DATE('2014-05-29 17:38:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53893
;

-- May 29, 2014 5:41:49 PM VET
-- LVE Withholding
UPDATE AD_Field SET DisplayLogic='@IsSOTrx@ = ''Y'' & @DocBaseType@ =''ARI''',Updated=TO_DATE('2014-05-29 17:41:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=73267
;

