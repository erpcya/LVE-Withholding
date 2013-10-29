-- 13/08/2013 10:19:23 AM VET
-- LVE Withholding
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (11,0,53669,TO_DATE('2013-08-13 10:19:22','YYYY-MM-DD HH24:MI:SS'),100,1,100,1,'Y','N','Y','N','Declaration ISLR','N',1000000,TO_DATE('2013-08-13 10:19:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/08/2013 10:20:14 AM VET
-- LVE Withholding
INSERT INTO C_DocType (AD_Client_ID,AD_Org_ID,C_DocType_ID,Created,CreatedBy,DocBaseType,DocNoSequence_ID,DocTypeDeclare,DocumentCopies,GL_Category_ID,HasCharges,HasProforma,IsActive,IsCreateCounter,IsDefault,IsDefaultCounterDoc,IsDocNoControlled,IsIndexed,IsInTransit,IsOverwriteDateOnComplete,IsOverwriteSeqOnComplete,IsPickQAConfirm,IsPrepareSplitDocument,IsShipConfirm,IsSOTrx,IsSplitWhenDifference,Name,PrintName,Updated,UpdatedBy) VALUES (11,0,50014,TO_DATE('2013-08-13 10:20:14','YYYY-MM-DD HH24:MI:SS'),100,'API',53669,'01',0,112,'N','N','Y','Y','N','Y','Y','Y','N','N','N','N','Y','N','N','N','AP Declaration ISLR','Declaration ISLR',TO_DATE('2013-08-13 10:20:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/08/2013 10:20:14 AM VET
-- LVE Withholding
INSERT INTO C_DocType_Trl (AD_Language,C_DocType_ID, DocumentNote,Name,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_DocType_ID, t.DocumentNote,t.Name,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_DocType t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_DocType_ID=50014 AND NOT EXISTS (SELECT * FROM C_DocType_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_DocType_ID=t.C_DocType_ID)
;

-- 13/08/2013 10:20:14 AM VET
-- LVE Withholding
INSERT INTO AD_Document_Action_Access (AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,C_DocType_ID , AD_Ref_List_ID, AD_Role_ID) (SELECT 11,0,'Y', SysDate,100, SysDate,100, doctype.C_DocType_ID, action.AD_Ref_List_ID, rol.AD_Role_ID FROM AD_Client client INNER JOIN C_DocType doctype ON (doctype.AD_Client_ID=client.AD_Client_ID) INNER JOIN AD_Ref_List action ON (action.AD_Reference_ID=135) INNER JOIN AD_Role rol ON (rol.AD_Client_ID=client.AD_Client_ID) WHERE client.AD_Client_ID=11 AND doctype.C_DocType_ID=50014 AND rol.IsManual='N')
;

-- Aug 13, 2013 10:21:12 AM VET
-- LVE Withholding
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (11,0,53670,TO_DATE('2013-08-13 10:21:11','YYYY-MM-DD HH24:MI:SS'),100,1,100,1,'Y','N','Y','N','Declaration IVA','N',1000000,TO_DATE('2013-08-13 10:21:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 13, 2013 10:21:26 AM VET
-- LVE Withholding
INSERT INTO C_DocType (AD_Client_ID,AD_Org_ID,C_DocType_ID,Created,CreatedBy,DocBaseType,DocNoSequence_ID,DocTypeDeclare,DocumentCopies,GL_Category_ID,HasCharges,HasProforma,IsActive,IsCreateCounter,IsDefault,IsDefaultCounterDoc,IsDocNoControlled,IsIndexed,IsInTransit,IsOverwriteDateOnComplete,IsOverwriteSeqOnComplete,IsPickQAConfirm,IsPrepareSplitDocument,IsShipConfirm,IsSOTrx,IsSplitWhenDifference,Name,PrintName,Updated,UpdatedBy) VALUES (11,0,50015,TO_DATE('2013-08-13 10:21:25','YYYY-MM-DD HH24:MI:SS'),100,'API',53670,'01',0,112,'N','N','Y','Y','N','Y','Y','Y','N','N','N','N','Y','N','N','N','AP Declaration IVA','Declaration IVA',TO_DATE('2013-08-13 10:21:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 13, 2013 10:21:26 AM VET
-- LVE Withholding
INSERT INTO C_DocType_Trl (AD_Language,C_DocType_ID, DocumentNote,Name,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_DocType_ID, t.DocumentNote,t.Name,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_DocType t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_DocType_ID=50015 AND NOT EXISTS (SELECT * FROM C_DocType_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_DocType_ID=t.C_DocType_ID)
;

-- Aug 13, 2013 10:21:26 AM VET
-- LVE Withholding
INSERT INTO AD_Document_Action_Access (AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,C_DocType_ID , AD_Ref_List_ID, AD_Role_ID) (SELECT 11,0,'Y', SysDate,100, SysDate,100, doctype.C_DocType_ID, action.AD_Ref_List_ID, rol.AD_Role_ID FROM AD_Client client INNER JOIN C_DocType doctype ON (doctype.AD_Client_ID=client.AD_Client_ID) INNER JOIN AD_Ref_List action ON (action.AD_Reference_ID=135) INNER JOIN AD_Role rol ON (rol.AD_Client_ID=client.AD_Client_ID) WHERE client.AD_Client_ID=11 AND doctype.C_DocType_ID=50015 AND rol.IsManual='N')
;

-- Aug 13, 2013 10:23:02 AM VET
-- LVE Withholding
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (11,0,53671,TO_DATE('2013-08-13 10:23:02','YYYY-MM-DD HH24:MI:SS'),100,1,100,1,'Y','N','Y','N','Withholding ISLR','N',1000000,TO_DATE('2013-08-13 10:23:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 13, 2013 10:23:10 AM VET
-- LVE Withholding
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (11,0,53672,TO_DATE('2013-08-13 10:23:10','YYYY-MM-DD HH24:MI:SS'),100,1,100,1,'Y','N','Y','N','Withholding IVA','N',1000000,TO_DATE('2013-08-13 10:23:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 13, 2013 10:24:31 AM VET
-- LVE Withholding
INSERT INTO C_DocType (AD_Client_ID,AD_Org_ID,AD_PrintFormat_ID,C_DocType_ID,Created,CreatedBy,DocBaseType,DocNoSequence_ID,DocumentCopies,GL_Category_ID,HasCharges,HasProforma,IsActive,IsCreateCounter,IsDefault,IsDefaultCounterDoc,IsDocNoControlled,IsIndexed,IsInTransit,IsOverwriteDateOnComplete,IsOverwriteSeqOnComplete,IsPickQAConfirm,IsPrepareSplitDocument,IsShipConfirm,IsSOTrx,IsSplitWhenDifference,Name,PrintName,Updated,UpdatedBy) VALUES (11,0,50110,50016,TO_DATE('2013-08-13 10:24:31','YYYY-MM-DD HH24:MI:SS'),100,'APC',53671,0,112,'N','N','Y','Y','N','N','Y','Y','N','N','N','N','Y','N','N','N','AP Withholding ISLR','Withholding ISLR',TO_DATE('2013-08-13 10:24:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 13, 2013 10:24:31 AM VET
-- LVE Withholding
INSERT INTO C_DocType_Trl (AD_Language,C_DocType_ID, DocumentNote,Name,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_DocType_ID, t.DocumentNote,t.Name,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_DocType t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_DocType_ID=50016 AND NOT EXISTS (SELECT * FROM C_DocType_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_DocType_ID=t.C_DocType_ID)
;

-- Aug 13, 2013 10:24:31 AM VET
-- LVE Withholding
INSERT INTO AD_Document_Action_Access (AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,C_DocType_ID , AD_Ref_List_ID, AD_Role_ID) (SELECT 11,0,'Y', SysDate,100, SysDate,100, doctype.C_DocType_ID, action.AD_Ref_List_ID, rol.AD_Role_ID FROM AD_Client client INNER JOIN C_DocType doctype ON (doctype.AD_Client_ID=client.AD_Client_ID) INNER JOIN AD_Ref_List action ON (action.AD_Reference_ID=135) INNER JOIN AD_Role rol ON (rol.AD_Client_ID=client.AD_Client_ID) WHERE client.AD_Client_ID=11 AND doctype.C_DocType_ID=50016 AND rol.IsManual='N')
;

-- Aug 13, 2013 10:24:58 AM VET
-- LVE Withholding
INSERT INTO C_DocType (AD_Client_ID,AD_Org_ID,AD_PrintFormat_ID,C_DocType_ID,Created,CreatedBy,DocBaseType,DocNoSequence_ID,DocumentCopies,GL_Category_ID,HasCharges,HasProforma,IsActive,IsCreateCounter,IsDefault,IsDefaultCounterDoc,IsDocNoControlled,IsIndexed,IsInTransit,IsOverwriteDateOnComplete,IsOverwriteSeqOnComplete,IsPickQAConfirm,IsPrepareSplitDocument,IsShipConfirm,IsSOTrx,IsSplitWhenDifference,Name,PrintName,Updated,UpdatedBy) VALUES (11,0,50112,50017,TO_DATE('2013-08-13 10:24:57','YYYY-MM-DD HH24:MI:SS'),100,'APC',53672,0,112,'N','N','Y','Y','N','N','Y','Y','N','N','N','N','Y','N','N','N','AP Withholding IVA','Withholding IVA',TO_DATE('2013-08-13 10:24:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 13, 2013 10:24:58 AM VET
-- LVE Withholding
INSERT INTO C_DocType_Trl (AD_Language,C_DocType_ID, DocumentNote,Name,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_DocType_ID, t.DocumentNote,t.Name,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_DocType t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_DocType_ID=50017 AND NOT EXISTS (SELECT * FROM C_DocType_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_DocType_ID=t.C_DocType_ID)
;

-- Aug 13, 2013 10:24:58 AM VET
-- LVE Withholding
INSERT INTO AD_Document_Action_Access (AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,C_DocType_ID , AD_Ref_List_ID, AD_Role_ID) (SELECT 11,0,'Y', SysDate,100, SysDate,100, doctype.C_DocType_ID, action.AD_Ref_List_ID, rol.AD_Role_ID FROM AD_Client client INNER JOIN C_DocType doctype ON (doctype.AD_Client_ID=client.AD_Client_ID) INNER JOIN AD_Ref_List action ON (action.AD_Reference_ID=135) INNER JOIN AD_Role rol ON (rol.AD_Client_ID=client.AD_Client_ID) WHERE client.AD_Client_ID=11 AND doctype.C_DocType_ID=50017 AND rol.IsManual='N')
;

-- Aug 13, 2013 10:25:24 AM VET
-- LVE Withholding
UPDATE C_DocType SET AD_PrintFormat_ID=50114,Updated=TO_DATE('2013-08-13 10:25:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_DocType_ID=50014
;

-- Aug 13, 2013 10:25:30 AM VET
-- LVE Withholding
UPDATE C_DocType SET AD_PrintFormat_ID=50115,Updated=TO_DATE('2013-08-13 10:25:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_DocType_ID=50015
;

-- Aug 13, 2013 10:26:56 AM VET
-- LVE Withholding
INSERT INTO C_TaxCategory (AD_Client_ID,AD_Org_ID,C_TaxCategory_ID,Created,CreatedBy,IsActive,IsDefault,Name,Updated,UpdatedBy) VALUES (11,50001,50000,TO_DATE('2013-08-13 10:26:55','YYYY-MM-DD HH24:MI:SS'),100,'Y','N','Exempt',TO_DATE('2013-08-13 10:26:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 13, 2013 10:26:56 AM VET
-- LVE Withholding
INSERT INTO C_TaxCategory_Trl (AD_Language,C_TaxCategory_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_TaxCategory_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_TaxCategory t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_TaxCategory_ID=50000 AND NOT EXISTS (SELECT * FROM C_TaxCategory_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_TaxCategory_ID=t.C_TaxCategory_ID)
;

-- Aug 13, 2013 10:27:32 AM VET
-- LVE Withholding
INSERT INTO C_Charge (AD_Client_ID,AD_Org_ID,C_Charge_ID,C_TaxCategory_ID,ChargeAmt,Created,CreatedBy,IsActive,IsSameCurrency,IsSameTax,IsTaxIncluded,Name,Updated,UpdatedBy) VALUES (11,50001,50005,50000,0,TO_DATE('2013-08-13 10:27:32','YYYY-MM-DD HH24:MI:SS'),100,'Y','N','N','N','Withholding ISLR',TO_DATE('2013-08-13 10:27:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 13, 2013 10:27:32 AM VET
-- LVE Withholding
INSERT INTO C_Charge_Trl (AD_Language,C_Charge_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_Charge_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_Charge t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_Charge_ID=50005 AND NOT EXISTS (SELECT * FROM C_Charge_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_Charge_ID=t.C_Charge_ID)
;

-- Aug 13, 2013 10:27:32 AM VET
-- LVE Withholding
INSERT INTO C_Charge_Acct (C_Charge_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,Ch_Expense_Acct,Ch_Revenue_Acct) SELECT 50005, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', SysDate,100,SysDate,100,p.Ch_Expense_Acct,p.Ch_Revenue_Acct FROM C_AcctSchema_Default p WHERE p.AD_Client_ID=11 AND NOT EXISTS (SELECT * FROM C_Charge_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.C_Charge_ID=50005)
;

-- Aug 13, 2013 10:27:43 AM VET
-- LVE Withholding
INSERT INTO C_Charge (AD_Client_ID,AD_Org_ID,C_Charge_ID,C_TaxCategory_ID,ChargeAmt,Created,CreatedBy,IsActive,IsSameCurrency,IsSameTax,IsTaxIncluded,Name,Updated,UpdatedBy) VALUES (11,50001,50006,50000,0,TO_DATE('2013-08-13 10:27:43','YYYY-MM-DD HH24:MI:SS'),100,'Y','N','N','N','Withholding IVA',TO_DATE('2013-08-13 10:27:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 13, 2013 10:27:43 AM VET
-- LVE Withholding
INSERT INTO C_Charge_Trl (AD_Language,C_Charge_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_Charge_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_Charge t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_Charge_ID=50006 AND NOT EXISTS (SELECT * FROM C_Charge_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_Charge_ID=t.C_Charge_ID)
;

-- Aug 13, 2013 10:27:43 AM VET
-- LVE Withholding
INSERT INTO C_Charge_Acct (C_Charge_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,Ch_Expense_Acct,Ch_Revenue_Acct) SELECT 50006, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', SysDate,100,SysDate,100,p.Ch_Expense_Acct,p.Ch_Revenue_Acct FROM C_AcctSchema_Default p WHERE p.AD_Client_ID=11 AND NOT EXISTS (SELECT * FROM C_Charge_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.C_Charge_ID=50006)
;

-- Aug 13, 2013 10:29:38 AM VET
-- LVE Withholding
INSERT INTO LVE_TaxUnit (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_TaxUnit_ID,Name,Processing,TaxAmt,Updated,UpdatedBy,ValidFrom) VALUES (11,50001,TO_DATE('2013-08-13 10:29:36','YYYY-MM-DD HH24:MI:SS'),100,'Y',50000,'U.T. 2013','N',107.000000000000,TO_DATE('2013-08-13 10:29:36','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2013-01-02','YYYY-MM-DD'))
;

-- Aug 13, 2013 10:30:55 AM VET
-- LVE Withholding
INSERT INTO LVE_WH_Type (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_WH_Type_ID,Name,Updated,UpdatedBy,Value) VALUES (11,50001,TO_DATE('2013-08-13 10:30:53','YYYY-MM-DD HH24:MI:SS'),100,'Y',50001,'Withholding ISLR',TO_DATE('2013-08-13 10:30:53','YYYY-MM-DD HH24:MI:SS'),100,'RISLR')
;

-- Aug 13, 2013 10:31:07 AM VET
-- LVE Withholding
INSERT INTO LVE_WH_Type (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_WH_Type_ID,Name,Updated,UpdatedBy,Value) VALUES (11,50001,TO_DATE('2013-08-13 10:31:06','YYYY-MM-DD HH24:MI:SS'),100,'Y',50002,'Withholding IVA',TO_DATE('2013-08-13 10:31:06','YYYY-MM-DD HH24:MI:SS'),100,'RIVA')
;

-- Aug 13, 2013 10:32:07 AM VET
-- LVE Withholding
INSERT INTO LVE_PersonType (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_PersonType_ID,Name,Updated,UpdatedBy,Value) VALUES (11,50001,TO_DATE('2013-08-13 10:32:06','YYYY-MM-DD HH24:MI:SS'),100,'Y',50000,'PNR Persona Natural Residente',TO_DATE('2013-08-13 10:32:06','YYYY-MM-DD HH24:MI:SS'),100,'N')
;

-- Aug 13, 2013 10:32:17 AM VET
-- LVE Withholding
INSERT INTO LVE_PersonType (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_PersonType_ID,Name,Updated,UpdatedBy,Value) VALUES (11,50001,TO_DATE('2013-08-13 10:32:16','YYYY-MM-DD HH24:MI:SS'),100,'Y',50001,'PNNR Persona Natural No Residente',TO_DATE('2013-08-13 10:32:16','YYYY-MM-DD HH24:MI:SS'),100,'N')
;

-- Aug 13, 2013 10:32:37 AM VET
-- LVE Withholding
INSERT INTO LVE_PersonType (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_PersonType_ID,Name,Updated,UpdatedBy,Value) VALUES (11,50001,TO_DATE('2013-08-13 10:32:37','YYYY-MM-DD HH24:MI:SS'),100,'Y',50002,'PJR Persona Juridica Residente',TO_DATE('2013-08-13 10:32:37','YYYY-MM-DD HH24:MI:SS'),100,'J')
;

-- Aug 13, 2013 10:32:47 AM VET
-- LVE Withholding
INSERT INTO LVE_PersonType (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_PersonType_ID,Name,Updated,UpdatedBy,Value) VALUES (11,50001,TO_DATE('2013-08-13 10:32:46','YYYY-MM-DD HH24:MI:SS'),100,'Y',50003,'PJNR Persona Juridica No Residente',TO_DATE('2013-08-13 10:32:46','YYYY-MM-DD HH24:MI:SS'),100,'J')
;

-- Aug 13, 2013 10:33:30 AM VET
-- LVE Withholding
INSERT INTO LVE_WH_ConceptGroup (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_WH_ConceptGroup_ID,Name,Updated,UpdatedBy,Value) VALUES (11,50001,TO_DATE('2013-08-13 10:33:29','YYYY-MM-DD HH24:MI:SS'),100,'Y',50001,'Withholding ISLR',TO_DATE('2013-08-13 10:33:29','YYYY-MM-DD HH24:MI:SS'),100,'GISLR')
;

-- Aug 13, 2013 10:36:33 AM VET
-- LVE Withholding
INSERT INTO LVE_WH_ConceptGroup (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_WH_ConceptGroup_ID,Name,Updated,UpdatedBy,Value) VALUES (11,50001,TO_DATE('2013-08-13 10:36:33','YYYY-MM-DD HH24:MI:SS'),100,'Y',50002,'Withholding IVA 75',TO_DATE('2013-08-13 10:36:33','YYYY-MM-DD HH24:MI:SS'),100,'GIVA75')
;

-- Aug 13, 2013 10:37:31 AM VET
-- LVE Withholding
INSERT INTO LVE_WH_ConceptGroup (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_WH_ConceptGroup_ID,Name,Updated,UpdatedBy,Value) VALUES (11,50001,TO_DATE('2013-08-13 10:37:31','YYYY-MM-DD HH24:MI:SS'),100,'Y',50003,'Withholding IVA 100',TO_DATE('2013-08-13 10:37:31','YYYY-MM-DD HH24:MI:SS'),100,'GIVA100')
;

-- Aug 13, 2013 10:40:24 AM VET
-- LVE Withholding
INSERT INTO LVE_WH_Concept (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_WH_Concept_ID,LVE_WH_ConceptGroup_ID,Name,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-13 10:40:23','YYYY-MM-DD HH24:MI:SS'),100,'Y',50000,50001,'ADQUISICION DE FONDOS DE COMERCIO',TO_DATE('2013-08-13 10:40:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 13, 2013 10:41:57 AM VET
-- LVE Withholding
INSERT INTO LVE_WH_Combination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,LVE_PersonType_ID,LVE_WH_Combination_ID,LVE_WH_Concept_ID,Processing,Updated,UpdatedBy,Value) VALUES (11,50001,3.000000000000,TO_DATE('2013-08-13 10:41:57','YYYY-MM-DD HH24:MI:SS'),100,'Y',50000,50000,50000,'N',TO_DATE('2013-08-13 10:41:57','YYYY-MM-DD HH24:MI:SS'),100,'079')
;

-- Aug 13, 2013 10:42:45 AM VET
-- LVE Withholding
UPDATE LVE_PersonType SET Name='PJD Persona Juridica Domiciliada',Updated=TO_DATE('2013-08-13 10:42:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LVE_PersonType_ID=50002
;

-- Aug 13, 2013 10:43:08 AM VET
-- LVE Withholding
INSERT INTO LVE_WH_Combination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,LVE_PersonType_ID,LVE_WH_Combination_ID,LVE_WH_Concept_ID,Processing,Updated,UpdatedBy,Value) VALUES (11,50001,5.000000000000,TO_DATE('2013-08-13 10:43:07','YYYY-MM-DD HH24:MI:SS'),100,'Y',50002,50001,50000,'N',TO_DATE('2013-08-13 10:43:07','YYYY-MM-DD HH24:MI:SS'),100,'081')
;

-- Aug 13, 2013 10:43:33 AM VET
-- LVE Withholding
UPDATE LVE_PersonType SET Name='PJND Persona Juridica No Domiciliada',Updated=TO_DATE('2013-08-13 10:43:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LVE_PersonType_ID=50003
;

-- Aug 13, 2013 10:43:47 AM VET
-- LVE Withholding
INSERT INTO LVE_WH_Combination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,LVE_PersonType_ID,LVE_WH_Combination_ID,LVE_WH_Concept_ID,Processing,Updated,UpdatedBy,Value) VALUES (11,50001,5.000000000000,TO_DATE('2013-08-13 10:43:46','YYYY-MM-DD HH24:MI:SS'),100,'Y',50003,50002,50000,'N',TO_DATE('2013-08-13 10:43:46','YYYY-MM-DD HH24:MI:SS'),100,'082')
;

-- Aug 13, 2013 10:44:06 AM VET
-- LVE Withholding
INSERT INTO LVE_WH_Combination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,LVE_PersonType_ID,LVE_WH_Combination_ID,LVE_WH_Concept_ID,Processing,Updated,UpdatedBy,Value) VALUES (11,50001,34.000000000000,TO_DATE('2013-08-13 10:44:05','YYYY-MM-DD HH24:MI:SS'),100,'Y',50001,50003,50000,'N',TO_DATE('2013-08-13 10:44:05','YYYY-MM-DD HH24:MI:SS'),100,'080')
;

-- Aug 13, 2013 10:45:03 AM VET
-- LVE Withholding
INSERT INTO LVE_WH_Concept (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_WH_Concept_ID,LVE_WH_ConceptGroup_ID,Name,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-13 10:45:03','YYYY-MM-DD HH24:MI:SS'),100,'Y',50001,50001,'ARRENDAMIENTO DE BIENES INMUEBLES A (Artc9/Nume.12)',TO_DATE('2013-08-13 10:45:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 13, 2013 10:45:23 AM VET
-- LVE Withholding
INSERT INTO LVE_WH_Combination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,LVE_PersonType_ID,LVE_WH_Combination_ID,LVE_WH_Concept_ID,Processing,Updated,UpdatedBy,Value) VALUES (11,50001,3.000000000000,TO_DATE('2013-08-13 10:45:22','YYYY-MM-DD HH24:MI:SS'),100,'Y',50000,50004,50001,'N',TO_DATE('2013-08-13 10:45:22','YYYY-MM-DD HH24:MI:SS'),100,'061')
;

-- Aug 13, 2013 10:45:39 AM VET
-- LVE Withholding
INSERT INTO LVE_WH_Combination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,LVE_PersonType_ID,LVE_WH_Combination_ID,LVE_WH_Concept_ID,Processing,Updated,UpdatedBy,Value) VALUES (11,50001,5.000000000000,TO_DATE('2013-08-13 10:45:38','YYYY-MM-DD HH24:MI:SS'),100,'Y',50002,50005,50001,'N',TO_DATE('2013-08-13 10:45:38','YYYY-MM-DD HH24:MI:SS'),100,'059')
;

-- Aug 13, 2013 10:45:56 AM VET
-- LVE Withholding
INSERT INTO LVE_WH_Combination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,LVE_PersonType_ID,LVE_WH_Combination_ID,LVE_WH_Concept_ID,Processing,Updated,UpdatedBy,Value) VALUES (11,50001,34.000000000000,TO_DATE('2013-08-13 10:45:55','YYYY-MM-DD HH24:MI:SS'),100,'Y',50001,50006,50001,'N',TO_DATE('2013-08-13 10:45:55','YYYY-MM-DD HH24:MI:SS'),100,'058')
;

-- Aug 13, 2013 10:50:10 AM VET
-- LVE Withholding
INSERT INTO LVE_WH_Concept (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_WH_Concept_ID,LVE_WH_ConceptGroup_ID,Name,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-13 10:50:09','YYYY-MM-DD HH24:MI:SS'),100,'Y',50002,50002,'IVA 75',TO_DATE('2013-08-13 10:50:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 13, 2013 10:51:08 AM VET
-- LVE Withholding
INSERT INTO LVE_WH_Combination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,LVE_WH_Combination_ID,LVE_WH_Concept_ID,Processing,Updated,UpdatedBy,Value) VALUES (11,50001,75.000000000000,TO_DATE('2013-08-13 10:51:08','YYYY-MM-DD HH24:MI:SS'),100,'Y',50007,50002,'N',TO_DATE('2013-08-13 10:51:08','YYYY-MM-DD HH24:MI:SS'),100,'IVA75')
;

-- Aug 13, 2013 10:51:25 AM VET
-- LVE Withholding
INSERT INTO LVE_WH_Concept (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_WH_Concept_ID,LVE_WH_ConceptGroup_ID,Name,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-13 10:51:25','YYYY-MM-DD HH24:MI:SS'),100,'Y',50003,50003,'IVA 100',TO_DATE('2013-08-13 10:51:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 13, 2013 10:51:39 AM VET
-- LVE Withholding
INSERT INTO LVE_WH_Combination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,LVE_WH_Combination_ID,LVE_WH_Concept_ID,Processing,Updated,UpdatedBy,Value) VALUES (11,50001,100.000000000000,TO_DATE('2013-08-13 10:51:39','YYYY-MM-DD HH24:MI:SS'),100,'Y',50008,50003,'N',TO_DATE('2013-08-13 10:51:39','YYYY-MM-DD HH24:MI:SS'),100,'IVA100')
;

-- Aug 13, 2013 10:56:36 AM VET
-- LVE Withholding
INSERT INTO LVE_Withholding (AD_Client_ID,AD_Org_ID,Beneficiary_ID,C_Charge_ID,Classname,Created,CreatedBy,DeclarationDocType_ID,IsActive,IsSOTrx,LVE_WH_ConceptGroup_ID,LVE_WH_Type_ID,LVE_Withholding_ID,Name,Processing,SeqNo,TaxUnitRate,Updated,UpdatedBy,WithholdingDocType_ID) VALUES (11,50001,50003,50005,'org.spin.util.WithholdingGenerateISLR',TO_DATE('2013-08-13 10:56:35','YYYY-MM-DD HH24:MI:SS'),100,50014,'Y','N',50001,50001,50001,'ISLR','N',0,83.333400000000,TO_DATE('2013-08-13 10:56:35','YYYY-MM-DD HH24:MI:SS'),100,50016)
;

-- Aug 13, 2013 10:57:30 AM VET
-- LVE Withholding
INSERT INTO LVE_Withholding (AD_Client_ID,AD_Org_ID,Beneficiary_ID,C_Charge_ID,Classname,Created,CreatedBy,DeclarationDocType_ID,IsActive,IsSOTrx,LVE_WH_ConceptGroup_ID,LVE_WH_Type_ID,LVE_Withholding_ID,Name,Processing,SeqNo,TaxUnitRate,Updated,UpdatedBy,WithholdingDocType_ID) VALUES (11,50001,50003,50006,'org.spin.util.WithholdingGenerateIVA',TO_DATE('2013-08-13 10:57:28','YYYY-MM-DD HH24:MI:SS'),100,50015,'Y','N',50002,50002,50002,'IVA 75%','N',0,0,TO_DATE('2013-08-13 10:57:28','YYYY-MM-DD HH24:MI:SS'),100,50017)
;

-- Aug 13, 2013 10:57:46 AM VET
-- LVE Withholding
INSERT INTO LVE_Withholding (AD_Client_ID,AD_Org_ID,Beneficiary_ID,C_Charge_ID,Classname,Created,CreatedBy,DeclarationDocType_ID,IsActive,IsSOTrx,LVE_WH_ConceptGroup_ID,LVE_WH_Type_ID,LVE_Withholding_ID,Name,Processing,SeqNo,TaxUnitRate,Updated,UpdatedBy,WithholdingDocType_ID) VALUES (11,50001,50003,50006,'org.spin.util.WithholdingGenerateIVA',TO_DATE('2013-08-13 10:57:45','YYYY-MM-DD HH24:MI:SS'),100,50015,'Y','N',50003,50002,50003,'IVA 100%','N',0,0,TO_DATE('2013-08-13 10:57:45','YYYY-MM-DD HH24:MI:SS'),100,50017)
;

-- Aug 13, 2013 10:58:03 AM VET
-- LVE Withholding
INSERT INTO LVE_WH_Config (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_TaxUnit_ID,LVE_WH_Combination_ID,LVE_WH_Config_ID,LVE_Withholding_ID,MinimalAmt,Subtrahend,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-13 10:58:02','YYYY-MM-DD HH24:MI:SS'),100,'Y',50000,50003,50000,50001,8916.67,3031.67,TO_DATE('2013-08-13 10:58:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 13, 2013 10:58:03 AM VET
-- LVE Withholding
INSERT INTO LVE_WH_Config (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_TaxUnit_ID,LVE_WH_Combination_ID,LVE_WH_Config_ID,LVE_Withholding_ID,MinimalAmt,Subtrahend,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-13 10:58:03','YYYY-MM-DD HH24:MI:SS'),100,'Y',50000,50006,50001,50001,8916.67,3031.67,TO_DATE('2013-08-13 10:58:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 13, 2013 10:58:04 AM VET
-- LVE Withholding
INSERT INTO LVE_WH_Config (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_TaxUnit_ID,LVE_WH_Combination_ID,LVE_WH_Config_ID,LVE_Withholding_ID,MinimalAmt,Subtrahend,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-13 10:58:03','YYYY-MM-DD HH24:MI:SS'),100,'Y',50000,50001,50002,50001,8916.67,445.83,TO_DATE('2013-08-13 10:58:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 13, 2013 10:58:04 AM VET
-- LVE Withholding
INSERT INTO LVE_WH_Config (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_TaxUnit_ID,LVE_WH_Combination_ID,LVE_WH_Config_ID,LVE_Withholding_ID,MinimalAmt,Subtrahend,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-13 10:58:04','YYYY-MM-DD HH24:MI:SS'),100,'Y',50000,50002,50003,50001,8916.67,445.83,TO_DATE('2013-08-13 10:58:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 13, 2013 10:58:05 AM VET
-- LVE Withholding
INSERT INTO LVE_WH_Config (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_TaxUnit_ID,LVE_WH_Combination_ID,LVE_WH_Config_ID,LVE_Withholding_ID,MinimalAmt,Subtrahend,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-13 10:58:04','YYYY-MM-DD HH24:MI:SS'),100,'Y',50000,50004,50004,50001,8916.67,267.50,TO_DATE('2013-08-13 10:58:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 13, 2013 10:58:05 AM VET
-- LVE Withholding
INSERT INTO LVE_WH_Config (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_TaxUnit_ID,LVE_WH_Combination_ID,LVE_WH_Config_ID,LVE_Withholding_ID,MinimalAmt,Subtrahend,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-13 10:58:05','YYYY-MM-DD HH24:MI:SS'),100,'Y',50000,50005,50005,50001,8916.67,445.83,TO_DATE('2013-08-13 10:58:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 13, 2013 10:58:06 AM VET
-- LVE Withholding
INSERT INTO LVE_WH_Config (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_TaxUnit_ID,LVE_WH_Combination_ID,LVE_WH_Config_ID,LVE_Withholding_ID,MinimalAmt,Subtrahend,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-13 10:58:05','YYYY-MM-DD HH24:MI:SS'),100,'Y',50000,50000,50006,50001,8916.67,267.50,TO_DATE('2013-08-13 10:58:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 13, 2013 10:58:35 AM VET
-- LVE Withholding
INSERT INTO LVE_WH_Config (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_TaxUnit_ID,LVE_WH_Combination_ID,LVE_WH_Config_ID,LVE_Withholding_ID,MinimalAmt,Subtrahend,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-13 10:58:34','YYYY-MM-DD HH24:MI:SS'),100,'Y',50000,50007,50007,50002,0.00,0.00,TO_DATE('2013-08-13 10:58:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 13, 2013 10:58:41 AM VET
-- LVE Withholding
INSERT INTO LVE_WH_Config (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_TaxUnit_ID,LVE_WH_Combination_ID,LVE_WH_Config_ID,LVE_Withholding_ID,MinimalAmt,Subtrahend,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-13 10:58:40','YYYY-MM-DD HH24:MI:SS'),100,'Y',50000,50008,50008,50003,0.00,0.00,TO_DATE('2013-08-13 10:58:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 13, 2013 10:59:41 AM VET
-- LVE Withholding
UPDATE LVE_Withholding SET SeqNo=10,IsActive='Y' WHERE LVE_Withholding_ID=50001
;

-- Aug 13, 2013 10:59:41 AM VET
-- LVE Withholding
UPDATE LVE_Withholding SET SeqNo=20,IsActive='Y' WHERE LVE_Withholding_ID=50002
;

-- Aug 13, 2013 10:59:41 AM VET
-- LVE Withholding
UPDATE LVE_Withholding SET SeqNo=30,IsActive='Y' WHERE LVE_Withholding_ID=50003
;

