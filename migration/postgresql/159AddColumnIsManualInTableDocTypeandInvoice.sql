-- Dec 20, 2013 8:06:05 AM VET
-- LVE Withholding
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=71867
;

-- Dec 20, 2013 8:06:05 AM VET
-- LVE Withholding
DELETE FROM AD_Field WHERE AD_Field_ID=71867
;

-- Dec 20, 2013 8:06:16 AM VET
-- LVE Withholding
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=71866
;

-- Dec 20, 2013 8:06:16 AM VET
-- LVE Withholding
DELETE FROM AD_Field WHERE AD_Field_ID=71866
;

-- Dec 20, 2013 8:07:02 AM VET
-- LVE Withholding
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=70763
;

-- Dec 20, 2013 8:07:02 AM VET
-- LVE Withholding
DELETE FROM AD_Column WHERE AD_Column_ID=70763
;

-- Dec 20, 2013 8:07:07 AM VET
-- LVE Withholding
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=70764
;

-- Dec 20, 2013 8:07:07 AM VET
-- LVE Withholding
DELETE FROM AD_Column WHERE AD_Column_ID=70764
;

-- Dec 20, 2013 8:07:34 AM VET
-- LVE Withholding
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=71859
;

-- Dec 20, 2013 8:07:34 AM VET
-- LVE Withholding
DELETE FROM AD_Field WHERE AD_Field_ID=71859
;

-- Dec 20, 2013 8:07:42 AM VET
-- LVE Withholding
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=71858
;

-- Dec 20, 2013 8:07:42 AM VET
-- LVE Withholding
DELETE FROM AD_Field WHERE AD_Field_ID=71858
;

-- Dec 20, 2013 8:08:02 AM VET
-- LVE Withholding
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=70755
;

-- Dec 20, 2013 8:08:02 AM VET
-- LVE Withholding
DELETE FROM AD_Column WHERE AD_Column_ID=70755
;

-- Dec 20, 2013 8:08:10 AM VET
-- LVE Withholding
DELETE FROM AD_Element_Trl WHERE AD_Element_ID=56854
;

-- Dec 20, 2013 8:08:10 AM VET
-- LVE Withholding
DELETE FROM AD_Element WHERE AD_Element_ID=56854
;

-- Dec 20, 2013 8:08:31 AM VET
-- LVE Withholding
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=70754
;

-- Dec 20, 2013 8:08:31 AM VET
-- LVE Withholding
DELETE FROM AD_Column WHERE AD_Column_ID=70754
;

-- Dec 20, 2013 8:08:41 AM VET
-- LVE Withholding
DELETE FROM AD_Element_Trl WHERE AD_Element_ID=56853
;

-- Dec 20, 2013 8:08:42 AM VET
-- LVE Withholding
DELETE FROM AD_Element WHERE AD_Element_ID=56853
;

-- Dec 20, 2013 8:09:18 AM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,70855,1474,0,20,217,'IsManual',TO_TIMESTAMP('2013-12-20 08:09:16','YYYY-MM-DD HH24:MI:SS'),100,'This is a manual process','ECA02',1,'The Manual check box indicates if the process will done manually.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Manual',0,TO_TIMESTAMP('2013-12-20 08:09:16','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Dec 20, 2013 8:09:18 AM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=70855 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 20, 2013 8:09:51 AM VET
-- LVE Withholding
UPDATE AD_Column SET DefaultValue='N',Updated=TO_TIMESTAMP('2013-12-20 08:09:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=70855
;

-- Dec 20, 2013 8:09:55 AM VET
-- LVE Withholding
ALTER TABLE C_DocType ADD COLUMN IsManual CHAR(1) DEFAULT 'N' CHECK (IsManual IN ('Y','N'))
;

-- Dec 20, 2013 8:10:14 AM VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,70855,71945,0,167,TO_TIMESTAMP('2013-12-20 08:10:12','YYYY-MM-DD HH24:MI:SS'),100,'This is a manual process',1,'ECA02','The Manual check box indicates if the process will done manually.','Y','Y','Y','N','N','N','N','N','Manual',TO_TIMESTAMP('2013-12-20 08:10:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 20, 2013 8:10:14 AM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=71945 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Dec 20, 2013 8:10:22 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-12-20 08:10:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71945
;

-- Dec 20, 2013 8:10:58 AM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,70856,1474,0,20,318,'IsManual',TO_TIMESTAMP('2013-12-20 08:10:56','YYYY-MM-DD HH24:MI:SS'),100,'N','This is a manual process','ECA02',1,'The Manual check box indicates if the process will done manually.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Manual',0,TO_TIMESTAMP('2013-12-20 08:10:56','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Dec 20, 2013 8:10:58 AM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=70856 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 20, 2013 8:11:00 AM VET
-- LVE Withholding
ALTER TABLE C_Invoice ADD COLUMN IsManual CHAR(1) DEFAULT 'N' CHECK (IsManual IN ('Y','N'))
;

-- Dec 20, 2013 8:11:40 AM VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,HideInListView,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,PreferredWidth,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,70856,71946,0,263,TO_TIMESTAMP('2013-12-20 08:11:39','YYYY-MM-DD HH24:MI:SS'),100,'This is a manual process',0,'ECA02','The Manual check box indicates if the process will done manually.','N','Y','Y','Y','N','N','N','N','N','Manual',0,460,0,TO_TIMESTAMP('2013-12-20 08:11:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 20, 2013 8:11:40 AM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=71946 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Dec 20, 2013 8:13:04 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2013-12-20 08:13:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71946
;

-- Dec 20, 2013 8:15:35 AM VET
-- LVE Withholding
UPDATE AD_Column SET ReadOnlyLogic='@IsManul@=''N''',Updated=TO_TIMESTAMP('2013-12-20 08:15:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66494
;

-- Dec 20, 2013 8:15:41 AM VET
-- LVE Withholding
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@=''N''',Updated=TO_TIMESTAMP('2013-12-20 08:15:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66494
;

-- Dec 20, 2013 8:15:57 AM VET
-- LVE Withholding
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@=''N''',Updated=TO_TIMESTAMP('2013-12-20 08:15:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=3492
;

