-- 31/07/2013 10:01:43 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO C_Charge (AD_Client_ID,AD_Org_ID,C_Charge_ID,C_TaxCategory_ID,ChargeAmt,Created,CreatedBy,IsActive,IsSameCurrency,IsSameTax,IsTaxIncluded,Name,Updated,UpdatedBy) VALUES (11,50001,1000000,107,1.000000000000,TO_DATE('2013-07-31 10:01:43','YYYY-MM-DD HH24:MI:SS'),100,'Y','N','N','N','Retención I.S.L.R.',TO_DATE('2013-07-31 10:01:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 31/07/2013 10:01:43 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO C_Charge_Trl (AD_Language,C_Charge_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_Charge_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_Charge t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_Charge_ID=1000000 AND NOT EXISTS (SELECT * FROM C_Charge_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_Charge_ID=t.C_Charge_ID)
;

-- 31/07/2013 10:01:43 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO C_Charge_Acct (C_Charge_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,Ch_Expense_Acct,Ch_Revenue_Acct) SELECT 1000000, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', SysDate,100,SysDate,100,p.Ch_Expense_Acct,p.Ch_Revenue_Acct FROM C_AcctSchema_Default p WHERE p.AD_Client_ID=11 AND NOT EXISTS (SELECT * FROM C_Charge_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.C_Charge_ID=1000000)
;

-- 31/07/2013 10:02:53 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_Withholding (AD_Client_ID,AD_Org_ID,Beneficiary,C_Charge_ID,Created,CreatedBy,DeclarationDocType,IsActive,IsSOTrx,LVE_Withholding_ID,LVE_WithholdingType_ID,Name,TaxUnitRate,Updated,UpdatedBy,WithholdingDocType) VALUES (11,50001,117,1000000,TO_DATE('2013-07-31 10:02:53','YYYY-MM-DD HH24:MI:SS'),100,124,'Y','N',1000000,1000001,'Retención I.S.L.R.',0,TO_DATE('2013-07-31 10:02:53','YYYY-MM-DD HH24:MI:SS'),100,124)
;

-- 31/07/2013 10:03:04 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WithholdingRelation (AD_Client_ID,AD_Org_ID,C_BP_Group_ID,C_BPartner_ID,C_DocType_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WithholdingRelation_ID,Updated,UpdatedBy) VALUES (11,50001,0,0,124,TO_DATE('2013-07-31 10:03:04','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000000,TO_DATE('2013-07-31 10:03:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 31/07/2013 10:03:07 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WithholdingRelation (AD_Client_ID,AD_Org_ID,C_BP_Group_ID,C_BPartner_ID,C_DocType_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WithholdingRelation_ID,Updated,UpdatedBy) VALUES (11,50001,0,0,123,TO_DATE('2013-07-31 10:03:07','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000001,TO_DATE('2013-07-31 10:03:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 31/07/2013 10:03:43 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WithholdingConcept (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,IsActive,LVE_Withholding_ID,LVE_WithholdingConcept_ID,Name,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-07-31 10:03:43','YYYY-MM-DD HH24:MI:SS'),100,'Gastos de Transporte Constituidos por Fletes','Y',1000000,1000000,'Gastos de Transporte Constituidos por Fletes',TO_DATE('2013-07-31 10:03:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 31/07/2013 10:03:49 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WithholdingConcept (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,IsActive,LVE_Withholding_ID,LVE_WithholdingConcept_ID,Name,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-07-31 10:03:49','YYYY-MM-DD HH24:MI:SS'),100,'Arrendamiento de Bienes Inmuebles A (Artc9/Nun.12)','Y',1000000,1000001,'Arrendamiento de Bienes Inmuebles A (Artc9/Nun.12)',TO_DATE('2013-07-31 10:03:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 31/07/2013 10:04:05 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WithholdingConcept (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,IsActive,LVE_Withholding_ID,LVE_WithholdingConcept_ID,Name,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-07-31 10:04:05','YYYY-MM-DD HH24:MI:SS'),100,'Arrendamiento de Bienes Muebles A (Artc9/Nun.13)','Y',1000000,1000002,'Arrendamiento de Bienes Muebles A (Artc9/Nun.13)',TO_DATE('2013-07-31 10:04:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 31/07/2013 10:04:20 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WC_ProductCharge (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_WC_ProductCharge_ID,LVE_WithholdingConcept_ID,M_Product_ID,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-07-31 10:04:20','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000002,134,TO_DATE('2013-07-31 10:04:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 31/07/2013 10:04:27 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WC_ProductCharge (AD_Client_ID,AD_Org_ID,C_Charge_ID,Created,CreatedBy,IsActive,LVE_WC_ProductCharge_ID,LVE_WithholdingConcept_ID,Updated,UpdatedBy) VALUES (11,50001,1000000,TO_DATE('2013-07-31 10:04:27','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000001,1000002,TO_DATE('2013-07-31 10:04:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 31/07/2013 10:04:38 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (11,0,1000000,TO_DATE('2013-07-31 10:04:38','YYYY-MM-DD HH24:MI:SS'),100,1000001,50000,'DocumentNo/Value for Table LVE_WH_Conbination',1,'Y','N','Y','N','DocumentNo_LVE_WH_Conbination','N',1000000,TO_DATE('2013-07-31 10:04:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 31/07/2013 10:04:38 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Conbination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,LVE_PersonType_ID,LVE_WH_Conbination_ID,LVE_WithholdingConcept_ID,Processing,Updated,UpdatedBy,Value) VALUES (11,50001,0,TO_DATE('2013-07-31 10:04:38','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000002,1000000,1000002,'N',TO_DATE('2013-07-31 10:04:38','YYYY-MM-DD HH24:MI:SS'),100,'1000000')
;

-- 31/07/2013 10:04:49 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WithholdingConfig (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_TaxUnit_ID,LVE_WH_Conbination_ID,LVE_WithholdingConfig_ID,MinimalAmt,Subtrahend,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-07-31 10:04:49','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000000,1000000,0,0,TO_DATE('2013-07-31 10:04:49','YYYY-MM-DD HH24:MI:SS'),100)
;

