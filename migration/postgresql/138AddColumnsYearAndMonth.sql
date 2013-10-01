-- Oct 1, 2013 10:29:15 AM VET
-- LVE Withholding
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56426,0,'month',TO_TIMESTAMP('2013-10-01 10:29:13','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','month','month',TO_TIMESTAMP('2013-10-01 10:29:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 1, 2013 10:29:15 AM VET
-- LVE Withholding
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56426 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Oct 1, 2013 10:29:16 AM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68350,56426,0,14,53542,'month',TO_TIMESTAMP('2013-10-01 10:29:13','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',2147483647,'Y','N','N','N','N','N','N','N','N','N','month',TO_TIMESTAMP('2013-10-01 10:29:13','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 1, 2013 10:29:16 AM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68350 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 1, 2013 10:29:17 AM VET
-- LVE Withholding
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56427,0,'year',TO_TIMESTAMP('2013-10-01 10:29:16','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','year','year',TO_TIMESTAMP('2013-10-01 10:29:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Oct 1, 2013 10:29:17 AM VET
-- LVE Withholding
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56427 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Oct 1, 2013 10:29:18 AM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,68351,56427,0,10,53542,'year',TO_TIMESTAMP('2013-10-01 10:29:16','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',17,'Y','N','N','N','N','N','N','N','N','N','year',TO_TIMESTAMP('2013-10-01 10:29:16','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Oct 1, 2013 10:29:18 AM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=68351 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Oct 1, 2013 10:30:47 AM VET
-- LVE Withholding
UPDATE AD_Element SET ColumnName='Month',Updated=TO_TIMESTAMP('2013-10-01 10:30:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56426
;

-- Oct 1, 2013 10:30:47 AM VET
-- LVE Withholding
UPDATE AD_Column SET ColumnName='Month', Name='month', Description=NULL, Help=NULL WHERE AD_Element_ID=56426
;

-- Oct 1, 2013 10:30:47 AM VET
-- LVE Withholding
UPDATE AD_Process_Para SET ColumnName='Month', Name='month', Description=NULL, Help=NULL, AD_Element_ID=56426 WHERE UPPER(ColumnName)='MONTH' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Oct 1, 2013 10:30:47 AM VET
-- LVE Withholding
UPDATE AD_Process_Para SET ColumnName='Month', Name='month', Description=NULL, Help=NULL WHERE AD_Element_ID=56426 AND IsCentrallyMaintained='Y'
;

-- Oct 1, 2013 10:43:40 AM VET
-- LVE Withholding
UPDATE AD_Element SET Name='Month', PrintName='Month',Updated=TO_TIMESTAMP('2013-10-01 10:43:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56426
;

-- Oct 1, 2013 10:43:40 AM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56426
;

-- Oct 1, 2013 10:43:40 AM VET
-- LVE Withholding
UPDATE AD_Column SET ColumnName='Month', Name='Month', Description=NULL, Help=NULL WHERE AD_Element_ID=56426
;

-- Oct 1, 2013 10:43:40 AM VET
-- LVE Withholding
UPDATE AD_Process_Para SET ColumnName='Month', Name='Month', Description=NULL, Help=NULL, AD_Element_ID=56426 WHERE UPPER(ColumnName)='MONTH' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Oct 1, 2013 10:43:40 AM VET
-- LVE Withholding
UPDATE AD_Process_Para SET ColumnName='Month', Name='Month', Description=NULL, Help=NULL WHERE AD_Element_ID=56426 AND IsCentrallyMaintained='Y'
;

-- Oct 1, 2013 10:43:40 AM VET
-- LVE Withholding
UPDATE AD_Field SET Name='Month', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=56426) AND IsCentrallyMaintained='Y'
;

-- Oct 1, 2013 10:43:40 AM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET PrintName='Month', Name='Month' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=56426)
;

-- Oct 1, 2013 10:43:46 AM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='Mes',PrintName='Mes',Updated=TO_TIMESTAMP('2013-10-01 10:43:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56426 AND AD_Language='es_MX'
;

-- Oct 1, 2013 10:44:59 AM VET
-- LVE Withholding
UPDATE AD_Element SET ColumnName='Year', Name='Year', PrintName='Year',Updated=TO_TIMESTAMP('2013-10-01 10:44:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56427
;

-- Oct 1, 2013 10:44:59 AM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56427
;

-- Oct 1, 2013 10:44:59 AM VET
-- LVE Withholding
UPDATE AD_Column SET ColumnName='Year', Name='Year', Description=NULL, Help=NULL WHERE AD_Element_ID=56427
;

-- Oct 1, 2013 10:44:59 AM VET
-- LVE Withholding
UPDATE AD_Process_Para SET ColumnName='Year', Name='Year', Description=NULL, Help=NULL, AD_Element_ID=56427 WHERE UPPER(ColumnName)='YEAR' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Oct 1, 2013 10:44:59 AM VET
-- LVE Withholding
UPDATE AD_Process_Para SET ColumnName='Year', Name='Year', Description=NULL, Help=NULL WHERE AD_Element_ID=56427 AND IsCentrallyMaintained='Y'
;

-- Oct 1, 2013 10:44:59 AM VET
-- LVE Withholding
UPDATE AD_Field SET Name='Year', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=56427) AND IsCentrallyMaintained='Y'
;

-- Oct 1, 2013 10:44:59 AM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET PrintName='Year', Name='Year' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=56427)
;

-- Oct 1, 2013 10:45:11 AM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='Año',PrintName='Año',Updated=TO_TIMESTAMP('2013-10-01 10:45:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56427 AND AD_Language='es_MX'
;

