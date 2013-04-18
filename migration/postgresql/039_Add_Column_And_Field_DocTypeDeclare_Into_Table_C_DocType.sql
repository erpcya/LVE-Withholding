-- 17/04/2013 12:34:56 PM VET
-- LVE Retention
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,3000230,0,'DocTypeDeclare',TO_TIMESTAMP('2013-04-17 12:34:55','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Doc Type Declare','Doc Type Declare',TO_TIMESTAMP('2013-04-17 12:34:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 17/04/2013 12:34:56 PM VET
-- LVE Retention
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=3000230 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 17/04/2013 12:35:59 PM VET
-- LVE Retention
UPDATE AD_Element_Trl SET Name='Tipo de documento Declaración',PrintName='Tipo de documento Declaración',Updated=TO_TIMESTAMP('2013-04-17 12:35:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=3000230 AND AD_Language='es_MX'
;

-- 17/04/2013 12:36:41 PM VET
-- LVE Retention
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,3000205,TO_TIMESTAMP('2013-04-17 12:36:40','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','Doc Type Declare',TO_TIMESTAMP('2013-04-17 12:36:40','YYYY-MM-DD HH24:MI:SS'),100,'L')
;

-- 17/04/2013 12:36:41 PM VET
-- LVE Retention
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=3000205 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 17/04/2013 12:36:58 PM VET
-- LVE Retention
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,3000205,3000228,TO_TIMESTAMP('2013-04-17 12:36:58','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Invoice',TO_TIMESTAMP('2013-04-17 12:36:58','YYYY-MM-DD HH24:MI:SS'),100,'01')
;

-- 17/04/2013 12:36:58 PM VET
-- LVE Retention
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=3000228 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 17/04/2013 12:37:03 PM VET
-- LVE Retention
UPDATE AD_Ref_List_Trl SET Name='Factura',Updated=TO_TIMESTAMP('2013-04-17 12:37:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=3000228 AND AD_Language='es_MX'
;

-- 17/04/2013 12:37:24 PM VET
-- LVE Retention
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,3000205,3000229,TO_TIMESTAMP('2013-04-17 12:37:24','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Debit Note',TO_TIMESTAMP('2013-04-17 12:37:24','YYYY-MM-DD HH24:MI:SS'),100,'02')
;

-- 17/04/2013 12:37:24 PM VET
-- LVE Retention
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=3000229 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 17/04/2013 12:37:30 PM VET
-- LVE Retention
UPDATE AD_Ref_List_Trl SET Name='Nota de Debito',Updated=TO_TIMESTAMP('2013-04-17 12:37:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=3000229 AND AD_Language='es_MX'
;

-- 17/04/2013 12:37:49 PM VET
-- LVE Retention
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,3000205,3000230,TO_TIMESTAMP('2013-04-17 12:37:49','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Credit Note',TO_TIMESTAMP('2013-04-17 12:37:49','YYYY-MM-DD HH24:MI:SS'),100,'03')
;

-- 17/04/2013 12:37:49 PM VET
-- LVE Retention
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=3000230 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 17/04/2013 12:37:56 PM VET
-- LVE Retention
UPDATE AD_Ref_List_Trl SET Name='Nota de Credito',Updated=TO_TIMESTAMP('2013-04-17 12:37:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=3000230 AND AD_Language='es_MX'
;

-- 17/04/2013 12:38:39 PM VET
-- LVE Retention
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000320,3000230,0,17,3000205,217,'DocTypeDeclare',TO_TIMESTAMP('2013-04-17 12:38:38','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',2,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Doc Type Declare',0,TO_TIMESTAMP('2013-04-17 12:38:38','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 17/04/2013 12:38:39 PM VET
-- LVE Retention
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000320 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 17/04/2013 12:38:47 PM VET
-- LVE Retention
ALTER TABLE C_DocType ADD COLUMN DocTypeDeclare VARCHAR(2) DEFAULT NULL 
;

-- 17/04/2013 12:39:29 PM VET
-- LVE Retention
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000320,3000263,0,167,TO_TIMESTAMP('2013-04-17 12:39:28','YYYY-MM-DD HH24:MI:SS'),100,2,'ECA02','Y','Y','Y','N','N','N','N','N','Doc Type Declare',TO_TIMESTAMP('2013-04-17 12:39:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 17/04/2013 12:39:29 PM VET
-- LVE Retention
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000263 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

