-- 31/07/2013 08:24:06 AM VET
-- LVE Withholding
UPDATE AD_Window SET Name='LVE Withholding',Updated=TO_DATE('2013-07-31 08:24:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=53254
;

-- 31/07/2013 08:24:06 AM VET
-- LVE Withholding
UPDATE AD_Window_Trl SET IsTranslated='N' WHERE AD_Window_ID=53254
;

-- 31/07/2013 08:24:06 AM VET
-- LVE Withholding
UPDATE AD_Menu SET Description=NULL, IsActive='Y', Name='LVE Withholding',Updated=TO_DATE('2013-07-31 08:24:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53573
;

-- 31/07/2013 08:24:06 AM VET
-- LVE Withholding
UPDATE AD_Menu_Trl SET IsTranslated='N' WHERE AD_Menu_ID=53573
;

-- 31/07/2013 08:24:50 AM VET
-- LVE Withholding
UPDATE AD_Menu_Trl SET Name='Retención',Updated=TO_DATE('2013-07-31 08:24:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53573 AND AD_Language='es_MX'
;

-- 31/07/2013 08:28:07 AM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66493,56059,0,19,291,'LVE_PersonType_ID',TO_DATE('2013-07-31 08:28:05','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Person Type',0,TO_DATE('2013-07-31 08:28:05','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 31/07/2013 08:28:07 AM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66493 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 31/07/2013 08:28:16 AM VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,66493,67956,0,224,TO_DATE('2013-07-31 08:28:16','YYYY-MM-DD HH24:MI:SS'),100,0,'U','Y','Y','Y','N','N','N','N','N','Person Type',130,0,TO_DATE('2013-07-31 08:28:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 31/07/2013 08:28:16 AM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67956 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 31/07/2013 08:28:21 AM VET
-- LVE Withholding
UPDATE AD_Field SET EntityType='ECA02',Updated=TO_DATE('2013-07-31 08:28:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67956
;

-- 31/07/2013 08:31:58 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-07-31 08:31:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67956
;

-- 31/07/2013 08:33:10 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2013-07-31 08:33:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67864
;

-- 31/07/2013 08:34:46 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=67861
;

-- 31/07/2013 08:34:46 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=67864
;

-- 31/07/2013 08:34:46 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=12746
;

-- 31/07/2013 08:34:46 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=13660
;

-- 31/07/2013 08:34:46 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=13661
;

-- 31/07/2013 08:34:46 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=13692
;

-- 31/07/2013 08:34:46 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=13666
;

-- 31/07/2013 08:34:46 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=13667
;

-- 31/07/2013 08:34:46 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=2995
;

-- 31/07/2013 08:34:46 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=8243
;

-- 31/07/2013 08:34:46 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=8265
;

-- 31/07/2013 08:35:46 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=3363
;

-- 31/07/2013 08:35:46 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=3369
;

-- 31/07/2013 08:35:47 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=3357
;

-- 31/07/2013 08:35:47 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=3371
;

-- 31/07/2013 08:35:47 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=3360
;

-- 31/07/2013 08:35:47 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=3366
;

-- 31/07/2013 08:35:47 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=56252
;

-- 31/07/2013 08:35:47 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=56253
;

-- 31/07/2013 08:35:47 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=5825
;

-- 31/07/2013 08:35:47 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=56254
;

-- 31/07/2013 08:35:47 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=10823
;

-- 31/07/2013 08:35:47 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=3365
;

-- 31/07/2013 08:35:47 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=3374
;

-- 31/07/2013 08:35:47 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=10824
;

-- 31/07/2013 08:35:47 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=3372
;

-- 31/07/2013 08:35:47 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=3373
;

-- 31/07/2013 08:35:47 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=3364
;

-- 31/07/2013 08:35:47 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=6430
;

-- 31/07/2013 08:35:47 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=67934
;

-- 31/07/2013 08:35:47 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=67937
;

-- 31/07/2013 08:35:59 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsSameLine='N',Updated=TO_DATE('2013-07-31 08:35:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67934
;

-- 31/07/2013 08:36:23 AM VET
-- LVE Withholding
UPDATE AD_Field SET DisplayLogic='@LVE_WithholdingConfig_ID@!0',Updated=TO_DATE('2013-07-31 08:36:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67937
;

-- 31/07/2013 08:37:57 AM VET
-- LVE Withholding
UPDATE AD_Field SET DisplayLogic='@DocAffected@!0',Updated=TO_DATE('2013-07-31 08:37:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67934
;

-- 31/07/2013 08:38:11 AM VET
-- LVE Withholding
UPDATE AD_Column SET ColumnName='DocAffected',Updated=TO_DATE('2013-07-31 08:38:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66490
;

-- 31/07/2013 08:38:17 AM VET
-- LVE Withholding
UPDATE AD_Element SET ColumnName='DocAffected',Updated=TO_DATE('2013-07-31 08:38:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56067
;

-- 31/07/2013 08:38:17 AM VET
-- LVE Withholding
UPDATE AD_Column SET ColumnName='DocAffected', Name='Doc Affected', Description=NULL, Help=NULL WHERE AD_Element_ID=56067
;

-- 31/07/2013 08:38:17 AM VET
-- LVE Withholding
UPDATE AD_Process_Para SET ColumnName='DocAffected', Name='Doc Affected', Description=NULL, Help=NULL, AD_Element_ID=56067 WHERE UPPER(ColumnName)='DOCAFFECTED' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 31/07/2013 08:38:17 AM VET
-- LVE Withholding
UPDATE AD_Process_Para SET ColumnName='DocAffected', Name='Doc Affected', Description=NULL, Help=NULL WHERE AD_Element_ID=56067 AND IsCentrallyMaintained='Y'
;

-- 31/07/2013 08:39:29 AM VET
-- LVE Withholding
UPDATE AD_Field SET AD_FieldGroup_ID=104,Updated=TO_DATE('2013-07-31 08:39:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67934
;

-- 31/07/2013 08:39:46 AM VET
-- LVE Withholding
UPDATE AD_Field SET AD_FieldGroup_ID=104,Updated=TO_DATE('2013-07-31 08:39:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67861
;

-- 31/07/2013 08:41:02 AM VET
-- LVE Withholding
UPDATE AD_Column SET AD_Reference_Value_ID=336,Updated=TO_DATE('2013-07-31 08:41:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66490
;

