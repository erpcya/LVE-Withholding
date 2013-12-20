-- 17/12/2013 04:28:08 PM VET
-- LVE Withholding
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56852,0,20,'EditSequence',TO_DATE('2013-12-17 16:28:06','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Edit Sequence','Edit Sequence',TO_DATE('2013-12-17 16:28:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 17/12/2013 04:28:08 PM VET
-- LVE Withholding
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56852 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 17/12/2013 04:28:18 PM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='Editar Secuencia',PrintName='Editar Secuencia',Updated=TO_DATE('2013-12-17 16:28:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56852 AND AD_Language='es_MX'
;

-- 17/12/2013 04:28:35 PM VET
-- LVE Withholding
DELETE  FROM  AD_Element_Trl WHERE AD_Element_ID=56852
;

-- 17/12/2013 04:28:35 PM VET
-- LVE Withholding
DELETE FROM AD_Element WHERE AD_Element_ID=56852
;

-- 17/12/2013 04:29:14 PM VET
-- LVE Withholding
UPDATE AD_Language SET IsSystemLanguage='Y',Updated=TO_DATE('2013-12-17 16:29:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Language_ID=151
;

-- Dec 17, 2013 4:34:39 PM VET
-- LVE Withholding
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56853,0,20,'EditSequence',TO_DATE('2013-12-17 16:34:38','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Edit Sequence','Edit Sequence',TO_DATE('2013-12-17 16:34:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 17, 2013 4:34:39 PM VET
-- LVE Withholding
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56853 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Dec 17, 2013 4:34:54 PM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='Editar Secuencia',PrintName='Editar Secuencia',Updated=TO_DATE('2013-12-17 16:34:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56853 AND AD_Language='es_MX'
;

-- Dec 17, 2013 4:35:00 PM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='Editar Secuencia',PrintName='Editar Secuencia',Updated=TO_DATE('2013-12-17 16:35:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56853 AND AD_Language='es_VE'
;

-- Dec 17, 2013 4:35:25 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,70754,56853,0,20,217,'EditSequence',TO_DATE('2013-12-17 16:35:23','YYYY-MM-DD HH24:MI:SS'),100,'N','ECA02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Edit Sequence',0,TO_DATE('2013-12-17 16:35:23','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Dec 17, 2013 4:35:25 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=70754 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 17, 2013 4:36:31 PM VET
-- LVE Withholding
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56854,0,20,'EditControlNumber',TO_DATE('2013-12-17 16:36:30','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Edit Control Number','Edit Control Number',TO_DATE('2013-12-17 16:36:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 17, 2013 4:36:31 PM VET
-- LVE Withholding
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56854 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Dec 17, 2013 4:37:14 PM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='Editar Número de Control',PrintName='Editar Número de Control',Updated=TO_DATE('2013-12-17 16:37:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56854 AND AD_Language='es_MX'
;

-- Dec 17, 2013 4:37:19 PM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='Editar Número de Control',PrintName='Editar Número de Control',Updated=TO_DATE('2013-12-17 16:37:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56854 AND AD_Language='es_VE'
;

-- Dec 17, 2013 4:48:44 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,70755,56854,0,20,217,'EditControlNumber',TO_DATE('2013-12-17 16:48:42','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Edit Control Number',0,TO_DATE('2013-12-17 16:48:42','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Dec 17, 2013 4:48:44 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=70755 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Dec 17, 2013 4:49:04 PM VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,70755,71858,0,167,TO_DATE('2013-12-17 16:49:03','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Edit Control Number',TO_DATE('2013-12-17 16:49:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 17, 2013 4:49:04 PM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=71858 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Dec 17, 2013 4:49:06 PM VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,70754,71859,0,167,TO_DATE('2013-12-17 16:49:04','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Edit Sequence',TO_DATE('2013-12-17 16:49:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 17, 2013 4:49:06 PM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=71859 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Dec 17, 2013 4:49:50 PM VET
-- LVE Withholding
UPDATE AD_Field SET DisplayLogic='@DocBaseType@ =''API'' |@DocBaseType@ =''ARI''  |@DocBaseType@ = ''APC'' |@DocBaseType@ =''ARC''',Updated=TO_DATE('2013-12-17 16:49:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71858
;

-- Dec 17, 2013 4:49:58 PM VET
-- LVE Withholding
UPDATE AD_Field SET DisplayLogic='@DocBaseType@ =''API'' |@DocBaseType@ =''ARI''  |@DocBaseType@ = ''APC'' |@DocBaseType@ =''ARC''', IsSameLine='Y',Updated=TO_DATE('2013-12-17 16:49:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71859
;

-- Dec 17, 2013 4:50:04 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-12-17 16:50:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71858
;

-- Dec 17, 2013 4:52:55 PM VET
-- LVE Withholding
UPDATE AD_Field SET DisplayLogic='@DocBaseType@ =''API'' |@DocBaseType@ =''ARI''  | @DocBaseType@ = ''APC'' | @DocBaseType@ =''ARC''',Updated=TO_DATE('2013-12-17 16:52:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71858
;

-- Dec 17, 2013 4:53:10 PM VET
-- LVE Withholding
UPDATE AD_Field SET DisplayLogic='@DocBaseType@ =''API'' | @DocBaseType@ =''ARI''  | @DocBaseType@ = ''APC'' | @DocBaseType@ =''ARC''',Updated=TO_DATE('2013-12-17 16:53:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=71859
;

-- Dec 17, 2013 4:57:32 PM VET
-- LVE Withholding
UPDATE AD_Column SET DefaultValue='N',Updated=TO_DATE('2013-12-17 16:57:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=70755
;

-- Dec 17, 2013 5:10:09 PM VET
-- LVE Withholding
UPDATE AD_Column SET ReadOnlyLogic='@EditControlNumber@!''N''',Updated=TO_DATE('2013-12-17 17:10:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66494
;

-- Dec 17, 2013 5:10:50 PM VET
-- LVE Withholding
UPDATE AD_Column SET DefaultValue='@EditSequence@=''Y''',Updated=TO_DATE('2013-12-17 17:10:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=3492
;

-- Dec 17, 2013 5:11:36 PM VET
-- LVE Withholding
UPDATE AD_Column SET ReadOnlyLogic='@EditControlNumber@=''Y''',Updated=TO_DATE('2013-12-17 17:11:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66494
;

-- Dec 17, 2013 5:11:41 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsReadOnly='N',Updated=TO_DATE('2013-12-17 17:11:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=70262
;

-- Dec 17, 2013 5:11:50 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2013-12-17 17:11:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2779
;

-- Dec 17, 2013 5:20:16 PM VET
-- LVE Withholding
UPDATE AD_Column SET DefaultValue=NULL, ReadOnlyLogic='@EditSequence@=''N''',Updated=TO_DATE('2013-12-17 17:20:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=3492
;

-- Dec 17, 2013 5:20:34 PM VET
-- LVE Withholding
UPDATE AD_Column SET ReadOnlyLogic='@EditControlNumber@=''N''',Updated=TO_DATE('2013-12-17 17:20:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66494
;

-- Dec 17, 2013 5:21:51 PM VET
-- LVE Withholding
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_DATE('2013-12-17 17:21:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=3492
;

-- Dec 17, 2013 5:22:28 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsReadOnly='N',Updated=TO_DATE('2013-12-17 17:22:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2779
;

