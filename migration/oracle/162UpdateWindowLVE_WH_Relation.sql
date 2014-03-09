-- Mar 6, 2014 8:49:03 AM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,72184,617,0,15,53535,'ValidFrom',TO_DATE('2014-03-06 08:48:56','YYYY-MM-DD HH24:MI:SS'),100,'Valid from including this date (first day)','ECA02',7,'The Valid From date indicates the first day of a date range','Y','Y','N','N','N','N','N','N','N','N','N','N','N','Valid from',0,TO_DATE('2014-03-06 08:48:56','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Mar 6, 2014 8:49:03 AM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=72184 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Mar 6, 2014 8:50:04 AM VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66417,72743,0,53710,TO_DATE('2014-03-06 08:49:30','YYYY-MM-DD HH24:MI:SS'),100,'Business Partner Group',10,'ECA02','The Business Partner Group provides a method of defining defaults to be used for individual Business Partners.','Y','Y','Y','N','N','N','N','N','Business Partner Group',TO_DATE('2014-03-06 08:49:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 6, 2014 8:50:04 AM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72743 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Mar 6, 2014 8:50:07 AM VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66416,72744,0,53710,TO_DATE('2014-03-06 08:50:05','YYYY-MM-DD HH24:MI:SS'),100,'Document type or rules',10,'ECA02','The Document Type determines document sequence and processing rules','Y','Y','Y','N','N','N','N','N','Document Type',TO_DATE('2014-03-06 08:50:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 6, 2014 8:50:08 AM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72744 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Mar 6, 2014 8:50:11 AM VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,72184,72745,0,53710,TO_DATE('2014-03-06 08:50:08','YYYY-MM-DD HH24:MI:SS'),100,'Valid from including this date (first day)',7,'ECA02','The Valid From date indicates the first day of a date range','Y','Y','Y','N','N','N','N','N','Valid from',TO_DATE('2014-03-06 08:50:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 6, 2014 8:50:11 AM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72745 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Mar 6, 2014 8:50:39 AM VET
-- LVE Withholding
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=72744
;

-- Mar 6, 2014 8:50:41 AM VET
-- LVE Withholding
DELETE FROM AD_Field WHERE AD_Field_ID=72744
;

-- Mar 6, 2014 8:50:47 AM VET
-- LVE Withholding
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=72743
;

-- Mar 6, 2014 8:50:47 AM VET
-- LVE Withholding
DELETE FROM AD_Field WHERE AD_Field_ID=72743
;

-- Mar 6, 2014 8:54:19 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsMandatory='Y',Updated=TO_DATE('2014-03-06 08:54:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72745
;

-- Mar 6, 2014 9:15:58 AM VET
-- LVE Withholding
UPDATE AD_Table SET IsDeleteable='N',Updated=TO_DATE('2014-03-06 09:15:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53535
;

-- Mar 6, 2014 9:21:50 AM VET
-- LVE Withholding
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_DATE('2014-03-06 09:21:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72184
;

-- Mar 6, 2014 9:22:17 AM VET
-- LVE Withholding
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_DATE('2014-03-06 09:22:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=72184
;

-- Mar 6, 2014 9:30:15 AM VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66418,72746,0,53711,TO_DATE('2014-03-06 09:30:09','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner',10,'ECA02','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','Y','N','N','N','N','N','Business Partner ',TO_DATE('2014-03-06 09:30:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 6, 2014 9:30:15 AM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72746 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Mar 6, 2014 9:30:18 AM VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66416,72747,0,53711,TO_DATE('2014-03-06 09:30:16','YYYY-MM-DD HH24:MI:SS'),100,'Document type or rules',10,'ECA02','The Document Type determines document sequence and processing rules','Y','Y','Y','N','N','N','N','N','Document Type',TO_DATE('2014-03-06 09:30:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 6, 2014 9:30:18 AM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72747 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Mar 6, 2014 9:30:21 AM VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,67095,72748,0,53711,TO_DATE('2014-03-06 09:30:18','YYYY-MM-DD HH24:MI:SS'),100,'Your customer or vendor number at the Business Partner''s site',60,'ECA02','The reference number can be printed on orders and invoices to allow your business partner to faster identify your records.','Y','Y','Y','N','N','N','N','N','Reference No',TO_DATE('2014-03-06 09:30:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 6, 2014 9:30:21 AM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72748 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Mar 6, 2014 9:30:23 AM VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,72184,72749,0,53711,TO_DATE('2014-03-06 09:30:21','YYYY-MM-DD HH24:MI:SS'),100,'Valid from including this date (first day)',7,'ECA02','The Valid From date indicates the first day of a date range','Y','Y','Y','N','N','N','N','N','Valid from',TO_DATE('2014-03-06 09:30:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 6, 2014 9:30:23 AM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=72749 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Mar 6, 2014 9:30:45 AM VET
-- LVE Withholding
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=72747
;

-- Mar 6, 2014 9:30:45 AM VET
-- LVE Withholding
DELETE FROM AD_Field WHERE AD_Field_ID=72747
;

-- Mar 6, 2014 9:30:47 AM VET
-- LVE Withholding
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=72746
;

-- Mar 6, 2014 9:30:47 AM VET
-- LVE Withholding
DELETE FROM AD_Field WHERE AD_Field_ID=72746
;

-- Mar 6, 2014 9:30:48 AM VET
-- LVE Withholding
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=72748
;

-- Mar 6, 2014 9:30:48 AM VET
-- LVE Withholding
DELETE FROM AD_Field WHERE AD_Field_ID=72748
;

-- Mar 6, 2014 9:31:18 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsMandatory='Y', IsSameLine='Y',Updated=TO_DATE('2014-03-06 09:31:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=72749
;

-- Mar 6, 2014 9:37:14 AM VET
-- LVE Withholding
UPDATE AD_Table SET IsDeleteable='Y',Updated=TO_DATE('2014-03-06 09:37:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53535
;

