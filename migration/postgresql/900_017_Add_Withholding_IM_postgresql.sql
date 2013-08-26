-- 26/08/2013 12:05:46 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_Type (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,IsActive,LVE_WH_Type_ID,Name,Updated,UpdatedBy,Value) VALUES (11,0,TO_TIMESTAMP('2013-08-26 12:05:46','YYYY-MM-DD HH24:MI:SS'),100,'RETENCION DE IMPUESTO MUNICIPAL
','Y',1000003,'RETENCION DE IMPUESTO MUNICIPAL',TO_TIMESTAMP('2013-08-26 12:05:46','YYYY-MM-DD HH24:MI:SS'),100,'RISLR')
;

-- 26/08/2013 12:06:32 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LVE_WH_Type SET Value='RIM',Updated=TO_TIMESTAMP('2013-08-26 12:06:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LVE_WH_Type_ID=1000003
;

-- 26/08/2013 12:07:10 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO C_Charge (AD_Client_ID,AD_Org_ID,C_Charge_ID,ChargeAmt,Created,CreatedBy,C_TaxCategory_ID,IsActive,IsSameCurrency,IsSameTax,IsTaxIncluded,Name,Updated,UpdatedBy) VALUES (11,0,1000002,0,TO_TIMESTAMP('2013-08-26 12:07:10','YYYY-MM-DD HH24:MI:SS'),100,1000000,'Y','N','N','N','RETENCION DE IMPUESTO MUNICIPAL',TO_TIMESTAMP('2013-08-26 12:07:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/08/2013 12:07:11 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO C_Charge_Trl (AD_Language,C_Charge_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_Charge_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_Charge t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_Charge_ID=1000002 AND NOT EXISTS (SELECT * FROM C_Charge_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_Charge_ID=t.C_Charge_ID)
;

-- 26/08/2013 12:07:11 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO C_Charge_Acct (C_Charge_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,Ch_Expense_Acct,Ch_Revenue_Acct) SELECT 1000002, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', CURRENT_TIMESTAMP,100,CURRENT_TIMESTAMP,100,p.Ch_Expense_Acct,p.Ch_Revenue_Acct FROM C_AcctSchema_Default p WHERE p.AD_Client_ID=11 AND NOT EXISTS (SELECT * FROM C_Charge_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.C_Charge_ID=1000002)
;

-- 26/08/2013 12:07:55 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_WH_ConceptGroup (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,IsActive,LVE_WH_ConceptGroup_ID,Name,Updated,UpdatedBy,Value) VALUES (11,0,TO_TIMESTAMP('2013-08-26 12:07:55','YYYY-MM-DD HH24:MI:SS'),100,'GRUPO DE RETENCION IMPUESTO MUNICIPAL
','Y',1000003,'RETENCION IMPUESTO MUNICIPAL',TO_TIMESTAMP('2013-08-26 12:07:55','YYYY-MM-DD HH24:MI:SS'),100,'RETENCION IMPUESTO MUNICIPAL')
;

-- 26/08/2013 12:09:04 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (11,0,1000027,TO_TIMESTAMP('2013-08-26 12:09:03','YYYY-MM-DD HH24:MI:SS'),100,1,100,1,'Y','N','Y','N','RETENCION DE IMPUESTO MUNICIPAL','N',1000000,TO_TIMESTAMP('2013-08-26 12:09:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/08/2013 12:10:41 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO C_DocType (AD_Client_ID,AD_Org_ID,AD_PrintFormat_ID,C_DocType_ID,Created,CreatedBy,DocBaseType,DocNoSequence_ID,DocumentCopies,GL_Category_ID,HasCharges,HasProforma,IsActive,IsCreateCounter,IsDefault,IsDefaultCounterDoc,IsDocNoControlled,IsIndexed,IsInTransit,IsOverwriteDateOnComplete,IsOverwriteSeqOnComplete,IsPickQAConfirm,IsPrepareSplitDocument,IsShipConfirm,IsSOTrx,IsSplitWhenDifference,Name,PrintName,Updated,UpdatedBy) VALUES (11,0,50110,1000004,TO_TIMESTAMP('2013-08-26 12:10:41','YYYY-MM-DD HH24:MI:SS'),100,'APC',1000027,0,112,'N','N','Y','Y','N','N','Y','Y','N','N','N','N','Y','N','N','N','RETENCION DE IMPUESTO MUNICIPAL','RETENCION DE IMPUESTO MUNICIPAL',TO_TIMESTAMP('2013-08-26 12:10:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/08/2013 12:10:41 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO C_DocType_Trl (AD_Language,C_DocType_ID, DocumentNote,Name,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_DocType_ID, t.DocumentNote,t.Name,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_DocType t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_DocType_ID=1000004 AND NOT EXISTS (SELECT * FROM C_DocType_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_DocType_ID=t.C_DocType_ID)
;

-- 26/08/2013 12:10:41 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Document_Action_Access (AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,C_DocType_ID , AD_Ref_List_ID, AD_Role_ID) (SELECT 11,0,'Y', CURRENT_TIMESTAMP,100, CURRENT_TIMESTAMP,100, doctype.C_DocType_ID, "action".AD_Ref_List_ID, rol.AD_Role_ID FROM AD_Client client INNER JOIN C_DocType doctype ON (doctype.AD_Client_ID=client.AD_Client_ID) INNER JOIN AD_Ref_List "action" ON ("action".AD_Reference_ID=135) INNER JOIN AD_Role rol ON (rol.AD_Client_ID=client.AD_Client_ID) WHERE client.AD_Client_ID=11 AND doctype.C_DocType_ID=1000004 AND rol.IsManual='N')
;

-- 26/08/2013 12:11:39 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,Prefix,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (11,0,1000028,TO_TIMESTAMP('2013-08-26 12:11:39','YYYY-MM-DD HH24:MI:SS'),100,1,100,1,'Y','N','Y','N','DECLARACION DE IMPUESTO MUNICIPAL','ADCR-','N',1000000,TO_TIMESTAMP('2013-08-26 12:11:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/08/2013 12:12:04 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO C_DocType (AD_Client_ID,AD_Org_ID,C_DocType_ID,Created,CreatedBy,DocBaseType,DocNoSequence_ID,DocumentCopies,GL_Category_ID,HasCharges,HasProforma,IsActive,IsCreateCounter,IsDefault,IsDefaultCounterDoc,IsDocNoControlled,IsIndexed,IsInTransit,IsOverwriteDateOnComplete,IsOverwriteSeqOnComplete,IsPickQAConfirm,IsPrepareSplitDocument,IsShipConfirm,IsSOTrx,IsSplitWhenDifference,Name,PrintName,Updated,UpdatedBy) VALUES (11,0,1000005,TO_TIMESTAMP('2013-08-26 12:12:03','YYYY-MM-DD HH24:MI:SS'),100,'API',1000028,0,112,'N','N','Y','Y','N','Y','Y','Y','N','N','N','N','Y','N','N','N','DECLARACION DE IMPUESTO MUNICIPAL','DECLARACION DE IMPUESTO MUNICIPAL',TO_TIMESTAMP('2013-08-26 12:12:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/08/2013 12:12:04 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO C_DocType_Trl (AD_Language,C_DocType_ID, DocumentNote,Name,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_DocType_ID, t.DocumentNote,t.Name,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_DocType t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_DocType_ID=1000005 AND NOT EXISTS (SELECT * FROM C_DocType_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_DocType_ID=t.C_DocType_ID)
;

-- 26/08/2013 12:12:04 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Document_Action_Access (AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,C_DocType_ID , AD_Ref_List_ID, AD_Role_ID) (SELECT 11,0,'Y', CURRENT_TIMESTAMP,100, CURRENT_TIMESTAMP,100, doctype.C_DocType_ID, "action".AD_Ref_List_ID, rol.AD_Role_ID FROM AD_Client client INNER JOIN C_DocType doctype ON (doctype.AD_Client_ID=client.AD_Client_ID) INNER JOIN AD_Ref_List "action" ON ("action".AD_Reference_ID=135) INNER JOIN AD_Role rol ON (rol.AD_Client_ID=client.AD_Client_ID) WHERE client.AD_Client_ID=11 AND doctype.C_DocType_ID=1000005 AND rol.IsManual='N')
;

-- 26/08/2013 12:13:42 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LVE_Withholding (AD_Client_ID,AD_Org_ID,AD_Rule_ID,AD_Table_ID,Beneficiary_ID,C_Charge_ID,Created,CreatedBy,DeclarationDocType_ID,IsActive,IsSOTrx,LVE_WH_ConceptGroup_ID,LVE_WH_Type_ID,LVE_Withholding_ID,Name,Processing,SeqNo,TaxUnitRate,Updated,UpdatedBy,WithholdingDocType_ID) VALUES (11,0,50017,53555,121,1000002,TO_TIMESTAMP('2013-08-26 12:13:42','YYYY-MM-DD HH24:MI:SS'),100,1000005,'Y','N',1000003,1000003,1000004,'RETENCION DE IMPUESTO MUNICIPAL','N',10,83.333400000000,TO_TIMESTAMP('2013-08-26 12:13:42','YYYY-MM-DD HH24:MI:SS'),100,1000004)
;

