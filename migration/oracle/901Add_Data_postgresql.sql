-- Mar 20, 2013 6:07:19 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE CUST_RetentionType SET AD_Process_ID=3000002,Updated=TO_DATE('2013-03-20 18:07:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE CUST_RetentionType_ID=1000000
;

-- Mar 20, 2013 6:07:42 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE CUST_RetentionType SET AD_Process_ID=3000001,Updated=TO_DATE('2013-03-20 18:07:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE CUST_RetentionType_ID=1000001
;

-- Mar 20, 2013 6:07:54 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE CUST_RetentionType SET AD_Process_ID=3000001,Updated=TO_DATE('2013-03-20 18:07:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE CUST_RetentionType_ID=1000002
;

-- Mar 20, 2013 6:08:25 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE CUST_CR_PT_Combination SET CUST_RetentionConfig_ID=1000010,Updated=TO_DATE('2013-03-20 18:08:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE CUST_CR_PT_Combination_ID=1000038
;

-- Mar 20, 2013 7:13:13 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM CUST_RetentionRelation WHERE CUST_RetentionRelation_ID=1000022
;

-- Mar 20, 2013 7:13:13 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE CUST_RetentionRelation SET C_BP_Group_ID = NULL, C_BPartner_ID = NULL WHERE C_DocType_ID IS NOT NULL;
