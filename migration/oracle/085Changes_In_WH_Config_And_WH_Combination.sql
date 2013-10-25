-- Aug 15, 2013 8:07:09 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66767,1474,0,20,53537,'IsManual',TO_DATE('2013-08-15 20:07:08','YYYY-MM-DD HH24:MI:SS'),100,'This is a manual process','ECA02',1,'The Manual check box indicates if the process will done manually.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Manual',0,TO_DATE('2013-08-15 20:07:08','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 15, 2013 8:07:09 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66767 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 15, 2013 8:11:17 PM VET
-- LVE Withholding
UPDATE AD_Column SET AD_Element_ID=53400, ColumnName='MinValue', Description=NULL, Help=NULL, Name='Min Value',Updated=TO_DATE('2013-08-15 20:11:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66475
;

-- Aug 15, 2013 8:11:17 PM VET
-- LVE Withholding
UPDATE AD_Column_Trl SET IsTranslated='N' WHERE AD_Column_ID=66475
;

-- Aug 15, 2013 8:11:17 PM VET
-- LVE Withholding
UPDATE AD_Field SET Name='Min Value', Description=NULL, Help=NULL WHERE AD_Column_ID=66475 AND IsCentrallyMaintained='Y'
;

-- Aug 15, 2013 8:12:58 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66768,53399,0,22,53540,'MaxValue',TO_DATE('2013-08-15 20:12:57','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',14,'Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Max Value',0,TO_DATE('2013-08-15 20:12:57','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 15, 2013 8:12:58 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66768 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 15, 2013 8:15:06 PM VET
-- LVE Withholding
DELETE  FROM  AD_Element_Trl WHERE AD_Element_ID=56066
;

-- Aug 15, 2013 8:15:07 PM VET
-- LVE Withholding
DELETE FROM AD_Element WHERE AD_Element_ID=56066
;
