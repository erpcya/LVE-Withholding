-- Aug 19, 2013 12:23:45 PM VET
-- LVE Withholding
INSERT INTO C_TaxCategory (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_TaxCategory_ID,IsActive,IsDefault,Name,Updated,UpdatedBy) VALUES (11,50001,TO_TIMESTAMP('2013-08-19 12:23:45','YYYY-MM-DD HH24:MI:SS'),100,1000000,'Y','N','SIN IMPUESTO',TO_TIMESTAMP('2013-08-19 12:23:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 19, 2013 12:23:45 PM VET
-- LVE Withholding
INSERT INTO C_TaxCategory_Trl (AD_Language,C_TaxCategory_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_TaxCategory_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_TaxCategory t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_TaxCategory_ID=1000000 AND NOT EXISTS (SELECT * FROM C_TaxCategory_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_TaxCategory_ID=t.C_TaxCategory_ID)
;

-- Aug 19, 2013 12:24:25 PM VET
-- LVE Withholding
INSERT INTO C_Charge (AD_Client_ID,AD_Org_ID,C_Charge_ID,ChargeAmt,Created,CreatedBy,C_TaxCategory_ID,IsActive,IsSameCurrency,IsSameTax,IsTaxIncluded,Name,Updated,UpdatedBy) VALUES (11,50001,1000000,0,TO_TIMESTAMP('2013-08-19 12:24:25','YYYY-MM-DD HH24:MI:SS'),100,1000000,'Y','N','N','N','RETENCION DE I.S.L.R',TO_TIMESTAMP('2013-08-19 12:24:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 19, 2013 12:24:25 PM VET
-- LVE Withholding
INSERT INTO C_Charge_Trl (AD_Language,C_Charge_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_Charge_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_Charge t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_Charge_ID=1000000 AND NOT EXISTS (SELECT * FROM C_Charge_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_Charge_ID=t.C_Charge_ID)
;

-- Aug 19, 2013 12:24:25 PM VET
-- LVE Withholding
INSERT INTO C_Charge_Acct (C_Charge_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,Ch_Expense_Acct,Ch_Revenue_Acct) SELECT 1000000, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', CURRENT_TIMESTAMP,100,CURRENT_TIMESTAMP,100,p.Ch_Expense_Acct,p.Ch_Revenue_Acct FROM C_AcctSchema_Default p WHERE p.AD_Client_ID=11 AND NOT EXISTS (SELECT * FROM C_Charge_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.C_Charge_ID=1000000)
;

-- Aug 19, 2013 12:26:10 PM VET
-- LVE Withholding
INSERT INTO C_Tax (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_TaxCategory_ID,C_Tax_ID,IsActive,IsDefault,IsDocumentLevel,IsSalesTax,IsSummary,IsTaxExempt,Name,Parent_Tax_ID,Rate,RequiresTaxCertificate,SOPOType,Updated,UpdatedBy,ValidFrom) VALUES (11,50001,TO_TIMESTAMP('2013-08-19 12:26:10','YYYY-MM-DD HH24:MI:SS'),100,1000000,1000000,'Y','N','N','N','N','N','SIN IMPUESTO',105,0,'N','B',TO_TIMESTAMP('2013-08-19 12:26:10','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-01-01','YYYY-MM-DD'))
;

-- Aug 19, 2013 12:26:10 PM VET
-- LVE Withholding
INSERT INTO C_Tax_Trl (AD_Language,C_Tax_ID, Description,Name,TaxIndicator, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_Tax_ID, t.Description,t.Name,t.TaxIndicator, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_Tax t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_Tax_ID=1000000 AND NOT EXISTS (SELECT * FROM C_Tax_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_Tax_ID=t.C_Tax_ID)
;

-- Aug 19, 2013 12:26:10 PM VET
-- LVE Withholding
INSERT INTO C_Tax_Acct (C_Tax_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,T_Credit_Acct,T_Due_Acct,T_Expense_Acct,T_Liability_Acct,T_Receivables_Acct) SELECT 1000000, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', CURRENT_TIMESTAMP,100,CURRENT_TIMESTAMP,100,p.T_Credit_Acct,p.T_Due_Acct,p.T_Expense_Acct,p.T_Liability_Acct,p.T_Receivables_Acct FROM C_AcctSchema_Default p WHERE p.AD_Client_ID=11 AND NOT EXISTS (SELECT * FROM C_Tax_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.C_Tax_ID=1000000)
;

-- Aug 19, 2013 12:28:28 PM VET
-- LVE Withholding
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (11,0,1000013,TO_TIMESTAMP('2013-08-19 12:28:28','YYYY-MM-DD HH24:MI:SS'),100,1,100,1,'Y','N','Y','N','RETENCION DE I.S.L.R','N',1000000,TO_TIMESTAMP('2013-08-19 12:28:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 19, 2013 12:32:55 PM VET
-- LVE Withholding
INSERT INTO C_DocType (AD_Client_ID,AD_Org_ID,AD_PrintFormat_ID,C_DocType_ID,Created,CreatedBy,DocBaseType,DocNoSequence_ID,DocumentCopies,GL_Category_ID,HasCharges,HasProforma,IsActive,IsCreateCounter,IsDefault,IsDefaultCounterDoc,IsDocNoControlled,IsIndexed,IsInTransit,IsOverwriteDateOnComplete,IsOverwriteSeqOnComplete,IsPickQAConfirm,IsPrepareSplitDocument,IsShipConfirm,IsSOTrx,IsSplitWhenDifference,Name,PrintName,Updated,UpdatedBy) VALUES (11,0,50110,1000000,TO_TIMESTAMP('2013-08-19 12:32:55','YYYY-MM-DD HH24:MI:SS'),100,'APC',1000013,0,112,'N','N','Y','Y','N','N','Y','Y','N','N','N','N','Y','N','N','N','RETENCION DE I.S.L.R','RETENCION DE I.S.L.R',TO_TIMESTAMP('2013-08-19 12:32:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 19, 2013 12:32:55 PM VET
-- LVE Withholding
INSERT INTO C_DocType_Trl (AD_Language,C_DocType_ID, DocumentNote,Name,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_DocType_ID, t.DocumentNote,t.Name,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_DocType t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_DocType_ID=1000000 AND NOT EXISTS (SELECT * FROM C_DocType_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_DocType_ID=t.C_DocType_ID)
;

-- Aug 19, 2013 12:32:55 PM VET
-- LVE Withholding
INSERT INTO AD_Document_Action_Access (AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,C_DocType_ID , AD_Ref_List_ID, AD_Role_ID) (SELECT 11,0,'Y', CURRENT_TIMESTAMP,100, CURRENT_TIMESTAMP,100, doctype.C_DocType_ID, "action".AD_Ref_List_ID, rol.AD_Role_ID FROM AD_Client client INNER JOIN C_DocType doctype ON (doctype.AD_Client_ID=client.AD_Client_ID) INNER JOIN AD_Ref_List "action" ON ("action".AD_Reference_ID=135) INNER JOIN AD_Role rol ON (rol.AD_Client_ID=client.AD_Client_ID) WHERE client.AD_Client_ID=11 AND doctype.C_DocType_ID=1000000 AND rol.IsManual='N')
;

-- Aug 19, 2013 12:33:24 PM VET
-- LVE Withholding
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (11,0,1000014,TO_TIMESTAMP('2013-08-19 12:33:24','YYYY-MM-DD HH24:MI:SS'),100,1,100,1,'Y','N','Y','N','RETENCION DE I.V.A','N',1000000,TO_TIMESTAMP('2013-08-19 12:33:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 19, 2013 12:33:36 PM VET
-- LVE Withholding
INSERT INTO C_DocType (AD_Client_ID,AD_Org_ID,AD_PrintFormat_ID,C_DocType_ID,Created,CreatedBy,DocBaseType,DocNoSequence_ID,DocumentCopies,GL_Category_ID,HasCharges,HasProforma,IsActive,IsCreateCounter,IsDefault,IsDefaultCounterDoc,IsDocNoControlled,IsIndexed,IsInTransit,IsOverwriteDateOnComplete,IsOverwriteSeqOnComplete,IsPickQAConfirm,IsPrepareSplitDocument,IsShipConfirm,IsSOTrx,IsSplitWhenDifference,Name,PrintName,Updated,UpdatedBy) VALUES (11,0,50112,1000001,TO_TIMESTAMP('2013-08-19 12:33:36','YYYY-MM-DD HH24:MI:SS'),100,'APC',1000014,0,112,'N','N','Y','Y','N','N','Y','Y','N','N','N','N','Y','N','N','N','RETENCION DE I.V.A','RETENCION DE I.V.A',TO_TIMESTAMP('2013-08-19 12:33:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 19, 2013 12:33:36 PM VET
-- LVE Withholding
INSERT INTO C_DocType_Trl (AD_Language,C_DocType_ID, DocumentNote,Name,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_DocType_ID, t.DocumentNote,t.Name,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_DocType t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_DocType_ID=1000001 AND NOT EXISTS (SELECT * FROM C_DocType_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_DocType_ID=t.C_DocType_ID)
;

-- Aug 19, 2013 12:33:36 PM VET
-- LVE Withholding
INSERT INTO AD_Document_Action_Access (AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,C_DocType_ID , AD_Ref_List_ID, AD_Role_ID) (SELECT 11,0,'Y', CURRENT_TIMESTAMP,100, CURRENT_TIMESTAMP,100, doctype.C_DocType_ID, "action".AD_Ref_List_ID, rol.AD_Role_ID FROM AD_Client client INNER JOIN C_DocType doctype ON (doctype.AD_Client_ID=client.AD_Client_ID) INNER JOIN AD_Ref_List "action" ON ("action".AD_Reference_ID=135) INNER JOIN AD_Role rol ON (rol.AD_Client_ID=client.AD_Client_ID) WHERE client.AD_Client_ID=11 AND doctype.C_DocType_ID=1000001 AND rol.IsManual='N')
;

-- Aug 19, 2013 12:34:13 PM VET
-- LVE Withholding
INSERT INTO C_Charge (AD_Client_ID,AD_Org_ID,C_Charge_ID,ChargeAmt,Created,CreatedBy,C_TaxCategory_ID,IsActive,IsSameCurrency,IsSameTax,IsTaxIncluded,Name,Updated,UpdatedBy) VALUES (11,50001,1000001,0,TO_TIMESTAMP('2013-08-19 12:34:13','YYYY-MM-DD HH24:MI:SS'),100,1000000,'Y','N','N','N','RETENCION DE I.V.A',TO_TIMESTAMP('2013-08-19 12:34:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 19, 2013 12:34:13 PM VET
-- LVE Withholding
INSERT INTO C_Charge_Trl (AD_Language,C_Charge_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_Charge_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_Charge t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_Charge_ID=1000001 AND NOT EXISTS (SELECT * FROM C_Charge_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_Charge_ID=t.C_Charge_ID)
;

-- Aug 19, 2013 12:34:13 PM VET
-- LVE Withholding
INSERT INTO C_Charge_Acct (C_Charge_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,Ch_Expense_Acct,Ch_Revenue_Acct) SELECT 1000001, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', CURRENT_TIMESTAMP,100,CURRENT_TIMESTAMP,100,p.Ch_Expense_Acct,p.Ch_Revenue_Acct FROM C_AcctSchema_Default p WHERE p.AD_Client_ID=11 AND NOT EXISTS (SELECT * FROM C_Charge_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.C_Charge_ID=1000001)
;

-- Aug 19, 2013 12:37:02 PM VET
-- LVE Withholding
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,Prefix,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (11,0,1000015,TO_TIMESTAMP('2013-08-19 12:37:02','YYYY-MM-DD HH24:MI:SS'),100,1,100,1,'Y','N','Y','N','DECLARACION DE I.S.L.R','ADC-','N',1000000,TO_TIMESTAMP('2013-08-19 12:37:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 19, 2013 12:37:15 PM VET
-- LVE Withholding
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,Prefix,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (11,0,1000016,TO_TIMESTAMP('2013-08-19 12:37:15','YYYY-MM-DD HH24:MI:SS'),100,1,100,1,'Y','N','Y','N','DECLARACION DE I.V.A','ADCI-','N',1000000,TO_TIMESTAMP('2013-08-19 12:37:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 19, 2013 12:37:24 PM VET
-- LVE Withholding
UPDATE AD_Sequence SET Prefix='ADCR-',Updated=TO_TIMESTAMP('2013-08-19 12:37:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Sequence_ID=1000015
;

-- Aug 19, 2013 12:37:31 PM VET
-- LVE Withholding
UPDATE AD_Sequence SET Prefix='ADCA-',Updated=TO_TIMESTAMP('2013-08-19 12:37:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Sequence_ID=1000016
;

-- Aug 19, 2013 12:37:42 PM VET
-- LVE Withholding
INSERT INTO C_DocType (AD_Client_ID,AD_Org_ID,C_DocType_ID,Created,CreatedBy,DocBaseType,DocNoSequence_ID,DocumentCopies,GL_Category_ID,HasCharges,HasProforma,IsActive,IsCreateCounter,IsDefault,IsDefaultCounterDoc,IsDocNoControlled,IsIndexed,IsInTransit,IsOverwriteDateOnComplete,IsOverwriteSeqOnComplete,IsPickQAConfirm,IsPrepareSplitDocument,IsShipConfirm,IsSOTrx,IsSplitWhenDifference,Name,PrintName,Updated,UpdatedBy) VALUES (11,0,1000002,TO_TIMESTAMP('2013-08-19 12:37:42','YYYY-MM-DD HH24:MI:SS'),100,'API',1000015,0,112,'N','N','Y','Y','N','Y','Y','Y','N','N','N','N','Y','N','N','N','DECLARACION DE I.S.L.R','DECLARACION DE I.S.L.R',TO_TIMESTAMP('2013-08-19 12:37:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 19, 2013 12:37:43 PM VET
-- LVE Withholding
INSERT INTO C_DocType_Trl (AD_Language,C_DocType_ID, DocumentNote,Name,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_DocType_ID, t.DocumentNote,t.Name,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_DocType t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_DocType_ID=1000002 AND NOT EXISTS (SELECT * FROM C_DocType_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_DocType_ID=t.C_DocType_ID)
;

-- Aug 19, 2013 12:37:43 PM VET
-- LVE Withholding
INSERT INTO AD_Document_Action_Access (AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,C_DocType_ID , AD_Ref_List_ID, AD_Role_ID) (SELECT 11,0,'Y', CURRENT_TIMESTAMP,100, CURRENT_TIMESTAMP,100, doctype.C_DocType_ID, "action".AD_Ref_List_ID, rol.AD_Role_ID FROM AD_Client client INNER JOIN C_DocType doctype ON (doctype.AD_Client_ID=client.AD_Client_ID) INNER JOIN AD_Ref_List "action" ON ("action".AD_Reference_ID=135) INNER JOIN AD_Role rol ON (rol.AD_Client_ID=client.AD_Client_ID) WHERE client.AD_Client_ID=11 AND doctype.C_DocType_ID=1000002 AND rol.IsManual='N')
;

-- Aug 19, 2013 12:38:01 PM VET
-- LVE Withholding
INSERT INTO C_DocType (AD_Client_ID,AD_Org_ID,C_DocType_ID,Created,CreatedBy,DocBaseType,DocNoSequence_ID,DocumentCopies,GL_Category_ID,HasCharges,HasProforma,IsActive,IsCreateCounter,IsDefault,IsDefaultCounterDoc,IsDocNoControlled,IsIndexed,IsInTransit,IsOverwriteDateOnComplete,IsOverwriteSeqOnComplete,IsPickQAConfirm,IsPrepareSplitDocument,IsShipConfirm,IsSOTrx,IsSplitWhenDifference,Name,PrintName,Updated,UpdatedBy) VALUES (11,0,1000003,TO_TIMESTAMP('2013-08-19 12:38:01','YYYY-MM-DD HH24:MI:SS'),100,'API',1000016,0,112,'N','N','Y','Y','N','Y','Y','Y','N','N','N','N','Y','N','N','N','DECLARACION DE I.V.A','DECLARACION DE I.V.A',TO_TIMESTAMP('2013-08-19 12:38:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 19, 2013 12:38:01 PM VET
-- LVE Withholding
INSERT INTO C_DocType_Trl (AD_Language,C_DocType_ID, DocumentNote,Name,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_DocType_ID, t.DocumentNote,t.Name,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_DocType t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_DocType_ID=1000003 AND NOT EXISTS (SELECT * FROM C_DocType_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_DocType_ID=t.C_DocType_ID)
;

-- Aug 19, 2013 12:38:01 PM VET
-- LVE Withholding
INSERT INTO AD_Document_Action_Access (AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,C_DocType_ID , AD_Ref_List_ID, AD_Role_ID) (SELECT 11,0,'Y', CURRENT_TIMESTAMP,100, CURRENT_TIMESTAMP,100, doctype.C_DocType_ID, "action".AD_Ref_List_ID, rol.AD_Role_ID FROM AD_Client client INNER JOIN C_DocType doctype ON (doctype.AD_Client_ID=client.AD_Client_ID) INNER JOIN AD_Ref_List "action" ON ("action".AD_Reference_ID=135) INNER JOIN AD_Role rol ON (rol.AD_Client_ID=client.AD_Client_ID) WHERE client.AD_Client_ID=11 AND doctype.C_DocType_ID=1000003 AND rol.IsManual='N')
;

-- Aug 19, 2013 12:40:09 PM VET
-- LVE Withholding
INSERT INTO LVE_Withholding (AD_Client_ID,AD_Org_ID,AD_Table_ID,Beneficiary_ID,C_Charge_ID,Created,CreatedBy,DeclarationDocType_ID,IsActive,IsSOTrx,LVE_WH_ConceptGroup_ID,LVE_WH_Type_ID,LVE_Withholding_ID,Name,Processing,SeqNo,TaxUnitRate,Updated,UpdatedBy,WithholdingDocType_ID) VALUES (11,50001,53555,121,1000000,TO_TIMESTAMP('2013-08-19 12:40:09','YYYY-MM-DD HH24:MI:SS'),100,1000002,'Y','N',1000000,1000002,1000000,'RETENCION DE I.S.L.R','N',10,83.333400000000,TO_TIMESTAMP('2013-08-19 12:40:09','YYYY-MM-DD HH24:MI:SS'),100,1000000)
;

-- Aug 19, 2013 1:03:27 PM VET
-- LVE Withholding
INSERT INTO LVE_Withholding (AD_Client_ID,AD_Org_ID,AD_Table_ID,Beneficiary_ID,C_Charge_ID,Created,CreatedBy,DeclarationDocType_ID,IsActive,IsSOTrx,LVE_WH_ConceptGroup_ID,LVE_WH_Type_ID,LVE_Withholding_ID,Name,Processing,SeqNo,TaxUnitRate,Updated,UpdatedBy,WithholdingDocType_ID) VALUES (11,50001,53556,121,1000001,TO_TIMESTAMP('2013-08-19 13:03:27','YYYY-MM-DD HH24:MI:SS'),100,1000003,'Y','N',1000001,1000001,1000001,'RETENCION DE I.V.A 75%','N',20,0,TO_TIMESTAMP('2013-08-19 13:03:27','YYYY-MM-DD HH24:MI:SS'),100,1000001)
;

-- Aug 19, 2013 1:04:58 PM VET
-- LVE Withholding
DELETE FROM LVE_Withholding WHERE LVE_Withholding_ID=1000001
;

-- Aug 19, 2013 1:05:08 PM VET
-- LVE Withholding
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_DocType_ID,Created,CreatedBy,IsActive,LVE_WH_Relation_ID,LVE_Withholding_ID,Updated,UpdatedBy) VALUES (11,50001,123,TO_TIMESTAMP('2013-08-19 13:05:08','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000000,TO_TIMESTAMP('2013-08-19 13:05:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 19, 2013 1:06:48 PM VET
-- LVE Withholding
INSERT INTO LVE_Withholding (AD_Client_ID,AD_Org_ID,AD_Table_ID,Beneficiary_ID,C_Charge_ID,Created,CreatedBy,DeclarationDocType_ID,IsActive,IsSOTrx,LVE_WH_ConceptGroup_ID,LVE_WH_Type_ID,LVE_Withholding_ID,Name,Processing,SeqNo,TaxUnitRate,Updated,UpdatedBy,WithholdingDocType_ID) VALUES (11,50001,53556,121,1000001,TO_TIMESTAMP('2013-08-19 13:06:48','YYYY-MM-DD HH24:MI:SS'),100,1000001,'Y','N',1000002,1000001,1000002,'RETENCION DE I.V.A','N',20,0,TO_TIMESTAMP('2013-08-19 13:06:48','YYYY-MM-DD HH24:MI:SS'),100,1000001)
;

-- Aug 19, 2013 1:06:55 PM VET
-- LVE Withholding
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_DocType_ID,Created,CreatedBy,IsActive,LVE_WH_Relation_ID,LVE_Withholding_ID,Updated,UpdatedBy) VALUES (11,50001,123,TO_TIMESTAMP('2013-08-19 13:06:55','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000001,1000002,TO_TIMESTAMP('2013-08-19 13:06:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 19, 2013 1:07:05 PM VET
-- LVE Withholding
UPDATE LVE_Withholding SET Name='RETENCION DE I.V.A 75%',Updated=TO_TIMESTAMP('2013-08-19 13:07:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LVE_Withholding_ID=1000002
;

-- Aug 19, 2013 1:07:19 PM VET
-- LVE Withholding
UPDATE LVE_Withholding SET Name='RETENCION DE I.V.A 100%',Updated=TO_TIMESTAMP('2013-08-19 13:07:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LVE_Withholding_ID=1000002
;

-- Aug 19, 2013 1:08:00 PM VET
-- LVE Withholding
UPDATE LVE_Withholding SET SeqNo=20,IsActive='Y' WHERE LVE_Withholding_ID=1000003
;

-- Aug 19, 2013 1:08:00 PM VET
-- LVE Withholding
UPDATE LVE_Withholding SET SeqNo=30,IsActive='Y' WHERE LVE_Withholding_ID=1000002
;

-- Aug 19, 2013 1:08:44 PM VET
-- LVE Withholding
INSERT INTO LVE_WH_Relation (AD_Client_ID,AD_Org_ID,C_BPartner_ID,Created,CreatedBy,IsActive,LVE_WH_Relation_ID,LVE_Withholding_ID,Updated,UpdatedBy) VALUES (11,0,113,TO_TIMESTAMP('2013-08-19 13:08:44','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000003,1000000,TO_TIMESTAMP('2013-08-19 13:08:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 19, 2013 1:09:02 PM VET
-- LVE Withholding
UPDATE C_BPartner SET LVE_PersonType_ID=1000002,Updated=TO_TIMESTAMP('2013-08-19 13:09:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_BPartner_ID=113
;

