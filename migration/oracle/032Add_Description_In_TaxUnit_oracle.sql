-- 31/07/2013 12:26:54 AM VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66491,67955,0,53698,TO_DATE('2013-07-31 00:26:53','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record',255,'ECA02','A description is limited to 255 characters.','Y','Y','Y','N','N','N','N','N','Description',TO_DATE('2013-07-31 00:26:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 31/07/2013 12:26:55 AM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67955 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 31/07/2013 12:27:04 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=67955
;

-- 31/07/2013 12:27:04 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=67830
;

-- 31/07/2013 12:27:04 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=67828
;

-- 31/07/2013 12:27:04 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=67823
;

-- 31/07/2013 12:27:04 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=67827
;

