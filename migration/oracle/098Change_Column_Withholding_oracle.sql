-- Aug 21, 2013 8:52:21 AM VET
-- LVE Withholding
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_DATE('2013-08-21 08:52:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66778
;

-- Aug 21, 2013 8:54:17 AM VET
-- LVE Withholding
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=67924
;

-- Aug 21, 2013 8:54:17 AM VET
-- LVE Withholding
DELETE FROM AD_Field WHERE AD_Field_ID=67924
;

-- Aug 21, 2013 8:55:10 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsSameLine='N',Updated=TO_DATE('2013-08-21 08:55:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67923
;

-- Aug 21, 2013 8:58:38 AM VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66442,68256,0,53708,TO_DATE('2013-08-21 08:58:33','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Process Now',TO_DATE('2013-08-21 08:58:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 21, 2013 8:58:38 AM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68256 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 21, 2013 8:59:04 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-08-21 08:59:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68256
;

-- Aug 21, 2013 9:01:51 AM VET
-- LVE Withholding
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_DATE('2013-08-21 09:01:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66405
;

