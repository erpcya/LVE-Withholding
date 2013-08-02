-- 1/08/2013 04:58:43 PM VET
-- LVE Withholding
UPDATE C_Charge SET ChargeAmt=1.000000000000, Name='RETETENCIÓN I.S.L.R.',Updated=TO_DATE('2013-08-01 16:58:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_Charge_ID=1000000
;

-- 1/08/2013 04:58:43 PM VET
-- LVE Withholding
UPDATE C_Charge_Trl SET Description=NULL,Name='RETETENCIÓN I.S.L.R.',IsTranslated='Y' WHERE C_Charge_ID=1000000
;

-- 1/08/2013 04:58:54 PM VET
-- LVE Withholding
INSERT INTO C_Charge (AD_Client_ID,AD_Org_ID,C_Charge_ID,C_TaxCategory_ID,ChargeAmt,Created,CreatedBy,IsActive,IsSameCurrency,IsSameTax,IsTaxIncluded,Name,Updated,UpdatedBy) VALUES (11,50001,1000001,1000000,1.000000000000,TO_DATE('2013-08-01 16:58:54','YYYY-MM-DD HH24:MI:SS'),100,'Y','N','N','N','RETETENCIÓN I.V.A.',TO_DATE('2013-08-01 16:58:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 1/08/2013 04:58:54 PM VET
-- LVE Withholding
INSERT INTO C_Charge_Trl (AD_Language,C_Charge_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_Charge_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_Charge t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_Charge_ID=1000001 AND NOT EXISTS (SELECT * FROM C_Charge_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_Charge_ID=t.C_Charge_ID)
;

-- 1/08/2013 04:58:54 PM VET
-- LVE Withholding
INSERT INTO C_Charge_Acct (C_Charge_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,Ch_Expense_Acct,Ch_Revenue_Acct) SELECT 1000001, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', SysDate,100,SysDate,100,p.Ch_Expense_Acct,p.Ch_Revenue_Acct FROM C_AcctSchema_Default p WHERE p.AD_Client_ID=11 AND NOT EXISTS (SELECT * FROM C_Charge_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.C_Charge_ID=1000001)
;

-- 1/08/2013 05:00:12 PM VET
-- LVE Withholding
UPDATE AD_Sequence SET CurrentNext=1,Updated=TO_DATE('2013-08-01 17:00:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Sequence_ID=1000000
;

-- 1/08/2013 05:00:21 PM VET
-- LVE Withholding
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (11,0,1000006,TO_DATE('2013-08-01 17:00:21','YYYY-MM-DD HH24:MI:SS'),100,1,100,1,'Y','N','Y','N','CXP-Retencion IVA','N',1000000,TO_DATE('2013-08-01 17:00:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 1/08/2013 05:00:41 PM VET
-- LVE Withholding
INSERT INTO C_DocType (AD_Client_ID,AD_Org_ID,C_DocType_ID,Created,CreatedBy,DocBaseType,DocNoSequence_ID,DocumentCopies,GL_Category_ID,HasCharges,HasProforma,IsActive,IsCreateCounter,IsDefault,IsDefaultCounterDoc,IsDocNoControlled,IsIndexed,IsInTransit,IsOverwriteDateOnComplete,IsOverwriteSeqOnComplete,IsPickQAConfirm,IsPrepareSplitDocument,IsShipConfirm,IsSOTrx,IsSplitWhenDifference,Name,PrintName,Updated,UpdatedBy) VALUES (11,0,1000003,TO_DATE('2013-08-01 17:00:41','YYYY-MM-DD HH24:MI:SS'),100,'APC',1000006,1,112,'N','N','Y','Y','N','N','Y','Y','N','N','N','N','Y','N','N','N','CXP-Retencion IVA  (cr)','RETENCION IVA',TO_DATE('2013-08-01 17:00:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 1/08/2013 05:00:41 PM VET
-- LVE Withholding
INSERT INTO C_DocType_Trl (AD_Language,C_DocType_ID, DocumentNote,Name,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_DocType_ID, t.DocumentNote,t.Name,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_DocType t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_DocType_ID=1000003 AND NOT EXISTS (SELECT * FROM C_DocType_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_DocType_ID=t.C_DocType_ID)
;

-- 1/08/2013 05:00:41 PM VET
-- LVE Withholding
INSERT INTO AD_Document_Action_Access (AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,C_DocType_ID , AD_Ref_List_ID, AD_Role_ID) (SELECT 11,0,'Y', SysDate,100, SysDate,100, doctype.C_DocType_ID, action.AD_Ref_List_ID, rol.AD_Role_ID FROM AD_Client client INNER JOIN C_DocType doctype ON (doctype.AD_Client_ID=client.AD_Client_ID) INNER JOIN AD_Ref_List action ON (action.AD_Reference_ID=135) INNER JOIN AD_Role rol ON (rol.AD_Client_ID=client.AD_Client_ID) WHERE client.AD_Client_ID=11 AND doctype.C_DocType_ID=1000003 AND rol.IsManual='N')
;

-- 1/08/2013 05:00:46 PM VET
-- LVE Withholding
UPDATE C_DocType SET GL_Category_ID=112,Updated=TO_DATE('2013-08-01 17:00:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_DocType_ID=1000000
;

-- 1/08/2013 05:01:05 PM VET
-- LVE Withholding
UPDATE C_DocType SET DocumentCopies=0,Updated=TO_DATE('2013-08-01 17:01:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_DocType_ID=1000003
;

-- 1/08/2013 05:01:14 PM VET
-- LVE Withholding
UPDATE C_DocType SET DocumentCopies=0,Updated=TO_DATE('2013-08-01 17:01:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_DocType_ID=1000000
;

-- 1/08/2013 05:02:48 PM VET
-- LVE Withholding
INSERT INTO C_DocType (AD_Client_ID,AD_Org_ID,C_DocType_ID,Created,CreatedBy,DocBaseType,DocNoSequence_ID,DocumentCopies,GL_Category_ID,HasCharges,HasProforma,IsActive,IsCreateCounter,IsDefault,IsDefaultCounterDoc,IsDocNoControlled,IsIndexed,IsInTransit,IsOverwriteDateOnComplete,IsOverwriteSeqOnComplete,IsPickQAConfirm,IsPrepareSplitDocument,IsShipConfirm,IsSOTrx,IsSplitWhenDifference,Name,PrintName,Updated,UpdatedBy) VALUES (11,0,1000004,TO_DATE('2013-08-01 17:02:48','YYYY-MM-DD HH24:MI:SS'),100,'API',1000001,1,112,'N','N','Y','Y','N','N','Y','Y','N','N','N','N','Y','N','N','N','CXP-Declaracion Impuesto (db)','DECLARACION IMPUESTO',TO_DATE('2013-08-01 17:02:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 1/08/2013 05:02:48 PM VET
-- LVE Withholding
INSERT INTO C_DocType_Trl (AD_Language,C_DocType_ID, DocumentNote,Name,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_DocType_ID, t.DocumentNote,t.Name,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_DocType t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_DocType_ID=1000004 AND NOT EXISTS (SELECT * FROM C_DocType_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_DocType_ID=t.C_DocType_ID)
;

-- 1/08/2013 05:02:48 PM VET
-- LVE Withholding
INSERT INTO AD_Document_Action_Access (AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,C_DocType_ID , AD_Ref_List_ID, AD_Role_ID) (SELECT 11,0,'Y', SysDate,100, SysDate,100, doctype.C_DocType_ID, action.AD_Ref_List_ID, rol.AD_Role_ID FROM AD_Client client INNER JOIN C_DocType doctype ON (doctype.AD_Client_ID=client.AD_Client_ID) INNER JOIN AD_Ref_List action ON (action.AD_Reference_ID=135) INNER JOIN AD_Role rol ON (rol.AD_Client_ID=client.AD_Client_ID) WHERE client.AD_Client_ID=11 AND doctype.C_DocType_ID=1000004 AND rol.IsManual='N')
;

-- 1/08/2013 05:03:57 PM VET
-- LVE Withholding
INSERT INTO LVE_Withholding (AD_Client_ID,AD_Org_ID,Beneficiary,C_Charge_ID,ClassName,Created,CreatedBy,DeclarationDocType,IsActive,IsSOTrx,LVE_Withholding_ID,LVE_WithholdingType_ID,Name,TaxUnitRate,Updated,UpdatedBy,WithholdingDocType) VALUES (11,50001,113,1000001,'Test'TO_DATE('2013-08-01 17:03:57','YYYY-MM-DD HH24:MI:SS'),100,1000004,'Y','N',1000001,1000000,'RETENCIÓN I.V.A. 75%',0,TO_DATE('2013-08-01 17:03:57','YYYY-MM-DD HH24:MI:SS'),100,1000003)
;

-- 1/08/2013 05:04:48 PM VET
-- LVE Withholding
INSERT INTO LVE_Withholding (AD_Client_ID,AD_Org_ID,Beneficiary,C_Charge_ID,Created,CreatedBy,DeclarationDocType,IsActive,IsSOTrx,LVE_Withholding_ID,LVE_WithholdingType_ID,Name,TaxUnitRate,Updated,UpdatedBy,WithholdingDocType) VALUES (11,50001,113,1000001,TO_DATE('2013-08-01 17:04:48','YYYY-MM-DD HH24:MI:SS'),100,1000004,'Y','N',1000002,1000000,'RETENCIÓN I.V.A. 100%',0,TO_DATE('2013-08-01 17:04:48','YYYY-MM-DD HH24:MI:SS'),100,1000003)
;

-- 1/08/2013 05:05:32 PM VET
-- LVE Withholding
INSERT INTO LVE_WithholdingConcept (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,IsActive,LVE_Withholding_ID,LVE_WithholdingConcept_ID,Name,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-01 17:05:32','YYYY-MM-DD HH24:MI:SS'),100,'IVA 100','Y',1000002,1000015,'IVA 100',TO_DATE('2013-08-01 17:05:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 1/08/2013 05:06:13 PM VET
-- LVE Withholding
INSERT INTO LVE_WH_Conbination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,LVE_WH_Conbination_ID,LVE_WithholdingConcept_ID,Processing,Updated,UpdatedBy,Value) VALUES (11,50001,100.000000000000,TO_DATE('2013-08-01 17:06:13','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000037,1000015,'N',TO_DATE('2013-08-01 17:06:13','YYYY-MM-DD HH24:MI:SS'),100,'IVA100')
;

-- 1/08/2013 05:06:39 PM VET
-- LVE Withholding
INSERT INTO LVE_WithholdingConcept (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,IsActive,LVE_Withholding_ID,LVE_WithholdingConcept_ID,Name,Updated,UpdatedBy) VALUES (11,50001,TO_DATE('2013-08-01 17:06:39','YYYY-MM-DD HH24:MI:SS'),100,'IVA 75','Y',1000001,1000016,'IVA 75',TO_DATE('2013-08-01 17:06:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 1/08/2013 05:06:50 PM VET
-- LVE Withholding
INSERT INTO LVE_WH_Conbination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,LVE_WH_Conbination_ID,LVE_WithholdingConcept_ID,Processing,Updated,UpdatedBy,Value) VALUES (11,50001,75.000000000000,TO_DATE('2013-08-01 17:06:50','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000038,1000016,'N',TO_DATE('2013-08-01 17:06:50','YYYY-MM-DD HH24:MI:SS'),100,'IVA75')
;

