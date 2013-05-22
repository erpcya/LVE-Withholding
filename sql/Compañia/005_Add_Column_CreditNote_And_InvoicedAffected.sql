-- 30/04/2013 05:18:21 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element SET ColumnName='CreditNote', Name='Credit Note', PrintName='Credit Note',Updated=TO_TIMESTAMP('2013-04-30 17:18:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1000034
;

-- 30/04/2013 05:18:21 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=1000034
;

-- 30/04/2013 05:18:21 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET ColumnName='CreditNote', Name='Credit Note', Description=NULL, Help=NULL WHERE AD_Element_ID=1000034
;

-- 30/04/2013 05:18:21 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET ColumnName='CreditNote', Name='Credit Note', Description=NULL, Help=NULL, AD_Element_ID=1000034 WHERE UPPER(ColumnName)='CREDITNOTE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 30/04/2013 05:18:21 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET ColumnName='CreditNote', Name='Credit Note', Description=NULL, Help=NULL WHERE AD_Element_ID=1000034 AND IsCentrallyMaintained='Y'
;

-- 30/04/2013 05:18:21 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET Name='Credit Note', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1000034) AND IsCentrallyMaintained='Y'
;

-- 30/04/2013 05:18:21 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_PrintFormatItem SET PrintName='Credit Note', Name='Credit Note' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1000034)
;

-- 30/04/2013 05:18:34 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET Name='Nota de Credito',PrintName='Nota de Credito',Updated=TO_TIMESTAMP('2013-04-30 17:18:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1000034 AND AD_Language='es_VE'
;

-- 30/04/2013 05:20:34 PM VET
-- LVE Retention
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000454,1000034,0,11,3000217,'CreditNote','(CASE WHEN  DocTypeDeclare = ''03'' THEN CUST_RV_Books.DocumentNO ELSE null END)',TO_TIMESTAMP('2013-04-30 17:20:34','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','N','Credit Note',0,TO_TIMESTAMP('2013-04-30 17:20:34','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 30/04/2013 05:20:34 PM VET
-- LVE Retention
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000454 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 30/04/2013 05:22:08 PM VET
-- LVE Retention
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000455,1000036,0,11,3000217,'InvoiceAffected','(CASE  WHEN  DocTypeDeclare = ''02'' OR DocTypeDeclare = ''03'' THEN (SELECT C_Invoice.DocumentNo FROM C_Invoice WHERE CUST_RV_Books.DocAffected_ID = C_Invoice.C_Invoice_ID) ELSE null END)',TO_TIMESTAMP('2013-04-30 17:22:07','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','N','Invoice Affected',0,TO_TIMESTAMP('2013-04-30 17:22:07','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 30/04/2013 05:22:08 PM VET
-- LVE Retention
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000455 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

