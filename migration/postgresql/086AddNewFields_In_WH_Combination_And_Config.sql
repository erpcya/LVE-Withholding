-- Aug 15, 2013 9:32:25 PM VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66767,68239,0,53708,TO_TIMESTAMP('2013-08-15 21:32:24','YYYY-MM-DD HH24:MI:SS'),100,'This is a manual process',1,'ECA02','The Manual check box indicates if the process will done manually.','Y','Y','Y','N','N','N','N','N','Manual',TO_TIMESTAMP('2013-08-15 21:32:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 15, 2013 9:32:25 PM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68239 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 15, 2013 9:33:47 PM VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66768,68240,0,53709,TO_TIMESTAMP('2013-08-15 21:33:46','YYYY-MM-DD HH24:MI:SS'),100,14,'ECA02','Y','Y','Y','N','N','N','N','N','Max Value',TO_TIMESTAMP('2013-08-15 21:33:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 15, 2013 9:33:47 PM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68240 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 15, 2013 9:33:56 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=68240
;

-- Aug 15, 2013 9:33:57 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=67931
;

-- Aug 15, 2013 9:33:57 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=67932
;

-- Aug 15, 2013 9:34:02 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2013-08-15 21:34:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67930
;

-- Aug 15, 2013 9:34:09 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-08-15 21:34:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68240
;

-- Aug 15, 2013 9:34:45 PM VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66768,68241,0,53716,TO_TIMESTAMP('2013-08-15 21:34:44','YYYY-MM-DD HH24:MI:SS'),100,14,'ECA02','Y','Y','Y','N','N','N','N','N','Max Value',TO_TIMESTAMP('2013-08-15 21:34:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 15, 2013 9:34:45 PM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68241 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 15, 2013 9:34:52 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=68241
;

-- Aug 15, 2013 9:34:52 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=68069
;

-- Aug 15, 2013 9:34:52 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=68070
;

-- Aug 15, 2013 9:35:17 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2013-08-15 21:35:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68068
;

-- Aug 15, 2013 9:35:20 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-08-15 21:35:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68241
;

-- Aug 15, 2013 9:37:38 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=68239
;

-- Aug 15, 2013 9:37:38 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=67921
;

-- Aug 15, 2013 9:37:38 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=67922
;

-- Aug 15, 2013 9:37:38 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=67924
;

-- Aug 15, 2013 9:37:38 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=67923
;

