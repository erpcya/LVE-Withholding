-- Apr 4, 2013 5:49:33 PM VET
-- LVE Retention
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,3000217,0,'Seq_ControlNo',TO_TIMESTAMP('2013-04-04 17:49:31','YYYY-MM-DD HH24:MI:SS'),100,'Sequence for Control No','ECA02','Y','Seq. Control No','Seq. Control No',TO_TIMESTAMP('2013-04-04 17:49:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 4, 2013 5:49:33 PM VET
-- LVE Retention
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=3000217 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Apr 4, 2013 5:49:57 PM VET
-- LVE Retention
UPDATE AD_Element_Trl SET Name='Seq. No Control',PrintName='Seq. No Control',Description='Sequencia para No Control',Updated=TO_TIMESTAMP('2013-04-04 17:49:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=3000217 AND AD_Language='es_MX'
;

-- Apr 4, 2013 5:51:34 PM VET
-- LVE Retention
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000235,3000217,0,18,128,217,'Seq_ControlNo',TO_TIMESTAMP('2013-04-04 17:51:33','YYYY-MM-DD HH24:MI:SS'),100,'Sequence for Control No','ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Seq. Control No',0,TO_TIMESTAMP('2013-04-04 17:51:33','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Apr 4, 2013 5:51:34 PM VET
-- LVE Retention
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000235 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Apr 4, 2013 5:54:15 PM VET
-- LVE Retention
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,HideInListView,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,PreferredWidth,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,3000235,3000226,0,167,TO_TIMESTAMP('2013-04-04 17:54:15','YYYY-MM-DD HH24:MI:SS'),100,'Sequence for Control No',0,'ECA02','N','Y','Y','Y','N','N','N','N','N','Seq. Control No',0,330,0,TO_TIMESTAMP('2013-04-04 17:54:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 4, 2013 5:54:15 PM VET
-- LVE Retention
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000226 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Apr 4, 2013 5:55:59 PM VET
-- LVE Retention
UPDATE AD_Field SET DisplayLogic='@DocBaseType@=''API'' | @DocBaseType@=''APC'' | @DocBaseType@=''ARI'' | @DocBaseType@=''ARC''',Updated=TO_TIMESTAMP('2013-04-04 17:55:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000226
;

-- Apr 4, 2013 5:57:41 PM VET
-- LVE Retention
ALTER TABLE C_DocType ADD COLUMN Seq_ControlNo VARCHAR(10) DEFAULT NULL 
;

-- Apr 4, 2013 5:58:37 PM VET
-- LVE Retention
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-04-04 17:58:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000226
;

