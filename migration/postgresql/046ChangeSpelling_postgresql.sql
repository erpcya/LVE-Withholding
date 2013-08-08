-- 5/08/2013 02:41:30 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Table SET Name='Withholding Combination', TableName='LVE_WH_Combination',Updated=TO_TIMESTAMP('2013-08-05 02:41:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53537
;

-- 5/08/2013 02:41:30 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Table_Trl SET IsTranslated='N' WHERE AD_Table_ID=53537
;

-- 5/08/2013 02:42:38 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element SET ColumnName='LVE_WH_Combination_ID', Name='Withholding Combination', PrintName='Withholding Combination',Updated=TO_TIMESTAMP('2013-08-05 02:42:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56058
;

-- 5/08/2013 02:42:38 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56058
;

-- 5/08/2013 02:42:38 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET ColumnName='LVE_WH_Combination_ID', Name='Withholding Combination', Description=NULL, Help=NULL WHERE AD_Element_ID=56058
;

-- 5/08/2013 02:42:38 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET ColumnName='LVE_WH_Combination_ID', Name='Withholding Combination', Description=NULL, Help=NULL, AD_Element_ID=56058 WHERE UPPER(ColumnName)='LVE_WH_COMBINATION_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 5/08/2013 02:42:38 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET ColumnName='LVE_WH_Combination_ID', Name='Withholding Combination', Description=NULL, Help=NULL WHERE AD_Element_ID=56058 AND IsCentrallyMaintained='Y'
;

-- 5/08/2013 02:42:38 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET Name='Withholding Combination', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=56058) AND IsCentrallyMaintained='Y'
;

-- 5/08/2013 02:42:38 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_PrintFormatItem SET PrintName='Withholding Combination', Name='Withholding Combination' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=56058)
;

-- 5/08/2013 02:42:49 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET Name='Combinación de Retención',PrintName='Combinación de Retención',Updated=TO_TIMESTAMP('2013-08-05 02:42:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56058 AND AD_Language='es_MX'
;

