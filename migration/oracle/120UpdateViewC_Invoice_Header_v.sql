-- 4/09/2013 12:03:43 PM VET
-- LVE Withholding
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56249,0,'numberofminutes',TO_DATE('2013-09-04 12:03:41','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','numberofminutes','numberofminutes',TO_DATE('2013-09-04 12:03:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 4/09/2013 12:03:43 PM VET
-- LVE Withholding
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56249 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 4/09/2013 12:03:43 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,67212,56249,0,10,516,'numberofminutes',TO_DATE('2013-09-04 12:03:41','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',60,'Y','N','N','N','N','N','N','N','N','N','numberofminutes',TO_DATE('2013-09-04 12:03:41','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 4/09/2013 12:03:44 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=67212 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 4/09/2013 12:04:41 PM VET
-- LVE Withholding
UPDATE AD_Element SET ColumnName='NumberOfMinutes', Name='Number of Minutes', PrintName='Number of Minutes',Updated=TO_DATE('2013-09-04 12:04:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56249
;

-- 4/09/2013 12:04:41 PM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56249
;

-- 4/09/2013 12:04:41 PM VET
-- LVE Withholding
UPDATE AD_Column SET ColumnName='NumberOfMinutes', Name='Number of Minutes', Description=NULL, Help=NULL WHERE AD_Element_ID=56249
;

-- 4/09/2013 12:04:41 PM VET
-- LVE Withholding
UPDATE AD_Process_Para SET ColumnName='NumberOfMinutes', Name='Number of Minutes', Description=NULL, Help=NULL, AD_Element_ID=56249 WHERE UPPER(ColumnName)='NUMBEROFMINUTES' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 4/09/2013 12:04:41 PM VET
-- LVE Withholding
UPDATE AD_Process_Para SET ColumnName='NumberOfMinutes', Name='Number of Minutes', Description=NULL, Help=NULL WHERE AD_Element_ID=56249 AND IsCentrallyMaintained='Y'
;

-- 4/09/2013 12:04:41 PM VET
-- LVE Withholding
UPDATE AD_Field SET Name='Number of Minutes', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=56249) AND IsCentrallyMaintained='Y'
;

-- 4/09/2013 12:04:41 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem pi SET PrintName='Number of Minutes', Name='Number of Minutes' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=56249)
;

-- 4/09/2013 12:04:47 PM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='Número de Acta',PrintName='Número de Acta',Updated=TO_DATE('2013-09-04 12:04:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56249 AND AD_Language='es_MX'
;

