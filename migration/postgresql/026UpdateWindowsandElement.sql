-- 30/07/2013 04:32:09 PM VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66490,67934,0,291,TO_TIMESTAMP('2013-07-30 16:32:08','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Doc Affected',TO_TIMESTAMP('2013-07-30 16:32:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/07/2013 04:32:09 PM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67934 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 30/07/2013 04:32:09 PM VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,56073,67935,0,291,TO_TIMESTAMP('2013-07-30 16:32:09','YYYY-MM-DD HH24:MI:SS'),100,1,'D','Y','Y','Y','N','N','N','N','N','Processed',TO_TIMESTAMP('2013-07-30 16:32:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/07/2013 04:32:09 PM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67935 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 30/07/2013 04:32:10 PM VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,52008,67936,0,291,TO_TIMESTAMP('2013-07-30 16:32:09','YYYY-MM-DD HH24:MI:SS'),100,'Return Material Authorization Line',22,'D','Detail information about the returned goods','Y','Y','Y','N','N','N','N','N','RMA Line',TO_TIMESTAMP('2013-07-30 16:32:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/07/2013 04:32:10 PM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67936 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 30/07/2013 04:32:10 PM VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66489,67937,0,291,TO_TIMESTAMP('2013-07-30 16:32:10','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Withholding Config',TO_TIMESTAMP('2013-07-30 16:32:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/07/2013 04:32:10 PM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67937 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 30/07/2013 04:32:28 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=67935
;

-- 30/07/2013 04:32:28 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=67936
;

-- 30/07/2013 04:32:28 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=56252
;

-- 30/07/2013 04:32:28 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=56253
;

-- 30/07/2013 04:32:28 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=5825
;

-- 30/07/2013 04:32:28 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=56254
;

-- 30/07/2013 04:32:28 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=10823
;

-- 30/07/2013 04:32:28 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=3365
;

-- 30/07/2013 04:32:28 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=3374
;

-- 30/07/2013 04:32:28 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=10824
;

-- 30/07/2013 04:32:28 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=3372
;

-- 30/07/2013 04:32:28 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=3373
;

-- 30/07/2013 04:32:28 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=3364
;

-- 30/07/2013 04:32:28 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=6430
;

-- 30/07/2013 04:32:28 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=12747
;

-- 30/07/2013 04:32:28 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=13668
;

-- 30/07/2013 04:32:28 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=13669
;

-- 30/07/2013 04:32:28 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=13693
;

-- 30/07/2013 04:32:28 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=13674
;

-- 30/07/2013 04:32:28 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=13675
;

-- 30/07/2013 04:32:28 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=3370
;

-- 30/07/2013 04:32:28 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=8266
;

-- 30/07/2013 04:32:28 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=8244
;

-- 30/07/2013 04:32:28 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=8267
;

-- 30/07/2013 04:32:28 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=67934
;

-- 30/07/2013 04:32:28 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=67937
;

-- 30/07/2013 04:34:04 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=67934
;

-- 30/07/2013 04:34:04 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=3363
;

-- 30/07/2013 04:34:04 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=67937
;

-- 30/07/2013 04:34:04 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=3369
;

-- 30/07/2013 04:34:04 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=3357
;

-- 30/07/2013 04:34:04 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=3371
;

-- 30/07/2013 04:34:04 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=3360
;

-- 30/07/2013 04:34:04 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=3366
;

-- 30/07/2013 04:34:04 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=56252
;

-- 30/07/2013 04:34:04 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=56253
;

-- 30/07/2013 04:34:04 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=5825
;

-- 30/07/2013 04:34:04 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=56254
;

-- 30/07/2013 04:34:04 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=10823
;

-- 30/07/2013 04:34:04 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=3365
;

-- 30/07/2013 04:34:04 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=3374
;

-- 30/07/2013 04:34:04 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=10824
;

-- 30/07/2013 04:34:04 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=3372
;

-- 30/07/2013 04:34:04 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=3373
;

-- 30/07/2013 04:34:04 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=3364
;

-- 30/07/2013 04:34:04 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=6430
;

-- 30/07/2013 04:34:04 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=12747
;

-- 30/07/2013 04:34:04 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=13668
;

-- 30/07/2013 04:34:04 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=13669
;

-- 30/07/2013 04:34:04 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=13693
;

-- 30/07/2013 04:34:04 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=13674
;

-- 30/07/2013 04:34:04 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=13675
;

-- 30/07/2013 04:34:04 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=3370
;

-- 30/07/2013 04:34:04 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=8266
;

-- 30/07/2013 04:34:04 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=8244
;

-- 30/07/2013 04:34:04 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=8267
;

-- 30/07/2013 04:34:15 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-07-30 16:34:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67934
;

-- 30/07/2013 04:34:18 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-07-30 16:34:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67937
;

-- 30/07/2013 04:35:27 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=67902
;

-- 30/07/2013 04:35:27 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=3348
;

-- 30/07/2013 04:35:27 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=3333
;

-- 30/07/2013 04:35:27 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=3325
;

-- 30/07/2013 04:35:27 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=3326
;

-- 30/07/2013 04:35:27 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=3324
;

-- 30/07/2013 04:35:27 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=3350
;

-- 30/07/2013 04:35:27 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=3328
;

-- 30/07/2013 04:35:27 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=8649
;

-- 30/07/2013 04:35:27 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=3322
;

-- 30/07/2013 04:35:27 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=3355
;

-- 30/07/2013 04:35:27 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=3354
;

-- 30/07/2013 04:35:27 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=3346
;

-- 30/07/2013 04:35:27 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=3353
;

-- 30/07/2013 04:35:27 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=3331
;

-- 30/07/2013 04:35:27 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=4246
;

-- 30/07/2013 04:35:27 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=4247
;

-- 30/07/2013 04:35:27 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=3332
;

-- 30/07/2013 04:35:27 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=3323
;

-- 30/07/2013 04:35:27 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=3327
;

-- 30/07/2013 04:35:27 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=6936
;

-- 30/07/2013 04:35:27 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=7796
;

-- 30/07/2013 04:35:27 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=7797
;

-- 30/07/2013 04:35:27 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=3343
;

-- 30/07/2013 04:35:27 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=3337
;

-- 30/07/2013 04:35:27 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=3335
;

-- 30/07/2013 04:35:27 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=3329
;

-- 30/07/2013 04:35:27 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=10486
;

-- 30/07/2013 04:35:27 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=6532
;

-- 30/07/2013 04:35:27 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=3334
;

-- 30/07/2013 04:35:27 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=3670
;

-- 30/07/2013 04:35:27 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=3900
;

-- 30/07/2013 04:35:37 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-07-30 16:35:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67902
;

-- 30/07/2013 04:36:55 PM VET
-- LVE Withholding
UPDATE AD_Element SET ColumnName='DocAffected_ID',Updated=TO_TIMESTAMP('2013-07-30 16:36:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56067
;

-- 30/07/2013 04:36:55 PM VET
-- LVE Withholding
UPDATE AD_Column SET ColumnName='DocAffected_ID', Name='Doc Affected', Description=NULL, Help=NULL WHERE AD_Element_ID=56067
;

-- 30/07/2013 04:36:55 PM VET
-- LVE Withholding
UPDATE AD_Process_Para SET ColumnName='DocAffected_ID', Name='Doc Affected', Description=NULL, Help=NULL, AD_Element_ID=56067 WHERE UPPER(ColumnName)='DOCAFFECTED_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 30/07/2013 04:36:55 PM VET
-- LVE Withholding
UPDATE AD_Process_Para SET ColumnName='DocAffected_ID', Name='Doc Affected', Description=NULL, Help=NULL WHERE AD_Element_ID=56067 AND IsCentrallyMaintained='Y'
;

