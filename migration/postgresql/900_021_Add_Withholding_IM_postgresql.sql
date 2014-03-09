-- 27/08/2013 05:30:32 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LVE_Withholding SET AD_Table_ID=53570,Updated=TO_TIMESTAMP('2013-08-27 17:30:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LVE_Withholding_ID=1000004
;

-- 27/08/2013 05:53:45 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET IsKey='Y', IsMandatory='Y', IsUpdateable='N',Updated=TO_TIMESTAMP('2013-08-27 17:53:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67091
;

-- 27/08/2013 05:53:52 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET IsKey='Y', IsMandatory='Y', IsUpdateable='N',Updated=TO_TIMESTAMP('2013-08-27 17:53:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67089
;

-- 27/08/2013 05:54:01 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET IsKey='Y', IsMandatory='Y', IsUpdateable='N',Updated=TO_TIMESTAMP('2013-08-27 17:54:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67090
;

-- 27/08/2013 05:54:07 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET IsKey='Y', IsMandatory='Y', IsUpdateable='N',Updated=TO_TIMESTAMP('2013-08-27 17:54:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=67092
;

-- 27/08/2013 06:03:23 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM LVE_WH_Combination WHERE LVE_WH_Combination_ID=1000004
;

-- 27/08/2013 06:04:00 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Combination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,IsManual,LVE_PersonType_ID,LVE_WH_Combination_ID,LVE_WH_Concept_ID,Processing,TaxBaseRate,Updated,UpdatedBy,Value) VALUES (11,0,5.000000000000,TO_TIMESTAMP('2013-08-27 18:04:00','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',1000002,1000106,1000005,'N',100,TO_TIMESTAMP('2013-08-27 18:04:00','YYYY-MM-DD HH24:MI:SS'),100,'016')
;

-- 27/08/2013 06:04:44 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Combination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,IsManual,LVE_PersonType_ID,LVE_WH_Combination_ID,LVE_WH_Concept_ID,Processing,TaxBaseRate,Updated,UpdatedBy,Value) VALUES (11,0,3.000000000000,TO_TIMESTAMP('2013-08-27 18:04:44','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',1000000,1000107,1000005,'N',100,TO_TIMESTAMP('2013-08-27 18:04:44','YYYY-MM-DD HH24:MI:SS'),100,'014')
;

-- 27/08/2013 06:06:39 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Config (AD_Client_ID,AD_Org_ID,AD_Rule_ID,Created,CreatedBy,IsActive,LVE_TaxUnit_ID,LVE_WH_Combination_ID,LVE_WH_Config_ID,LVE_Withholding_ID,MaxValue,MinValue,Subtrahend,Updated,UpdatedBy) VALUES (11,50001,50017,TO_TIMESTAMP('2013-08-27 18:06:39','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000001,1000107,1000096,1000000,0,8916.67,267.50,TO_TIMESTAMP('2013-08-27 18:06:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/08/2013 06:07:01 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LVE_WH_Config SET Subtrahend=89.170000000000,Updated=TO_TIMESTAMP('2013-08-27 18:07:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LVE_WH_Config_ID=1000096
;

-- 27/08/2013 06:07:17 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LVE_WH_Config SET MinValue=8916.670000000000,Updated=TO_TIMESTAMP('2013-08-27 18:07:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LVE_WH_Config_ID=1000096
;

-- 27/08/2013 06:07:54 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM LVE_WH_Combination WHERE LVE_WH_Combination_ID=1000053
;

-- 27/08/2013 06:08:25 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Combination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,IsManual,LVE_PersonType_ID,LVE_WH_Combination_ID,LVE_WH_Concept_ID,Processing,TaxBaseRate,Updated,UpdatedBy,Value) VALUES (11,0,4.950000000000,TO_TIMESTAMP('2013-08-27 18:08:25','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',1000003,1000108,1000008,'N',100,TO_TIMESTAMP('2013-08-27 18:08:25','YYYY-MM-DD HH24:MI:SS'),100,'024')
;

