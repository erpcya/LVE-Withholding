-- Nov 7, 2013 11:41:59 AM VET
-- LVE Withholding
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56597,0,'whbaseamt',TO_DATE('2013-11-07 11:41:57','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','whbaseamt','whbaseamt',TO_DATE('2013-11-07 11:41:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 7, 2013 11:41:59 AM VET
-- LVE Withholding
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56597 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Nov 7, 2013 11:42:00 AM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,69830,56597,0,12,53542,'whbaseamt',TO_DATE('2013-11-07 11:41:57','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',131089,'Y','N','N','N','N','N','N','N','N','N','whbaseamt',TO_DATE('2013-11-07 11:41:57','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Nov 7, 2013 11:42:00 AM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=69830 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Nov 7, 2013 11:42:01 AM VET
-- LVE Withholding
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56598,0,'whtaxamt',TO_DATE('2013-11-07 11:42:00','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','whtaxamt','whtaxamt',TO_DATE('2013-11-07 11:42:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Nov 7, 2013 11:42:01 AM VET
-- LVE Withholding
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56598 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Nov 7, 2013 11:42:02 AM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,69831,56598,0,12,53542,'whtaxamt',TO_DATE('2013-11-07 11:42:00','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',131089,'Y','N','N','N','N','N','N','N','N','N','whtaxamt',TO_DATE('2013-11-07 11:42:00','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Nov 7, 2013 11:42:02 AM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=69831 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Nov 7, 2013 11:43:50 AM VET
-- LVE Withholding
UPDATE AD_Element SET ColumnName='WHBaseAmt', Name='WH Base Amt', PrintName='WH Base Amt',Updated=TO_DATE('2013-11-07 11:43:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56597
;

-- Nov 7, 2013 11:43:50 AM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56597
;

-- Nov 7, 2013 11:43:50 AM VET
-- LVE Withholding
UPDATE AD_Column SET ColumnName='WHBaseAmt', Name='WH Base Amt', Description=NULL, Help=NULL WHERE AD_Element_ID=56597
;

-- Nov 7, 2013 11:43:50 AM VET
-- LVE Withholding
UPDATE AD_Process_Para SET ColumnName='WHBaseAmt', Name='WH Base Amt', Description=NULL, Help=NULL, AD_Element_ID=56597 WHERE UPPER(ColumnName)='WHBASEAMT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Nov 7, 2013 11:43:50 AM VET
-- LVE Withholding
UPDATE AD_Process_Para SET ColumnName='WHBaseAmt', Name='WH Base Amt', Description=NULL, Help=NULL WHERE AD_Element_ID=56597 AND IsCentrallyMaintained='Y'
;

-- Nov 7, 2013 11:43:50 AM VET
-- LVE Withholding
UPDATE AD_Field SET Name='WH Base Amt', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=56597) AND IsCentrallyMaintained='Y'
;

-- Nov 7, 2013 11:43:50 AM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem pi SET PrintName='WH Base Amt', Name='WH Base Amt' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=56597)
;

-- Nov 7, 2013 11:45:23 AM VET
-- LVE Withholding
UPDATE AD_Element SET Name='Withholding Base Amt', PrintName='Withholding Base Amt',Updated=TO_DATE('2013-11-07 11:45:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56597
;

-- Nov 7, 2013 11:45:23 AM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56597
;

-- Nov 7, 2013 11:45:23 AM VET
-- LVE Withholding
UPDATE AD_Column SET ColumnName='WHBaseAmt', Name='Withholding Base Amt', Description=NULL, Help=NULL WHERE AD_Element_ID=56597
;

-- Nov 7, 2013 11:45:23 AM VET
-- LVE Withholding
UPDATE AD_Process_Para SET ColumnName='WHBaseAmt', Name='Withholding Base Amt', Description=NULL, Help=NULL, AD_Element_ID=56597 WHERE UPPER(ColumnName)='WHBASEAMT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Nov 7, 2013 11:45:23 AM VET
-- LVE Withholding
UPDATE AD_Process_Para SET ColumnName='WHBaseAmt', Name='Withholding Base Amt', Description=NULL, Help=NULL WHERE AD_Element_ID=56597 AND IsCentrallyMaintained='Y'
;

-- Nov 7, 2013 11:45:23 AM VET
-- LVE Withholding
UPDATE AD_Field SET Name='Withholding Base Amt', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=56597) AND IsCentrallyMaintained='Y'
;

-- Nov 7, 2013 11:45:23 AM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem pi SET PrintName='Withholding Base Amt', Name='Withholding Base Amt' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=56597)
;

-- Nov 7, 2013 11:46:09 AM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='Monto Base Retenido',PrintName='Monto Base Retenido',Updated=TO_DATE('2013-11-07 11:46:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56597 AND AD_Language='es_MX'
;

-- Nov 7, 2013 11:48:32 AM VET
-- LVE Withholding
UPDATE AD_Element SET ColumnName='WHTaxAmt', Name='Withholding Tax Amt', PrintName='Withholding Tax Amt',Updated=TO_DATE('2013-11-07 11:48:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56598
;

-- Nov 7, 2013 11:48:32 AM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56598
;

-- Nov 7, 2013 11:48:32 AM VET
-- LVE Withholding
UPDATE AD_Column SET ColumnName='WHTaxAmt', Name='Withholding Tax Amt', Description=NULL, Help=NULL WHERE AD_Element_ID=56598
;

-- Nov 7, 2013 11:48:32 AM VET
-- LVE Withholding
UPDATE AD_Process_Para SET ColumnName='WHTaxAmt', Name='Withholding Tax Amt', Description=NULL, Help=NULL, AD_Element_ID=56598 WHERE UPPER(ColumnName)='WHTAXAMT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Nov 7, 2013 11:48:32 AM VET
-- LVE Withholding
UPDATE AD_Process_Para SET ColumnName='WHTaxAmt', Name='Withholding Tax Amt', Description=NULL, Help=NULL WHERE AD_Element_ID=56598 AND IsCentrallyMaintained='Y'
;

-- Nov 7, 2013 11:48:32 AM VET
-- LVE Withholding
UPDATE AD_Field SET Name='Withholding Tax Amt', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=56598) AND IsCentrallyMaintained='Y'
;

-- Nov 7, 2013 11:48:32 AM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem pi SET PrintName='Withholding Tax Amt', Name='Withholding Tax Amt' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=56598)
;

-- Nov 7, 2013 11:48:45 AM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='Impuesto Retenido',PrintName='Impuesto Retenido',Updated=TO_DATE('2013-11-07 11:48:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56598 AND AD_Language='es_MX'
;

