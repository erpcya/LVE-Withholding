-- 2/08/2013 12:18:35 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element SET ColumnName='DocAffected_ID',Updated=TO_DATE('2013-08-02 12:18:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56067
;

-- 2/08/2013 12:18:35 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET ColumnName='DocAffected_ID', Name='Doc Affected', Description=NULL, Help=NULL WHERE AD_Element_ID=56067
;

-- 2/08/2013 12:18:35 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET ColumnName='DocAffected_ID', Name='Doc Affected', Description=NULL, Help=NULL, AD_Element_ID=56067 WHERE UPPER(ColumnName)='DOCAFFECTED_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 2/08/2013 12:18:35 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET ColumnName='DocAffected_ID', Name='Doc Affected', Description=NULL, Help=NULL WHERE AD_Element_ID=56067 AND IsCentrallyMaintained='Y'
;

-- 2/08/2013 12:18:56 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET Name='Doc. Afectado',PrintName='Doc. Afectado',Updated=TO_DATE('2013-08-02 12:18:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56067 AND AD_Language='es_MX'
;