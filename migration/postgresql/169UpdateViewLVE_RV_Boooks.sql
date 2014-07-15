-- Jul 10, 2014 11:10:44 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET ColumnSQL='(CASE WHEN  LVE_RV_Books.DocTypeDeclare = ''03'' THEN LVE_RV_Books.DocumentNO ELSE null END)',Updated=TO_TIMESTAMP('2014-07-10 11:10:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67298
;

-- Jul 10, 2014 11:10:52 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET ColumnSQL='(CASE WHEN  LVE_RV_Books.DocTypeDeclare = ''02'' THEN LVE_RV_Books.DocumentNO ELSE null END)',Updated=TO_TIMESTAMP('2014-07-10 11:10:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67299
;

-- Jul 10, 2014 11:11:05 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET ColumnSQL='(CASE  WHEN  LVE_RV_Books.DocTypeDeclare = ''02'' OR LVE_RV_Books.DocTypeDeclare = ''03'' THEN (SELECT C_Invoice.DocumentNo FROM C_Invoice WHERE LVE_RV_Books.DocAffected_ID = C_Invoice.C_Invoice_ID) ELSE null END)',Updated=TO_TIMESTAMP('2014-07-10 11:11:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67300
;

-- Jul 10, 2014 11:11:13 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET ColumnSQL='(CASE  WHEN  LVE_RV_Books.DocTypeDeclare = ''01''  THEN LVE_RV_Books.DocumentNO ELSE null END)',Updated=TO_TIMESTAMP('2014-07-10 11:11:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67301
;

-- Jul 10, 2014 11:14:20 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_ReportView SET WhereClause='LVE_RV_Books.IsSOTrx = ''N''',Updated=TO_TIMESTAMP('2014-07-10 11:14:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ReportView_ID=53063
;

