-- Aug 9, 2013 6:21:33 PM VET
-- LVE Withholding
UPDATE AD_Val_Rule SET Code='LVE_Withholding.LVE_WH_ConceptGroup_ID = @LVE_WH_ConceptGroup_ID@
',Updated=TO_TIMESTAMP('2013-08-09 18:21:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52178
;

-- Aug 9, 2013 6:27:03 PM VET
-- LVE Withholding
UPDATE AD_Process_Para SET AD_Val_Rule_ID=NULL,Updated=TO_TIMESTAMP('2013-08-09 18:27:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=53955
;

-- Aug 9, 2013 6:42:50 PM VET
-- LVE Withholding
UPDATE AD_Column SET ReadOnlyLogic='@LVE_WH_Concept_ID@ ! 0',Updated=TO_TIMESTAMP('2013-08-09 18:42:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66488
;

-- Aug 9, 2013 6:44:01 PM VET
-- LVE Withholding
UPDATE AD_Column SET ReadOnlyLogic='@LVE_WH_Concept_ID@ ! 0 & @DocAction@ IN (''CO'',''CL'')',Updated=TO_TIMESTAMP('2013-08-09 18:44:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66488
;

-- Aug 9, 2013 6:45:53 PM VET
-- LVE Withholding
UPDATE AD_Column SET ReadOnlyLogic='@LVE_WH_Concept_ID@ ! 0 & @DocAction@ = ''CO'' ¬''CL'')',Updated=TO_TIMESTAMP('2013-08-09 18:45:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66488
;

-- Aug 9, 2013 6:46:17 PM VET
-- LVE Withholding
UPDATE AD_Column SET ReadOnlyLogic='@LVE_WH_Concept_ID@ ! 0 & @DocAction@ = ''CO'' CL'')',Updated=TO_TIMESTAMP('2013-08-09 18:46:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66488
;

-- Aug 9, 2013 6:46:40 PM VET
-- LVE Withholding
UPDATE AD_Column SET ReadOnlyLogic='@LVE_WH_Concept_ID@ ! 0 & @DocAction@ = ''CO'' ¬ CL'')',Updated=TO_TIMESTAMP('2013-08-09 18:46:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66488
;

-- Aug 9, 2013 6:47:11 PM VET
-- LVE Withholding
UPDATE AD_Column SET ReadOnlyLogic='@LVE_WH_Concept_ID@ ! 0 & @DocAction@ = ''CO'' @DocAction@ =  ''CL'')',Updated=TO_TIMESTAMP('2013-08-09 18:47:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66488
;

-- Aug 9, 2013 6:47:56 PM VET
-- LVE Withholding
UPDATE AD_Column SET ReadOnlyLogic='@LVE_WH_Concept_ID@ ! 0 & (@DocAction@ = ''CO'' | @DocAction@ =  ''CL'')',Updated=TO_TIMESTAMP('2013-08-09 18:47:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66488
;

-- Aug 9, 2013 6:48:46 PM VET
-- LVE Withholding
UPDATE AD_Column SET ReadOnlyLogic='@LVE_WH_Concept_ID@ ! 0 | (@DocAction@ = ''CO'' | @DocAction@ =  ''CL'')',Updated=TO_TIMESTAMP('2013-08-09 18:48:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66488
;

-- Aug 9, 2013 6:49:18 PM VET
-- LVE Withholding
UPDATE AD_Column SET ReadOnlyLogic='@LVE_WH_Concept_ID@ ! 0 | (@DocAction@ = ''CO'' & @DocAction@ =  ''CL'')',Updated=TO_TIMESTAMP('2013-08-09 18:49:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66488
;

-- Aug 9, 2013 6:50:35 PM VET
-- LVE Withholding
UPDATE AD_Column SET ReadOnlyLogic='@LVE_WH_Concept_ID@ ! 0 & @DocAction@ = ''CO'' & @DocAction@ =  ''CL''',Updated=TO_TIMESTAMP('2013-08-09 18:50:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66488
;

-- Aug 9, 2013 6:51:05 PM VET
-- LVE Withholding
UPDATE AD_Column SET ReadOnlyLogic='@LVE_WH_Concept_ID@ ! 0 & @DocAction@ = ''CO'' | @DocAction@ =  ''CL''',Updated=TO_TIMESTAMP('2013-08-09 18:51:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66488
;

-- Aug 9, 2013 6:51:42 PM VET
-- LVE Withholding
UPDATE AD_Column SET ReadOnlyLogic='(@LVE_WH_Concept_ID@ ! 0 ) & (@DocAction@ = ''CO'' | @DocAction@ =  ''CL'')',Updated=TO_TIMESTAMP('2013-08-09 18:51:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66488
;

-- Aug 9, 2013 6:52:13 PM VET
-- LVE Withholding
UPDATE AD_Column SET ReadOnlyLogic='(@LVE_WH_Concept_ID@ ! 0 ) | (@DocAction@ = ''CO'' | @DocAction@ =  ''CL'')',Updated=TO_TIMESTAMP('2013-08-09 18:52:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66488
;

-- Aug 9, 2013 6:52:48 PM VET
-- LVE Withholding
UPDATE AD_Column SET DefaultValue=' | (@DocAction@ = ''CO'' | @DocAction@ =  ''CL'')', ReadOnlyLogic='(@LVE_WH_Concept_ID@ ! 0 )',Updated=TO_TIMESTAMP('2013-08-09 18:52:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66488
;

-- Aug 9, 2013 6:53:15 PM VET
-- LVE Withholding
UPDATE AD_Column SET IsAlwaysUpdateable='Y',Updated=TO_TIMESTAMP('2013-08-09 18:53:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66488
;

-- Aug 9, 2013 6:53:42 PM VET
-- LVE Withholding
UPDATE AD_Column SET IsAlwaysUpdateable='N',Updated=TO_TIMESTAMP('2013-08-09 18:53:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66488
;

-- Aug 9, 2013 6:54:04 PM VET
-- LVE Withholding
UPDATE AD_Column SET DefaultValue=NULL, ReadOnlyLogic=' (@DocAction@ = ''CO'' | @DocAction@ =  ''CL'')  | (@LVE_WH_Concept_ID@ ! 0 )',Updated=TO_TIMESTAMP('2013-08-09 18:54:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66488
;

-- Aug 9, 2013 6:55:32 PM VET
-- LVE Withholding
UPDATE AD_Column SET DefaultValue='  | (@LVE_WH_Concept_ID@ ! 0 )', ReadOnlyLogic=' (@DocAction@ = ''CO'' | @DocAction@ =  ''CL'')',Updated=TO_TIMESTAMP('2013-08-09 18:55:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66488
;

-- Aug 9, 2013 6:55:58 PM VET
-- LVE Withholding
UPDATE AD_Column SET ReadOnlyLogic=' (@DocAction@ = ''CO'' & @DocAction@ =  ''CL'')',Updated=TO_TIMESTAMP('2013-08-09 18:55:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66488
;

-- Aug 9, 2013 6:56:40 PM VET
-- LVE Withholding
UPDATE AD_Column SET DefaultValue=NULL, ReadOnlyLogic=' (@DocAction@ = ''CO'' & @DocAction@ =  ''CL'')   | (@LVE_WH_Concept_ID@ ! 0 )',Updated=TO_TIMESTAMP('2013-08-09 18:56:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66488
;

-- Aug 9, 2013 6:57:37 PM VET
-- LVE Withholding
UPDATE AD_Column SET DefaultValue='|', ReadOnlyLogic=' (@DocAction@ = ''CO'' & @DocAction@ =  ''CL'')   & (@LVE_WH_Concept_ID@ ! 0 )',Updated=TO_TIMESTAMP('2013-08-09 18:57:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66488
;

-- Aug 9, 2013 6:58:02 PM VET
-- LVE Withholding
UPDATE AD_Column SET ReadOnlyLogic=' (@DocAction@ = ''CO'' | @DocAction@ =  ''CL'')   & (@LVE_WH_Concept_ID@ ! 0 )',Updated=TO_TIMESTAMP('2013-08-09 18:58:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66488
;

