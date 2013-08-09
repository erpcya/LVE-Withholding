-- Aug 8, 2013 11:08:47 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LVE_PersonType SET Value='N',Updated=TO_DATE('2013-08-08 11:08:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LVE_PersonType_ID=1000000
;

-- Aug 8, 2013 11:08:51 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LVE_PersonType SET Value='N',Updated=TO_DATE('2013-08-08 11:08:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LVE_PersonType_ID=1000001
;

-- Aug 8, 2013 11:08:54 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LVE_PersonType SET Value='J',Updated=TO_DATE('2013-08-08 11:08:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LVE_PersonType_ID=1000002
;

-- Aug 8, 2013 11:08:58 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LVE_PersonType SET Value='J',Updated=TO_DATE('2013-08-08 11:08:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LVE_PersonType_ID=1000003
;

-- Aug 8, 2013 11:10:32 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LVE_Withholding SET Name='RETENCIÓN I.V.A.',Updated=TO_DATE('2013-08-08 11:10:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LVE_Withholding_ID=1000001
;

-- Aug 8, 2013 11:11:36 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Concept (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,IsActive,LVE_WH_Concept_ID,LVE_Withholding_ID,Name,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-08 11:11:36','YYYY-MM-DD HH24:MI:SS'),100,'IVA 100','Y',1000017,1000001,'IVA 100',TO_DATE('2013-08-08 11:11:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:12:04 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Combination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,LVE_WH_Combination_ID,LVE_WH_Concept_ID,Processing,Updated,UpdatedBy,Value) VALUES (11,50001,100.000000000000,TO_DATE('2013-08-08 11:12:04','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000039,1000017,'N',TO_DATE('2013-08-08 11:12:04','YYYY-MM-DD HH24:MI:SS'),100,'IVA100')
;

-- Aug 8, 2013 11:12:44 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM LVE_WH_Combination WHERE LVE_WH_Combination_ID=1000037
;

-- Aug 8, 2013 11:12:49 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM LVE_WH_Concept WHERE LVE_WH_Concept_ID=1000015
;

-- Aug 8, 2013 11:12:55 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM LVE_Withholding WHERE LVE_Withholding_ID=1000002
;

-- Aug 8, 2013 11:13:14 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Config (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_TaxUnit_ID,LVE_WH_Combination_ID,LVE_WH_Config_ID,MinimalAmt,Subtrahend,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-08 11:13:14','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000038,1000000,0.00,0.00,TO_DATE('2013-08-08 11:13:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:13:37 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Config (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_TaxUnit_ID,LVE_WH_Combination_ID,LVE_WH_Config_ID,MinimalAmt,Subtrahend,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-08 11:13:37','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000039,1000001,0.00,0.00,TO_DATE('2013-08-08 11:13:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:13:53 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Config (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_TaxUnit_ID,LVE_WH_Combination_ID,LVE_WH_Config_ID,MinimalAmt,Subtrahend,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-08 11:13:53','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000000,1000002,8916.67,267.50,TO_DATE('2013-08-08 11:13:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:13:57 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Config (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_TaxUnit_ID,LVE_WH_Combination_ID,LVE_WH_Config_ID,MinimalAmt,Subtrahend,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-08 11:13:57','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000001,1000003,8916.67,445.83,TO_DATE('2013-08-08 11:13:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:14:01 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Config (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_TaxUnit_ID,LVE_WH_Combination_ID,LVE_WH_Config_ID,MinimalAmt,Subtrahend,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-08 11:14:01','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000002,1000004,8916.67,445.83,TO_DATE('2013-08-08 11:14:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:14:04 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Config (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_TaxUnit_ID,LVE_WH_Combination_ID,LVE_WH_Config_ID,MinimalAmt,Subtrahend,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-08 11:14:04','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000003,1000005,8916.67,3031.67,TO_DATE('2013-08-08 11:14:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:14:11 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Config (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_TaxUnit_ID,LVE_WH_Combination_ID,LVE_WH_Config_ID,MinimalAmt,Subtrahend,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-08 11:14:11','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000004,1000006,8916.67,267.50,TO_DATE('2013-08-08 11:14:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:14:16 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Config (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_TaxUnit_ID,LVE_WH_Combination_ID,LVE_WH_Config_ID,MinimalAmt,Subtrahend,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-08 11:14:16','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000005,1000007,8916.67,445.83,TO_DATE('2013-08-08 11:14:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:14:19 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Config (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_TaxUnit_ID,LVE_WH_Combination_ID,LVE_WH_Config_ID,MinimalAmt,Subtrahend,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-08 11:14:19','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000006,1000008,8916.67,3031.67,TO_DATE('2013-08-08 11:14:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:14:26 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Config (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_TaxUnit_ID,LVE_WH_Combination_ID,LVE_WH_Config_ID,MinimalAmt,Subtrahend,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-08 11:14:26','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000007,1000009,8916.67,267.50,TO_DATE('2013-08-08 11:14:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:14:29 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Config (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_TaxUnit_ID,LVE_WH_Combination_ID,LVE_WH_Config_ID,MinimalAmt,Subtrahend,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-08 11:14:29','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000008,1000010,8916.67,445.83,TO_DATE('2013-08-08 11:14:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:14:32 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Config (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_TaxUnit_ID,LVE_WH_Combination_ID,LVE_WH_Config_ID,MinimalAmt,Subtrahend,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-08 11:14:32','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000009,1000011,8916.67,445.83,TO_DATE('2013-08-08 11:14:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:14:35 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Config (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_TaxUnit_ID,LVE_WH_Combination_ID,LVE_WH_Config_ID,MinimalAmt,Subtrahend,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-08 11:14:35','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000010,1000012,8916.67,3031.67,TO_DATE('2013-08-08 11:14:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:14:42 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Config (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_TaxUnit_ID,LVE_WH_Combination_ID,LVE_WH_Config_ID,MinimalAmt,Subtrahend,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-08 11:14:42','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000011,1000013,8916.67,3031.67,TO_DATE('2013-08-08 11:14:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:14:48 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Config (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_TaxUnit_ID,LVE_WH_Combination_ID,LVE_WH_Config_ID,MinimalAmt,Subtrahend,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-08 11:14:48','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000012,1000014,8916.67,267.50,TO_DATE('2013-08-08 11:14:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:14:52 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Config (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_TaxUnit_ID,LVE_WH_Combination_ID,LVE_WH_Config_ID,MinimalAmt,Subtrahend,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-08 11:14:52','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000013,1000015,8916.67,445.83,TO_DATE('2013-08-08 11:14:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:14:55 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Config (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_TaxUnit_ID,LVE_WH_Combination_ID,LVE_WH_Config_ID,MinimalAmt,Subtrahend,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-08 11:14:55','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000014,1000016,8916.67,445.83,TO_DATE('2013-08-08 11:14:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:14:58 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Config (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_TaxUnit_ID,LVE_WH_Combination_ID,LVE_WH_Config_ID,MinimalAmt,Subtrahend,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-08 11:14:58','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000015,1000017,8916.67,3031.67,TO_DATE('2013-08-08 11:14:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:15:05 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Config (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_TaxUnit_ID,LVE_WH_Combination_ID,LVE_WH_Config_ID,MinimalAmt,Subtrahend,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-08 11:15:05','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000016,1000018,8916.67,89.17,TO_DATE('2013-08-08 11:15:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:15:08 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Config (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_TaxUnit_ID,LVE_WH_Combination_ID,LVE_WH_Config_ID,MinimalAmt,Subtrahend,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-08 11:15:08','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000017,1000019,8916.67,178.33,TO_DATE('2013-08-08 11:15:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:15:14 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Config (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_TaxUnit_ID,LVE_WH_Combination_ID,LVE_WH_Config_ID,MinimalAmt,Subtrahend,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-08 11:15:14','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000018,1000020,8916.67,267.50,TO_DATE('2013-08-08 11:15:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:15:17 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Config (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_TaxUnit_ID,LVE_WH_Combination_ID,LVE_WH_Config_ID,MinimalAmt,Subtrahend,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-08 11:15:17','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000019,1000021,8916.67,445.83,TO_DATE('2013-08-08 11:15:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:15:23 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Config (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_TaxUnit_ID,LVE_WH_Combination_ID,LVE_WH_Config_ID,MinimalAmt,Subtrahend,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-08 11:15:23','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000020,1000022,8916.67,89.17,TO_DATE('2013-08-08 11:15:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:15:27 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Config (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_TaxUnit_ID,LVE_WH_Combination_ID,LVE_WH_Config_ID,MinimalAmt,Subtrahend,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-08 11:15:27','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000021,1000023,8916.67,267.50,TO_DATE('2013-08-08 11:15:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:15:30 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Config (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_TaxUnit_ID,LVE_WH_Combination_ID,LVE_WH_Config_ID,MinimalAmt,Subtrahend,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-08 11:15:30','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000022,1000024,8916.67,3031.67,TO_DATE('2013-08-08 11:15:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:15:36 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Config (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_TaxUnit_ID,LVE_WH_Combination_ID,LVE_WH_Config_ID,MinimalAmt,Subtrahend,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-08 11:15:36','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000023,1000025,8916.67,267.50,TO_DATE('2013-08-08 11:15:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:15:40 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Config (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_TaxUnit_ID,LVE_WH_Combination_ID,LVE_WH_Config_ID,MinimalAmt,Subtrahend,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-08 11:15:40','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000024,1000026,8916.67,445.83,TO_DATE('2013-08-08 11:15:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:15:43 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Config (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_TaxUnit_ID,LVE_WH_Combination_ID,LVE_WH_Config_ID,MinimalAmt,Subtrahend,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-08 11:15:43','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000025,1000027,8916.67,3031.67,TO_DATE('2013-08-08 11:15:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:15:50 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Config (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_TaxUnit_ID,LVE_WH_Combination_ID,LVE_WH_Config_ID,MinimalAmt,Subtrahend,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-08 11:15:50','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000026,1000028,8916.67,267.50,TO_DATE('2013-08-08 11:15:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:15:54 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Config (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_TaxUnit_ID,LVE_WH_Combination_ID,LVE_WH_Config_ID,MinimalAmt,Subtrahend,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-08 11:15:54','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000027,1000029,8916.67,445.83,TO_DATE('2013-08-08 11:15:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:15:58 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Config (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_TaxUnit_ID,LVE_WH_Combination_ID,LVE_WH_Config_ID,MinimalAmt,Subtrahend,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-08 11:15:58','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000028,1000030,8916.67,3031.67,TO_DATE('2013-08-08 11:15:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:16:01 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Config (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_TaxUnit_ID,LVE_WH_Combination_ID,LVE_WH_Config_ID,MinimalAmt,Subtrahend,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-08 11:16:01','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000029,1000031,8916.67,44137.52,TO_DATE('2013-08-08 11:16:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:16:08 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Config (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_TaxUnit_ID,LVE_WH_Combination_ID,LVE_WH_Config_ID,MinimalAmt,Subtrahend,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-08 11:16:08','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000030,1000032,8916.67,445.83,TO_DATE('2013-08-08 11:16:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:16:13 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Config (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_TaxUnit_ID,LVE_WH_Combination_ID,LVE_WH_Config_ID,MinimalAmt,Subtrahend,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-08 11:16:13','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000031,1000033,8916.67,445.83,TO_DATE('2013-08-08 11:16:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:16:16 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Config (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_TaxUnit_ID,LVE_WH_Combination_ID,LVE_WH_Config_ID,MinimalAmt,Subtrahend,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-08 11:16:16','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000032,1000034,8916.67,267.50,TO_DATE('2013-08-08 11:16:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:16:23 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Config (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_TaxUnit_ID,LVE_WH_Combination_ID,LVE_WH_Config_ID,MinimalAmt,Subtrahend,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-08 11:16:23','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000033,1000035,8916.67,3031.67,TO_DATE('2013-08-08 11:16:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:16:29 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Config (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_TaxUnit_ID,LVE_WH_Combination_ID,LVE_WH_Config_ID,MinimalAmt,Subtrahend,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-08 11:16:29','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000034,1000036,8916.67,3031.67,TO_DATE('2013-08-08 11:16:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:16:35 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Config (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_TaxUnit_ID,LVE_WH_Combination_ID,LVE_WH_Config_ID,MinimalAmt,Subtrahend,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-08 11:16:35','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000035,1000037,8916.67,267.50,TO_DATE('2013-08-08 11:16:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:16:41 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Config (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_TaxUnit_ID,LVE_WH_Combination_ID,LVE_WH_Config_ID,MinimalAmt,Subtrahend,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-08 11:16:41','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000036,1000038,8916.67,267.50,TO_DATE('2013-08-08 11:16:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:20:33 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BP_Group_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WH_Relation_ID,Updated,UpdatedBy) VALUES (11,11,105,TO_DATE('2013-08-08 11:20:33','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000001,1000001,TO_DATE('2013-08-08 11:20:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:20:43 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BP_Group_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WH_Relation_ID,Updated,UpdatedBy) VALUES (11,0,103,TO_DATE('2013-08-08 11:20:43','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000002,TO_DATE('2013-08-08 11:20:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:20:47 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BP_Group_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WH_Relation_ID,Updated,UpdatedBy) VALUES (11,0,103,TO_DATE('2013-08-08 11:20:47','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000001,1000003,TO_DATE('2013-08-08 11:20:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:20:57 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BP_Group_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WH_Relation_ID,Updated,UpdatedBy) VALUES (11,11,104,TO_DATE('2013-08-08 11:20:57','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000004,TO_DATE('2013-08-08 11:20:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:21:01 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BP_Group_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WH_Relation_ID,Updated,UpdatedBy) VALUES (11,11,104,TO_DATE('2013-08-08 11:21:01','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000001,1000005,TO_DATE('2013-08-08 11:21:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:21:10 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM LVE_WH_Relation WHERE EXISTS(SELECT 1 				FROM C_BPartner cp 				INNER JOIN LVE_WH_Relation whr ON(whr.C_BPartner_ID = cp.C_BPartner_ID) 				WHERE LVE_WH_Relation.LVE_WH_Relation_ID = whr.LVE_WH_Relation_ID 				AND cp.C_BP_Group_ID = 105)
;

-- Aug 8, 2013 11:21:10 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BPartner_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WH_Relation_ID,Updated,UpdatedBy) VALUES (11,50001,119,TO_DATE('2013-08-08 11:21:10','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000001,1000008,TO_DATE('2013-08-08 11:21:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:21:10 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BPartner_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WH_Relation_ID,Updated,UpdatedBy) VALUES (11,50001,113,TO_DATE('2013-08-08 11:21:10','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000009,TO_DATE('2013-08-08 11:21:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:21:10 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BPartner_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WH_Relation_ID,Updated,UpdatedBy) VALUES (11,50001,113,TO_DATE('2013-08-08 11:21:10','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000001,1000010,TO_DATE('2013-08-08 11:21:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:21:10 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BPartner_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WH_Relation_ID,Updated,UpdatedBy) VALUES (11,50001,50005,TO_DATE('2013-08-08 11:21:10','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000011,TO_DATE('2013-08-08 11:21:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:21:10 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BPartner_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WH_Relation_ID,Updated,UpdatedBy) VALUES (11,50001,50005,TO_DATE('2013-08-08 11:21:10','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000001,1000012,TO_DATE('2013-08-08 11:21:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:21:10 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BPartner_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WH_Relation_ID,Updated,UpdatedBy) VALUES (11,50001,50004,TO_DATE('2013-08-08 11:21:10','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000013,TO_DATE('2013-08-08 11:21:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:21:10 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BPartner_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WH_Relation_ID,Updated,UpdatedBy) VALUES (11,50001,50004,TO_DATE('2013-08-08 11:21:10','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000001,1000014,TO_DATE('2013-08-08 11:21:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:21:10 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BPartner_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WH_Relation_ID,Updated,UpdatedBy) VALUES (11,50001,50007,TO_DATE('2013-08-08 11:21:10','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000015,TO_DATE('2013-08-08 11:21:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:21:10 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BPartner_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WH_Relation_ID,Updated,UpdatedBy) VALUES (11,50001,50007,TO_DATE('2013-08-08 11:21:10','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000001,1000016,TO_DATE('2013-08-08 11:21:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:21:10 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BPartner_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WH_Relation_ID,Updated,UpdatedBy) VALUES (11,50001,50008,TO_DATE('2013-08-08 11:21:10','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000017,TO_DATE('2013-08-08 11:21:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:21:10 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BPartner_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WH_Relation_ID,Updated,UpdatedBy) VALUES (11,50001,50008,TO_DATE('2013-08-08 11:21:10','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000001,1000018,TO_DATE('2013-08-08 11:21:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:21:10 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BPartner_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WH_Relation_ID,Updated,UpdatedBy) VALUES (11,50001,50009,TO_DATE('2013-08-08 11:21:10','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000019,TO_DATE('2013-08-08 11:21:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:21:10 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BPartner_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WH_Relation_ID,Updated,UpdatedBy) VALUES (11,50001,50009,TO_DATE('2013-08-08 11:21:10','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000001,1000020,TO_DATE('2013-08-08 11:21:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:21:16 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM LVE_WH_Relation WHERE EXISTS(SELECT 1 				FROM C_BPartner cp 				INNER JOIN LVE_WH_Relation whr ON(whr.C_BPartner_ID = cp.C_BPartner_ID) 				WHERE LVE_WH_Relation.LVE_WH_Relation_ID = whr.LVE_WH_Relation_ID 				AND cp.C_BP_Group_ID = 105)
;

-- Aug 8, 2013 11:21:16 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BPartner_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WH_Relation_ID,Updated,UpdatedBy) VALUES (11,50001,119,TO_DATE('2013-08-08 11:21:16','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000021,TO_DATE('2013-08-08 11:21:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:21:16 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BPartner_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WH_Relation_ID,Updated,UpdatedBy) VALUES (11,50001,119,TO_DATE('2013-08-08 11:21:16','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000001,1000022,TO_DATE('2013-08-08 11:21:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:21:16 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BPartner_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WH_Relation_ID,Updated,UpdatedBy) VALUES (11,50001,113,TO_DATE('2013-08-08 11:21:16','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000023,TO_DATE('2013-08-08 11:21:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:21:16 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BPartner_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WH_Relation_ID,Updated,UpdatedBy) VALUES (11,50001,113,TO_DATE('2013-08-08 11:21:16','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000001,1000024,TO_DATE('2013-08-08 11:21:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:21:16 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BPartner_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WH_Relation_ID,Updated,UpdatedBy) VALUES (11,50001,50005,TO_DATE('2013-08-08 11:21:16','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000025,TO_DATE('2013-08-08 11:21:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:21:16 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BPartner_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WH_Relation_ID,Updated,UpdatedBy) VALUES (11,50001,50005,TO_DATE('2013-08-08 11:21:16','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000001,1000026,TO_DATE('2013-08-08 11:21:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:21:16 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BPartner_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WH_Relation_ID,Updated,UpdatedBy) VALUES (11,50001,50004,TO_DATE('2013-08-08 11:21:16','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000027,TO_DATE('2013-08-08 11:21:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:21:16 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BPartner_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WH_Relation_ID,Updated,UpdatedBy) VALUES (11,50001,50004,TO_DATE('2013-08-08 11:21:16','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000001,1000028,TO_DATE('2013-08-08 11:21:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:21:16 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BPartner_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WH_Relation_ID,Updated,UpdatedBy) VALUES (11,50001,50007,TO_DATE('2013-08-08 11:21:16','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000029,TO_DATE('2013-08-08 11:21:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:21:16 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BPartner_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WH_Relation_ID,Updated,UpdatedBy) VALUES (11,50001,50007,TO_DATE('2013-08-08 11:21:16','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000001,1000030,TO_DATE('2013-08-08 11:21:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:21:16 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BPartner_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WH_Relation_ID,Updated,UpdatedBy) VALUES (11,50001,50008,TO_DATE('2013-08-08 11:21:16','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000031,TO_DATE('2013-08-08 11:21:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:21:16 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BPartner_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WH_Relation_ID,Updated,UpdatedBy) VALUES (11,50001,50008,TO_DATE('2013-08-08 11:21:16','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000001,1000032,TO_DATE('2013-08-08 11:21:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:21:16 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BPartner_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WH_Relation_ID,Updated,UpdatedBy) VALUES (11,50001,50009,TO_DATE('2013-08-08 11:21:16','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000033,TO_DATE('2013-08-08 11:21:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:21:16 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BPartner_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WH_Relation_ID,Updated,UpdatedBy) VALUES (11,50001,50009,TO_DATE('2013-08-08 11:21:16','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000001,1000034,TO_DATE('2013-08-08 11:21:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:21:20 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM LVE_WH_Relation WHERE EXISTS(SELECT 1 				FROM C_BPartner cp 				INNER JOIN LVE_WH_Relation whr ON(whr.C_BPartner_ID = cp.C_BPartner_ID) 				WHERE LVE_WH_Relation.LVE_WH_Relation_ID = whr.LVE_WH_Relation_ID 				AND cp.C_BP_Group_ID = 103)
;

-- Aug 8, 2013 11:21:20 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BPartner_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WH_Relation_ID,Updated,UpdatedBy) VALUES (11,50001,118,TO_DATE('2013-08-08 11:21:20','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000035,TO_DATE('2013-08-08 11:21:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:21:20 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BPartner_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WH_Relation_ID,Updated,UpdatedBy) VALUES (11,50001,118,TO_DATE('2013-08-08 11:21:20','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000001,1000036,TO_DATE('2013-08-08 11:21:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:21:20 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BPartner_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WH_Relation_ID,Updated,UpdatedBy) VALUES (11,50001,112,TO_DATE('2013-08-08 11:21:20','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000037,TO_DATE('2013-08-08 11:21:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:21:20 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BPartner_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WH_Relation_ID,Updated,UpdatedBy) VALUES (11,50001,112,TO_DATE('2013-08-08 11:21:20','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000001,1000038,TO_DATE('2013-08-08 11:21:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:21:20 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BPartner_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WH_Relation_ID,Updated,UpdatedBy) VALUES (11,50001,117,TO_DATE('2013-08-08 11:21:20','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000039,TO_DATE('2013-08-08 11:21:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:21:20 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BPartner_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WH_Relation_ID,Updated,UpdatedBy) VALUES (11,50001,117,TO_DATE('2013-08-08 11:21:20','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000001,1000040,TO_DATE('2013-08-08 11:21:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:21:24 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM LVE_WH_Relation WHERE EXISTS(SELECT 1 				FROM C_BPartner cp 				INNER JOIN LVE_WH_Relation whr ON(whr.C_BPartner_ID = cp.C_BPartner_ID) 				WHERE LVE_WH_Relation.LVE_WH_Relation_ID = whr.LVE_WH_Relation_ID 				AND cp.C_BP_Group_ID = 104)
;

-- Aug 8, 2013 11:21:24 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BPartner_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WH_Relation_ID,Updated,UpdatedBy) VALUES (11,50001,120,TO_DATE('2013-08-08 11:21:24','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000041,TO_DATE('2013-08-08 11:21:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:21:24 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BPartner_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WH_Relation_ID,Updated,UpdatedBy) VALUES (11,50001,120,TO_DATE('2013-08-08 11:21:24','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000001,1000042,TO_DATE('2013-08-08 11:21:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:21:24 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BPartner_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WH_Relation_ID,Updated,UpdatedBy) VALUES (11,50001,114,TO_DATE('2013-08-08 11:21:24','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000043,TO_DATE('2013-08-08 11:21:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:21:24 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BPartner_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WH_Relation_ID,Updated,UpdatedBy) VALUES (11,50001,114,TO_DATE('2013-08-08 11:21:24','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000001,1000044,TO_DATE('2013-08-08 11:21:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:21:25 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BPartner_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WH_Relation_ID,Updated,UpdatedBy) VALUES (11,50001,121,TO_DATE('2013-08-08 11:21:24','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000045,TO_DATE('2013-08-08 11:21:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:21:25 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BPartner_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WH_Relation_ID,Updated,UpdatedBy) VALUES (11,50001,121,TO_DATE('2013-08-08 11:21:25','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000001,1000046,TO_DATE('2013-08-08 11:21:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:21:25 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BPartner_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WH_Relation_ID,Updated,UpdatedBy) VALUES (11,50001,50000,TO_DATE('2013-08-08 11:21:25','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000047,TO_DATE('2013-08-08 11:21:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:21:25 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BPartner_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WH_Relation_ID,Updated,UpdatedBy) VALUES (11,50001,50000,TO_DATE('2013-08-08 11:21:25','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000001,1000048,TO_DATE('2013-08-08 11:21:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:21:25 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BPartner_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WH_Relation_ID,Updated,UpdatedBy) VALUES (11,50001,50001,TO_DATE('2013-08-08 11:21:25','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000049,TO_DATE('2013-08-08 11:21:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:21:25 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BPartner_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WH_Relation_ID,Updated,UpdatedBy) VALUES (11,50001,50001,TO_DATE('2013-08-08 11:21:25','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000001,1000050,TO_DATE('2013-08-08 11:21:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:21:25 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BPartner_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WH_Relation_ID,Updated,UpdatedBy) VALUES (11,50001,50002,TO_DATE('2013-08-08 11:21:25','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000051,TO_DATE('2013-08-08 11:21:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:21:25 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BPartner_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WH_Relation_ID,Updated,UpdatedBy) VALUES (11,50001,50002,TO_DATE('2013-08-08 11:21:25','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000001,1000052,TO_DATE('2013-08-08 11:21:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:21:25 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BPartner_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WH_Relation_ID,Updated,UpdatedBy) VALUES (11,50001,50003,TO_DATE('2013-08-08 11:21:25','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000053,TO_DATE('2013-08-08 11:21:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:21:25 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BPartner_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WH_Relation_ID,Updated,UpdatedBy) VALUES (11,50001,50003,TO_DATE('2013-08-08 11:21:25','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000001,1000054,TO_DATE('2013-08-08 11:21:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:21:37 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_TreeBar (AD_Tree_ID,AD_User_ID,Node_ID, AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy)VALUES (10,100,206,11,50001,'Y',SysDate,100,SysDate,100)
;

-- Aug 8, 2013 11:22:32 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE C_BPartner SET LVE_PersonType_ID=1000002,Updated=TO_DATE('2013-08-08 11:22:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_BPartner_ID=50003
;

-- Aug 8, 2013 11:22:55 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO C_Location (AD_Client_ID,Address1,Address2,Address3,Address4,AD_Org_ID,C_Country_ID,City,C_Location_ID,Created,CreatedBy,C_Region_ID,IsActive,Postal,Postal_Add,RegionName,Updated,UpdatedBy) VALUES (11,NULL,NULL,NULL,NULL,0,100,'Test',1000000,TO_DATE('2013-08-08 11:22:45','YYYY-MM-DD HH24:MI:SS'),100,142,'Y',NULL,NULL,'OR',TO_DATE('2013-08-08 11:22:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 11:22:57 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO C_BPartner_Location (AD_Client_ID,AD_Org_ID,C_BPartner_ID,C_BPartner_Location_ID,C_Location_ID,Created,CreatedBy,IsActive,IsBillTo,IsPayFrom,IsRemitTo,IsShipTo,Name,Updated,UpdatedBy) VALUES (11,0,50003,1000000,1000000,TO_DATE('2013-08-08 11:22:57','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','Y','Y','Y','Test',TO_DATE('2013-08-08 11:22:57','YYYY-MM-DD HH24:MI:SS'),100)
;

