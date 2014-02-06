-- Dec 18, 2013 10:29:14 AM VET
-- LVE Withholding
UPDATE AD_Column SET ReadOnlyLogic='@EditControlNumber@!''N''',Updated=TO_TIMESTAMP('2013-12-18 10:29:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66494
;

-- Dec 18, 2013 10:29:26 AM VET
-- LVE Withholding
UPDATE AD_Column SET ReadOnlyLogic='@EditSequence@!''N''',Updated=TO_TIMESTAMP('2013-12-18 10:29:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=3492
;

-- Dec 18, 2013 11:14:38 AM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,70763,56854,0,20,318,'EditControlNumber',TO_TIMESTAMP('2013-12-18 11:14:36','YYYY-MM-DD HH24:MI:SS'),100,'N','ECA02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Edit Control Number',0,TO_TIMESTAMP('2013-12-18 11:14:36','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Dec 18, 2013 11:14:38 AM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=70763 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 18, 2013 11:15:02 AM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,70764,56853,0,20,318,'EditSequence',TO_TIMESTAMP('2013-12-18 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,'N','ECA02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Edit Sequence',0,TO_TIMESTAMP('2013-12-18 11:15:00','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Dec 18, 2013 11:15:02 AM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=70764 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 18, 2013 11:15:16 AM VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,70763,71866,0,263,TO_TIMESTAMP('2013-12-18 11:15:14','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Edit Control Number',TO_TIMESTAMP('2013-12-18 11:15:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 18, 2013 11:15:16 AM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=71866 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Dec 18, 2013 11:15:19 AM VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,70764,71867,0,263,TO_TIMESTAMP('2013-12-18 11:15:16','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Edit Sequence',TO_TIMESTAMP('2013-12-18 11:15:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 18, 2013 11:15:19 AM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=71867 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Dec 18, 2013 11:15:20 AM VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,59037,71868,0,263,TO_TIMESTAMP('2013-12-18 11:15:19','YYYY-MM-DD HH24:MI:SS'),100,'The date+time (expressed in decimal format) when the document has been processed',20,'D','The ProcessedOn Date+Time save the exact moment (nanoseconds precision if allowed by the DB) when a document has been processed.','Y','Y','Y','N','N','N','N','N','Processed On',TO_TIMESTAMP('2013-12-18 11:15:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 18, 2013 11:15:20 AM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=71868 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Dec 18, 2013 11:15:22 AM VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,55305,71869,0,263,TO_TIMESTAMP('2013-12-18 11:15:20','YYYY-MM-DD HH24:MI:SS'),100,'ID of document reversal',22,'D','Y','Y','Y','N','N','N','N','N','Reversal ID',TO_TIMESTAMP('2013-12-18 11:15:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 18, 2013 11:15:22 AM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=71869 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Dec 18, 2013 11:15:23 AM VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,52007,71870,0,263,TO_TIMESTAMP('2013-12-18 11:15:22','YYYY-MM-DD HH24:MI:SS'),100,'Return Material Authorization',22,'D','A Return Material Authorization may be required to accept returns and to create Credit Memos','Y','Y','Y','N','N','N','N','N','RMA',TO_TIMESTAMP('2013-12-18 11:15:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 18, 2013 11:15:23 AM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=71870 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Dec 18, 2013 11:15:52 AM VET
-- LVE Withholding
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=71868
;

-- Dec 18, 2013 11:15:52 AM VET
-- LVE Withholding
DELETE FROM AD_Field WHERE AD_Field_ID=71868
;

-- Dec 18, 2013 11:16:01 AM VET
-- LVE Withholding
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=71869
;

-- Dec 18, 2013 11:16:01 AM VET
-- LVE Withholding
DELETE FROM AD_Field WHERE AD_Field_ID=71869
;

-- Dec 18, 2013 11:16:10 AM VET
-- LVE Withholding
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=71870
;

-- Dec 18, 2013 11:16:10 AM VET
-- LVE Withholding
DELETE FROM AD_Field WHERE AD_Field_ID=71870
;

-- Dec 18, 2013 11:16:17 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-12-18 11:16:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71866
;

-- Dec 18, 2013 11:16:21 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-12-18 11:16:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71867
;

-- Dec 18, 2013 11:24:25 AM VET
-- LVE Withholding
UPDATE AD_Column SET ReadOnlyLogic='@EditControlNumber@=''N''',Updated=TO_TIMESTAMP('2013-12-18 11:24:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66494
;

-- Dec 18, 2013 11:26:09 AM VET
-- LVE Withholding
UPDATE AD_Column SET ReadOnlyLogic='@EditSequence@=''N''',Updated=TO_TIMESTAMP('2013-12-18 11:26:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=3492
;

