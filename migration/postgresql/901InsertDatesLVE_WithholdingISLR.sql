-- 1/08/2013 03:43:24 PM VET
-- LVE Withholding
INSERT INTO C_TaxCategory (AD_Client_ID,AD_Org_ID,C_TaxCategory_ID,Created,CreatedBy,Description,IsActive,IsDefault,Name,Updated,UpdatedBy) VALUES (11,50001,1000000,TO_TIMESTAMP('2013-08-01 15:43:24','YYYY-MM-DD HH24:MI:SS'),100,'EXENTO','Y','N','EXENTO',TO_TIMESTAMP('2013-08-01 15:43:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 1/08/2013 03:43:24 PM VET
-- LVE Withholding
INSERT INTO C_TaxCategory_Trl (AD_Language,C_TaxCategory_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_TaxCategory_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_TaxCategory t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_TaxCategory_ID=1000000 AND NOT EXISTS (SELECT * FROM C_TaxCategory_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_TaxCategory_ID=t.C_TaxCategory_ID)
;

-- 1/08/2013 03:43:48 PM VET
-- LVE Withholding
INSERT INTO C_Charge (AD_Client_ID,AD_Org_ID,C_Charge_ID,C_TaxCategory_ID,ChargeAmt,Created,CreatedBy,IsActive,IsSameCurrency,IsSameTax,IsTaxIncluded,Name,Updated,UpdatedBy) VALUES (11,50001,1000000,1000000,0,TO_TIMESTAMP('2013-08-01 15:43:48','YYYY-MM-DD HH24:MI:SS'),100,'Y','N','N','N','RET ISLR POR PAGAR',TO_TIMESTAMP('2013-08-01 15:43:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 1/08/2013 03:43:48 PM VET
-- LVE Withholding
INSERT INTO C_Charge_Trl (AD_Language,C_Charge_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_Charge_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_Charge t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_Charge_ID=1000000 AND NOT EXISTS (SELECT * FROM C_Charge_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_Charge_ID=t.C_Charge_ID)
;

-- 1/08/2013 03:43:48 PM VET
-- LVE Withholding
INSERT INTO C_Charge_Acct (C_Charge_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,Ch_Expense_Acct,Ch_Revenue_Acct) SELECT 1000000, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', CURRENT_TIMESTAMP,100,CURRENT_TIMESTAMP,100,p.Ch_Expense_Acct,p.Ch_Revenue_Acct FROM C_AcctSchema_Default p WHERE p.AD_Client_ID=11 AND NOT EXISTS (SELECT * FROM C_Charge_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.C_Charge_ID=1000000)
;

-- 1/08/2013 03:45:47 PM VET
-- LVE Withholding
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (11,0,1000000,TO_TIMESTAMP('2013-08-01 15:45:47','YYYY-MM-DD HH24:MI:SS'),100,0,100,1,'Y','N','Y','N','CXP-Retencion ISLR','N',1000000,TO_TIMESTAMP('2013-08-01 15:45:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 1/08/2013 03:47:24 PM VET
-- LVE Withholding
INSERT INTO C_DocType (AD_Client_ID,AD_Org_ID,C_DocType_ID,Created,CreatedBy,DocBaseType,DocNoSequence_ID,DocumentCopies,GL_Category_ID,HasCharges,HasProforma,IsActive,IsCreateCounter,IsDefault,IsDefaultCounterDoc,IsDocNoControlled,IsIndexed,IsInTransit,IsOverwriteDateOnComplete,IsOverwriteSeqOnComplete,IsPickQAConfirm,IsPrepareSplitDocument,IsShipConfirm,IsSOTrx,IsSplitWhenDifference,Name,PrintName,Updated,UpdatedBy) VALUES (11,0,1000000,TO_TIMESTAMP('2013-08-01 15:47:24','YYYY-MM-DD HH24:MI:SS'),100,'APC',1000000,1,109,'N','N','Y','Y','N','N','Y','Y','N','N','N','N','Y','N','N','N','CXP-Retencion ISLR (cr)','RETENCION ISLR',TO_TIMESTAMP('2013-08-01 15:47:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 1/08/2013 03:47:24 PM VET
-- LVE Withholding
INSERT INTO C_DocType_Trl (AD_Language,C_DocType_ID, DocumentNote,Name,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_DocType_ID, t.DocumentNote,t.Name,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_DocType t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_DocType_ID=1000000 AND NOT EXISTS (SELECT * FROM C_DocType_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_DocType_ID=t.C_DocType_ID)
;

-- 1/08/2013 03:47:24 PM VET
-- LVE Withholding
INSERT INTO AD_Document_Action_Access (AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,C_DocType_ID , AD_Ref_List_ID, AD_Role_ID) (SELECT 11,0,'Y', CURRENT_TIMESTAMP,100, CURRENT_TIMESTAMP,100, doctype.C_DocType_ID, "action".AD_Ref_List_ID, rol.AD_Role_ID FROM AD_Client client INNER JOIN C_DocType doctype ON (doctype.AD_Client_ID=client.AD_Client_ID) INNER JOIN AD_Ref_List "action" ON ("action".AD_Reference_ID=135) INNER JOIN AD_Role rol ON (rol.AD_Client_ID=client.AD_Client_ID) WHERE client.AD_Client_ID=11 AND doctype.C_DocType_ID=1000000 AND rol.IsManual='N')
;

-- 1/08/2013 03:48:36 PM VET
-- LVE Withholding
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,Prefix,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (11,0,1000001,TO_TIMESTAMP('2013-08-01 15:48:36','YYYY-MM-DD HH24:MI:SS'),100,1000000,100,1,'Y','N','Y','N','CXP-Declaracion Impuesto','DI-','N',1000000,TO_TIMESTAMP('2013-08-01 15:48:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 1/08/2013 03:48:53 PM VET
-- LVE Withholding
INSERT INTO C_DocType (AD_Client_ID,AD_Org_ID,C_DocType_ID,Created,CreatedBy,DocBaseType,DocNoSequence_ID,DocumentCopies,GL_Category_ID,HasCharges,HasProforma,IsActive,IsCreateCounter,IsDefault,IsDefaultCounterDoc,IsDocNoControlled,IsIndexed,IsInTransit,IsOverwriteDateOnComplete,IsOverwriteSeqOnComplete,IsPickQAConfirm,IsPrepareSplitDocument,IsShipConfirm,IsSOTrx,IsSplitWhenDifference,Name,PrintName,Updated,UpdatedBy) VALUES (11,0,1000001,TO_TIMESTAMP('2013-08-01 15:48:53','YYYY-MM-DD HH24:MI:SS'),100,'APC',1000001,1,112,'N','N','Y','Y','N','N','Y','Y','N','N','N','N','Y','N','N','N','CXP-Declaracion Impuesto (cr)','DECLARACION IMPUESTO',TO_TIMESTAMP('2013-08-01 15:48:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 1/08/2013 03:48:53 PM VET
-- LVE Withholding
INSERT INTO C_DocType_Trl (AD_Language,C_DocType_ID, DocumentNote,Name,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_DocType_ID, t.DocumentNote,t.Name,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_DocType t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_DocType_ID=1000001 AND NOT EXISTS (SELECT * FROM C_DocType_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_DocType_ID=t.C_DocType_ID)
;

-- 1/08/2013 03:48:53 PM VET
-- LVE Withholding
INSERT INTO AD_Document_Action_Access (AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,C_DocType_ID , AD_Ref_List_ID, AD_Role_ID) (SELECT 11,0,'Y', CURRENT_TIMESTAMP,100, CURRENT_TIMESTAMP,100, doctype.C_DocType_ID, "action".AD_Ref_List_ID, rol.AD_Role_ID FROM AD_Client client INNER JOIN C_DocType doctype ON (doctype.AD_Client_ID=client.AD_Client_ID) INNER JOIN AD_Ref_List "action" ON ("action".AD_Reference_ID=135) INNER JOIN AD_Role rol ON (rol.AD_Client_ID=client.AD_Client_ID) WHERE client.AD_Client_ID=11 AND doctype.C_DocType_ID=1000001 AND rol.IsManual='N')
;

-- 1/08/2013 03:49:34 PM VET
-- LVE Withholding
INSERT INTO LVE_Withholding (AD_Client_ID,AD_Org_ID,Beneficiary,C_Charge_ID,ClassName,Created,CreatedBy,DeclarationDocType,IsActive,IsSOTrx,LVE_Withholding_ID,LVE_WithholdingType_ID,Name,TaxUnitRate,Updated,UpdatedBy,WithholdingDocType) VALUES (11,50001,113,1000000,'Test',TO_TIMESTAMP('2013-08-01 15:49:34','YYYY-MM-DD HH24:MI:SS'),100,1000001,'Y','N',1000000,1000001,'RETENCIÓN I.S.L.R.',0,TO_TIMESTAMP('2013-08-01 15:49:34','YYYY-MM-DD HH24:MI:SS'),100,1000000)
;

-- 1/08/2013 03:50:42 PM VET
-- LVE Withholding
INSERT INTO C_DocType (AD_Client_ID,AD_Org_ID,C_DocType_ID,Created,CreatedBy,DocBaseType,DocumentCopies,GL_Category_ID,HasCharges,HasProforma,IsActive,IsCreateCounter,IsDefault,IsDefaultCounterDoc,IsDocNoControlled,IsIndexed,IsInTransit,IsOverwriteDateOnComplete,IsOverwriteSeqOnComplete,IsPickQAConfirm,IsPrepareSplitDocument,IsShipConfirm,IsSOTrx,IsSplitWhenDifference,Name,PrintName,Updated,UpdatedBy) VALUES (11,0,1000002,TO_TIMESTAMP('2013-08-01 15:50:42','YYYY-MM-DD HH24:MI:SS'),100,'API',0,112,'N','N','Y','Y','N','N','N','Y','N','N','N','N','Y','N','N','N','CXP-Factura','FACTURA',TO_TIMESTAMP('2013-08-01 15:50:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 1/08/2013 03:50:42 PM VET
-- LVE Withholding
INSERT INTO C_DocType_Trl (AD_Language,C_DocType_ID, DocumentNote,Name,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_DocType_ID, t.DocumentNote,t.Name,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_DocType t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_DocType_ID=1000002 AND NOT EXISTS (SELECT * FROM C_DocType_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_DocType_ID=t.C_DocType_ID)
;

-- 1/08/2013 03:50:42 PM VET
-- LVE Withholding
INSERT INTO AD_Document_Action_Access (AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,C_DocType_ID , AD_Ref_List_ID, AD_Role_ID) (SELECT 11,0,'Y', CURRENT_TIMESTAMP,100, CURRENT_TIMESTAMP,100, doctype.C_DocType_ID, "action".AD_Ref_List_ID, rol.AD_Role_ID FROM AD_Client client INNER JOIN C_DocType doctype ON (doctype.AD_Client_ID=client.AD_Client_ID) INNER JOIN AD_Ref_List "action" ON ("action".AD_Reference_ID=135) INNER JOIN AD_Role rol ON (rol.AD_Client_ID=client.AD_Client_ID) WHERE client.AD_Client_ID=11 AND doctype.C_DocType_ID=1000002 AND rol.IsManual='N')
;

-- 1/08/2013 04:16:04 PM VET
-- LVE Withholding
INSERT INTO LVE_WithholdingConcept (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,IsActive,LVE_Withholding_ID,LVE_WithholdingConcept_ID,Name,Updated,UpdatedBy) VALUES (11,50001,TO_TIMESTAMP('2013-08-01 16:16:04','YYYY-MM-DD HH24:MI:SS'),100,'ADQUISICION DE FONDOS DE COMERCIO','Y',1000000,1000000,'ADQUISICION DE FONDOS DE COMERCIO',TO_TIMESTAMP('2013-08-01 16:16:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 1/08/2013 04:17:08 PM VET
-- LVE Withholding
INSERT INTO LVE_WithholdingConcept (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,IsActive,LVE_Withholding_ID,LVE_WithholdingConcept_ID,Name,Updated,UpdatedBy) VALUES (11,50001,TO_TIMESTAMP('2013-08-01 16:17:08','YYYY-MM-DD HH24:MI:SS'),100,'ARRENDAMIENTO DE BIENES INMUEBLES A (Artic 9 / Num. 12)','Y',1000000,1000001,'ARRENDAMIENTO DE BIENES INMUEBLES A (Artic 9 / Num. 12)',TO_TIMESTAMP('2013-08-01 16:17:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 1/08/2013 04:17:20 PM VET
-- LVE Withholding
INSERT INTO LVE_WithholdingConcept (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,IsActive,LVE_Withholding_ID,LVE_WithholdingConcept_ID,Name,Updated,UpdatedBy) VALUES (11,50001,TO_TIMESTAMP('2013-08-01 16:17:20','YYYY-MM-DD HH24:MI:SS'),100,'ARRENDAMIENTO DE BIENES INMUEBLES A (Artic 9 / Num. 13)','Y',1000000,1000002,'ARRENDAMIENTO DE BIENES INMUEBLES A (Artic 9 / Num. 13)',TO_TIMESTAMP('2013-08-01 16:17:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 1/08/2013 04:17:36 PM VET
-- LVE Withholding
INSERT INTO LVE_WithholdingConcept (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,IsActive,LVE_Withholding_ID,LVE_WithholdingConcept_ID,Name,Updated,UpdatedBy) VALUES (11,50001,TO_TIMESTAMP('2013-08-01 16:17:36','YYYY-MM-DD HH24:MI:SS'),100,'ASISTENCIA TECNICA','Y',1000000,1000003,'ASISTENCIA TECNICA',TO_TIMESTAMP('2013-08-01 16:17:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 1/08/2013 04:17:42 PM VET
-- LVE Withholding
INSERT INTO LVE_WithholdingConcept (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WithholdingConcept_ID,Name,Updated,UpdatedBy) VALUES (11,50001,TO_TIMESTAMP('2013-08-01 16:17:42','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000004,'COMISIONES A',TO_TIMESTAMP('2013-08-01 16:17:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 1/08/2013 04:17:49 PM VET
-- LVE Withholding
UPDATE LVE_WithholdingConcept SET Description='COMISIONES A',Updated=TO_TIMESTAMP('2013-08-01 16:17:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LVE_WithholdingConcept_ID=1000004
;

-- 1/08/2013 04:18:21 PM VET
-- LVE Withholding
INSERT INTO LVE_WithholdingConcept (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,IsActive,LVE_Withholding_ID,LVE_WithholdingConcept_ID,Name,Updated,UpdatedBy) VALUES (11,50001,TO_TIMESTAMP('2013-08-01 16:18:21','YYYY-MM-DD HH24:MI:SS'),100,'CONTRATISTA Y SUB-CONTRATISTAS POR PRESTACION DE SERVICIOS EN Vzla','Y',1000000,1000005,'CONTRATISTA Y SUB-CONTRATISTAS POR PRESTACION DE SERVICIOS EN Vzla',TO_TIMESTAMP('2013-08-01 16:18:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 1/08/2013 04:18:34 PM VET
-- LVE Withholding
INSERT INTO LVE_WithholdingConcept (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LVE_Withholding_ID,LVE_WithholdingConcept_ID,Name,Updated,UpdatedBy) VALUES (11,50001,TO_TIMESTAMP('2013-08-01 16:18:34','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000006,'CORREDORES Y AGENTES DE SEGUROS',TO_TIMESTAMP('2013-08-01 16:18:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 1/08/2013 04:18:39 PM VET
-- LVE Withholding
UPDATE LVE_WithholdingConcept SET Description='CORREDORES Y AGENTES DE SEGUROS',Updated=TO_TIMESTAMP('2013-08-01 16:18:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LVE_WithholdingConcept_ID=1000006
;

-- 1/08/2013 04:19:00 PM VET
-- LVE Withholding
INSERT INTO LVE_WithholdingConcept (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,IsActive,LVE_Withholding_ID,LVE_WithholdingConcept_ID,Name,Updated,UpdatedBy) VALUES (11,50001,TO_TIMESTAMP('2013-08-01 16:19:00','YYYY-MM-DD HH24:MI:SS'),100,'GASTOS DE TRANSPORTE CONSTITUIDOS POR FLETES','Y',1000000,1000007,'GASTOS DE TRANSPORTE CONSTITUIDOS POR FLETES',TO_TIMESTAMP('2013-08-01 16:19:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 1/08/2013 04:19:14 PM VET
-- LVE Withholding
INSERT INTO LVE_WithholdingConcept (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,IsActive,LVE_Withholding_ID,LVE_WithholdingConcept_ID,Name,Updated,UpdatedBy) VALUES (11,50001,TO_TIMESTAMP('2013-08-01 16:19:14','YYYY-MM-DD HH24:MI:SS'),100,'HONORARIOS PROFESIONALES','Y',1000000,1000008,'HONORARIOS PROFESIONALES',TO_TIMESTAMP('2013-08-01 16:19:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 1/08/2013 04:19:21 PM VET
-- LVE Withholding
INSERT INTO LVE_WithholdingConcept (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,IsActive,LVE_Withholding_ID,LVE_WithholdingConcept_ID,Name,Updated,UpdatedBy) VALUES (11,50001,TO_TIMESTAMP('2013-08-01 16:19:21','YYYY-MM-DD HH24:MI:SS'),100,'INTERESES A','Y',1000000,1000009,'INTERESES A',TO_TIMESTAMP('2013-08-01 16:19:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 1/08/2013 04:19:50 PM VET
-- LVE Withholding
INSERT INTO LVE_WithholdingConcept (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,IsActive,LVE_Withholding_ID,LVE_WithholdingConcept_ID,Name,Updated,UpdatedBy) VALUES (11,50001,TO_TIMESTAMP('2013-08-01 16:19:50','YYYY-MM-DD HH24:MI:SS'),100,'PUBLICIDAD, PROPAGANDA, CESION O VENTA DE ESPACIOS PARA TALES FINES','Y',1000000,1000010,'PUBLICIDAD, PROPAGANDA, CESION O VENTA DE ESPACIOS PARA TALES FINES',TO_TIMESTAMP('2013-08-01 16:19:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 1/08/2013 04:20:04 PM VET
-- LVE Withholding
INSERT INTO LVE_WithholdingConcept (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,IsActive,LVE_Withholding_ID,LVE_WithholdingConcept_ID,Name,Updated,UpdatedBy) VALUES (11,50001,TO_TIMESTAMP('2013-08-01 16:20:04','YYYY-MM-DD HH24:MI:SS'),100,'SERVICIOS TECNOLOGICOS','Y',1000000,1000011,'SERVICIOS TECNOLOGICOS',TO_TIMESTAMP('2013-08-01 16:20:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 1/08/2013 04:20:17 PM VET
-- LVE Withholding
INSERT INTO LVE_WithholdingConcept (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,IsActive,LVE_Withholding_ID,LVE_WithholdingConcept_ID,Name,Updated,UpdatedBy) VALUES (11,50001,TO_TIMESTAMP('2013-08-01 16:20:17','YYYY-MM-DD HH24:MI:SS'),100,'SUELDOS Y SALARIOS','Y',1000000,1000012,'SUELDOS Y SALARIOS',TO_TIMESTAMP('2013-08-01 16:20:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 1/08/2013 04:20:37 PM VET
-- LVE Withholding
INSERT INTO LVE_WithholdingConcept (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,IsActive,LVE_Withholding_ID,LVE_WithholdingConcept_ID,Name,Updated,UpdatedBy) VALUES (11,50001,TO_TIMESTAMP('2013-08-01 16:20:37','YYYY-MM-DD HH24:MI:SS'),100,'VENTA DE BIENES O SERVICIOES CON TARJETA DE CREDITO O CONSUMO','Y',1000000,1000013,'VENTA DE BIENES O SERVICIOES CON TARJETA DE CREDITO O CONSUMO',TO_TIMESTAMP('2013-08-01 16:20:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 1/08/2013 04:21:55 PM VET
-- LVE Withholding
INSERT INTO LVE_WH_Conbination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,LVE_PersonType_ID,LVE_WH_Conbination_ID,LVE_WithholdingConcept_ID,Processing,Updated,UpdatedBy,Value) VALUES (11,50001,3.000000000000,TO_TIMESTAMP('2013-08-01 16:21:55','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000000,1000000,'N',TO_TIMESTAMP('2013-08-01 16:21:55','YYYY-MM-DD HH24:MI:SS'),100,'079')
;

-- 1/08/2013 04:23:56 PM VET
-- LVE Withholding
INSERT INTO LVE_WH_Conbination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,LVE_PersonType_ID,LVE_WH_Conbination_ID,LVE_WithholdingConcept_ID,Processing,Updated,UpdatedBy,Value) VALUES (11,50001,5.000000000000,TO_TIMESTAMP('2013-08-01 16:23:56','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000002,1000001,1000000,'N',TO_TIMESTAMP('2013-08-01 16:23:56','YYYY-MM-DD HH24:MI:SS'),100,'081')
;

-- 1/08/2013 04:24:13 PM VET
-- LVE Withholding
INSERT INTO LVE_WH_Conbination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,LVE_PersonType_ID,LVE_WH_Conbination_ID,LVE_WithholdingConcept_ID,Processing,Updated,UpdatedBy,Value) VALUES (11,50001,5.000000000000,TO_TIMESTAMP('2013-08-01 16:24:13','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000003,1000002,1000000,'N',TO_TIMESTAMP('2013-08-01 16:24:13','YYYY-MM-DD HH24:MI:SS'),100,'082')
;

-- 1/08/2013 04:24:44 PM VET
-- LVE Withholding
INSERT INTO LVE_WH_Conbination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,LVE_PersonType_ID,LVE_WH_Conbination_ID,LVE_WithholdingConcept_ID,Processing,Updated,UpdatedBy,Value) VALUES (11,50001,34.000000000000,TO_TIMESTAMP('2013-08-01 16:24:44','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000001,1000003,1000000,'N',TO_TIMESTAMP('2013-08-01 16:24:44','YYYY-MM-DD HH24:MI:SS'),100,'080')
;

-- 1/08/2013 04:25:21 PM VET
-- LVE Withholding
INSERT INTO LVE_WH_Conbination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,LVE_PersonType_ID,LVE_WH_Conbination_ID,LVE_WithholdingConcept_ID,Processing,Updated,UpdatedBy,Value) VALUES (11,50001,3.000000000000,TO_TIMESTAMP('2013-08-01 16:25:21','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000004,1000001,'N',TO_TIMESTAMP('2013-08-01 16:25:21','YYYY-MM-DD HH24:MI:SS'),100,'061')
;

-- 1/08/2013 04:25:37 PM VET
-- LVE Withholding
INSERT INTO LVE_WH_Conbination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,LVE_PersonType_ID,LVE_WH_Conbination_ID,LVE_WithholdingConcept_ID,Processing,Updated,UpdatedBy,Value) VALUES (11,50001,5.000000000000,TO_TIMESTAMP('2013-08-01 16:25:37','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000002,1000005,1000001,'N',TO_TIMESTAMP('2013-08-01 16:25:37','YYYY-MM-DD HH24:MI:SS'),100,'059')
;

-- 1/08/2013 04:25:56 PM VET
-- LVE Withholding
INSERT INTO LVE_WH_Conbination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,LVE_PersonType_ID,LVE_WH_Conbination_ID,LVE_WithholdingConcept_ID,Processing,Updated,UpdatedBy,Value) VALUES (11,50001,34.000000000000,TO_TIMESTAMP('2013-08-01 16:25:56','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000001,1000006,1000001,'N',TO_TIMESTAMP('2013-08-01 16:25:56','YYYY-MM-DD HH24:MI:SS'),100,'058')
;

-- 1/08/2013 04:26:15 PM VET
-- LVE Withholding
INSERT INTO LVE_WH_Conbination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,LVE_PersonType_ID,LVE_WH_Conbination_ID,LVE_WithholdingConcept_ID,Processing,Updated,UpdatedBy,Value) VALUES (11,50001,3.000000000000,TO_TIMESTAMP('2013-08-01 16:26:15','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000007,1000002,'N',TO_TIMESTAMP('2013-08-01 16:26:15','YYYY-MM-DD HH24:MI:SS'),100,'057')
;

-- 1/08/2013 04:26:34 PM VET
-- LVE Withholding
INSERT INTO LVE_WH_Conbination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,LVE_PersonType_ID,LVE_WH_Conbination_ID,LVE_WithholdingConcept_ID,Processing,Updated,UpdatedBy,Value) VALUES (11,50001,5.000000000000,TO_TIMESTAMP('2013-08-01 16:26:34','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000002,1000008,1000002,'N',TO_TIMESTAMP('2013-08-01 16:26:34','YYYY-MM-DD HH24:MI:SS'),100,'063')
;

-- 1/08/2013 04:26:52 PM VET
-- LVE Withholding
INSERT INTO LVE_WH_Conbination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,LVE_PersonType_ID,LVE_WH_Conbination_ID,LVE_WithholdingConcept_ID,Processing,Updated,UpdatedBy,Value) VALUES (11,50001,5.000000000000,TO_TIMESTAMP('2013-08-01 16:26:52','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000003,1000009,1000002,'N',TO_TIMESTAMP('2013-08-01 16:26:52','YYYY-MM-DD HH24:MI:SS'),100,'064')
;

-- 1/08/2013 04:27:08 PM VET
-- LVE Withholding
INSERT INTO LVE_WH_Conbination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,LVE_PersonType_ID,LVE_WH_Conbination_ID,LVE_WithholdingConcept_ID,Processing,Updated,UpdatedBy,Value) VALUES (11,50001,34.000000000000,TO_TIMESTAMP('2013-08-01 16:27:08','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000001,1000010,1000002,'N',TO_TIMESTAMP('2013-08-01 16:27:08','YYYY-MM-DD HH24:MI:SS'),100,'062')
;

-- 1/08/2013 04:27:28 PM VET
-- LVE Withholding
INSERT INTO LVE_WH_Conbination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,LVE_PersonType_ID,LVE_WH_Conbination_ID,LVE_WithholdingConcept_ID,Processing,Updated,UpdatedBy,Value) VALUES (11,50001,34.000000000000,TO_TIMESTAMP('2013-08-01 16:27:28','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000001,1000011,1000003,'N',TO_TIMESTAMP('2013-08-01 16:27:28','YYYY-MM-DD HH24:MI:SS'),100,'036')
;

-- 1/08/2013 04:28:20 PM VET
-- LVE Withholding
INSERT INTO LVE_WH_Conbination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,LVE_PersonType_ID,LVE_WH_Conbination_ID,LVE_WithholdingConcept_ID,Processing,Updated,UpdatedBy,Value) VALUES (11,50001,3.000000000000,TO_TIMESTAMP('2013-08-01 16:28:20','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000012,1000004,'N',TO_TIMESTAMP('2013-08-01 16:28:20','YYYY-MM-DD HH24:MI:SS'),100,'018')
;

-- 1/08/2013 04:28:33 PM VET
-- LVE Withholding
INSERT INTO LVE_WH_Conbination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,LVE_PersonType_ID,LVE_WH_Conbination_ID,LVE_WithholdingConcept_ID,Processing,Updated,UpdatedBy,Value) VALUES (11,50001,5.000000000000,TO_TIMESTAMP('2013-08-01 16:28:33','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000002,1000013,1000004,'N',TO_TIMESTAMP('2013-08-01 16:28:33','YYYY-MM-DD HH24:MI:SS'),100,'020')
;

-- 1/08/2013 04:28:55 PM VET
-- LVE Withholding
INSERT INTO LVE_WH_Conbination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,LVE_PersonType_ID,LVE_WH_Conbination_ID,LVE_WithholdingConcept_ID,Processing,Updated,UpdatedBy,Value) VALUES (11,50001,5.000000000000,TO_TIMESTAMP('2013-08-01 16:28:55','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000003,1000014,1000004,'N',TO_TIMESTAMP('2013-08-01 16:28:55','YYYY-MM-DD HH24:MI:SS'),100,'021')
;

-- 1/08/2013 04:29:11 PM VET
-- LVE Withholding
INSERT INTO LVE_WH_Conbination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,LVE_PersonType_ID,LVE_WH_Conbination_ID,LVE_WithholdingConcept_ID,Processing,Updated,UpdatedBy,Value) VALUES (11,50001,34.000000000000,TO_TIMESTAMP('2013-08-01 16:29:11','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000001,1000015,1000004,'N',TO_TIMESTAMP('2013-08-01 16:29:11','YYYY-MM-DD HH24:MI:SS'),100,'019')
;

-- 1/08/2013 04:29:32 PM VET
-- LVE Withholding
INSERT INTO LVE_WH_Conbination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,LVE_PersonType_ID,LVE_WH_Conbination_ID,LVE_WithholdingConcept_ID,Processing,Updated,UpdatedBy,Value) VALUES (11,50001,1.000000000000,TO_TIMESTAMP('2013-08-01 16:29:32','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000016,1000005,'N',TO_TIMESTAMP('2013-08-01 16:29:32','YYYY-MM-DD HH24:MI:SS'),100,'053')
;

-- 1/08/2013 04:29:47 PM VET
-- LVE Withholding
INSERT INTO LVE_WH_Conbination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,LVE_PersonType_ID,LVE_WH_Conbination_ID,LVE_WithholdingConcept_ID,Processing,Updated,UpdatedBy,Value) VALUES (11,50001,2.000000000000,TO_TIMESTAMP('2013-08-01 16:29:47','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000002,1000017,1000005,'N',TO_TIMESTAMP('2013-08-01 16:29:47','YYYY-MM-DD HH24:MI:SS'),100,'055')
;

-- 1/08/2013 04:30:08 PM VET
-- LVE Withholding
INSERT INTO LVE_WH_Conbination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,LVE_PersonType_ID,LVE_WH_Conbination_ID,LVE_WithholdingConcept_ID,Processing,Updated,UpdatedBy,Value) VALUES (11,50001,3.000000000000,TO_TIMESTAMP('2013-08-01 16:30:08','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000018,1000006,'N',TO_TIMESTAMP('2013-08-01 16:30:08','YYYY-MM-DD HH24:MI:SS'),100,'073')
;

-- 1/08/2013 04:30:32 PM VET
-- LVE Withholding
INSERT INTO LVE_WH_Conbination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,LVE_PersonType_ID,LVE_WH_Conbination_ID,LVE_WithholdingConcept_ID,Processing,Updated,UpdatedBy,Value) VALUES (11,50001,5.000000000000,TO_TIMESTAMP('2013-08-01 16:30:32','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000002,1000019,1000006,'N',TO_TIMESTAMP('2013-08-01 16:30:32','YYYY-MM-DD HH24:MI:SS'),100,'074')
;

-- 1/08/2013 04:30:58 PM VET
-- LVE Withholding
INSERT INTO LVE_WH_Conbination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,LVE_PersonType_ID,LVE_WH_Conbination_ID,LVE_WithholdingConcept_ID,Processing,Updated,UpdatedBy,Value) VALUES (11,50001,1.000000000000,TO_TIMESTAMP('2013-08-01 16:30:58','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000020,1000007,'N',TO_TIMESTAMP('2013-08-01 16:30:58','YYYY-MM-DD HH24:MI:SS'),100,'071')
;

-- 1/08/2013 04:31:21 PM VET
-- LVE Withholding
INSERT INTO LVE_WH_Conbination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,LVE_PersonType_ID,LVE_WH_Conbination_ID,LVE_WithholdingConcept_ID,Processing,Updated,UpdatedBy,Value) VALUES (11,50001,3.000000000000,TO_TIMESTAMP('2013-08-01 16:31:21','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000002,1000021,1000007,'N',TO_TIMESTAMP('2013-08-01 16:31:21','YYYY-MM-DD HH24:MI:SS'),100,'072')
;

-- 1/08/2013 04:31:46 PM VET
-- LVE Withholding
INSERT INTO LVE_WH_Conbination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,LVE_PersonType_ID,LVE_WH_Conbination_ID,LVE_WithholdingConcept_ID,Processing,Updated,UpdatedBy,Value) VALUES (11,50001,34.000000000000,TO_TIMESTAMP('2013-08-01 16:31:46','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000001,1000022,1000007,'N',TO_TIMESTAMP('2013-08-01 16:31:46','YYYY-MM-DD HH24:MI:SS'),100,'054')
;

-- 1/08/2013 04:32:05 PM VET
-- LVE Withholding
INSERT INTO LVE_WH_Conbination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,LVE_PersonType_ID,LVE_WH_Conbination_ID,LVE_WithholdingConcept_ID,Processing,Updated,UpdatedBy,Value) VALUES (11,50001,3.000000000000,TO_TIMESTAMP('2013-08-01 16:32:05','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000023,1000008,'N',TO_TIMESTAMP('2013-08-01 16:32:05','YYYY-MM-DD HH24:MI:SS'),100,'002')
;

-- 1/08/2013 04:32:18 PM VET
-- LVE Withholding
INSERT INTO LVE_WH_Conbination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,LVE_PersonType_ID,LVE_WH_Conbination_ID,LVE_WithholdingConcept_ID,Processing,Updated,UpdatedBy,Value) VALUES (11,50001,5.000000000000,TO_TIMESTAMP('2013-08-01 16:32:18','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000002,1000024,1000008,'N',TO_TIMESTAMP('2013-08-01 16:32:18','YYYY-MM-DD HH24:MI:SS'),100,'004')
;

-- 1/08/2013 04:32:31 PM VET
-- LVE Withholding
INSERT INTO LVE_WH_Conbination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,LVE_PersonType_ID,LVE_WH_Conbination_ID,LVE_WithholdingConcept_ID,Processing,Updated,UpdatedBy,Value) VALUES (11,50001,34.000000000000,TO_TIMESTAMP('2013-08-01 16:32:31','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000001,1000025,1000008,'N',TO_TIMESTAMP('2013-08-01 16:32:31','YYYY-MM-DD HH24:MI:SS'),100,'003')
;

-- 1/08/2013 04:32:58 PM VET
-- LVE Withholding
INSERT INTO LVE_WH_Conbination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,LVE_PersonType_ID,LVE_WH_Conbination_ID,LVE_WithholdingConcept_ID,Processing,Updated,UpdatedBy,Value) VALUES (11,50001,3.000000000000,TO_TIMESTAMP('2013-08-01 16:32:58','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000026,1000009,'N',TO_TIMESTAMP('2013-08-01 16:32:58','YYYY-MM-DD HH24:MI:SS'),100,'025')
;

-- 1/08/2013 04:33:10 PM VET
-- LVE Withholding
INSERT INTO LVE_WH_Conbination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,LVE_PersonType_ID,LVE_WH_Conbination_ID,LVE_WithholdingConcept_ID,Processing,Updated,UpdatedBy,Value) VALUES (11,50001,5.000000000000,TO_TIMESTAMP('2013-08-01 16:33:10','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000002,1000027,1000009,'N',TO_TIMESTAMP('2013-08-01 16:33:10','YYYY-MM-DD HH24:MI:SS'),100,'027')
;

-- 1/08/2013 04:33:27 PM VET
-- LVE Withholding
INSERT INTO LVE_WH_Conbination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,LVE_PersonType_ID,LVE_WH_Conbination_ID,LVE_WithholdingConcept_ID,Processing,Updated,UpdatedBy,Value) VALUES (11,50001,34.000000000000,TO_TIMESTAMP('2013-08-01 16:33:27','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000028,1000009,'N',TO_TIMESTAMP('2013-08-01 16:33:27','YYYY-MM-DD HH24:MI:SS'),100,'026')
;

-- 1/08/2013 04:33:57 PM VET
-- LVE Withholding
INSERT INTO LVE_WH_Conbination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,LVE_PersonType_ID,LVE_WH_Conbination_ID,LVE_WithholdingConcept_ID,Processing,Updated,UpdatedBy,Value) VALUES (11,50001,495.000000000000,TO_TIMESTAMP('2013-08-01 16:33:57','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000003,1000029,1000009,'N',TO_TIMESTAMP('2013-08-01 16:33:57','YYYY-MM-DD HH24:MI:SS'),100,'024')
;

-- 1/08/2013 04:34:18 PM VET
-- LVE Withholding
INSERT INTO LVE_WH_Conbination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,LVE_PersonType_ID,LVE_WH_Conbination_ID,LVE_WithholdingConcept_ID,Processing,Updated,UpdatedBy,Value) VALUES (11,50001,5.000000000000,TO_TIMESTAMP('2013-08-01 16:34:18','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000002,1000030,1000010,'N',TO_TIMESTAMP('2013-08-01 16:34:18','YYYY-MM-DD HH24:MI:SS'),100,'084')
;

-- 1/08/2013 04:34:39 PM VET
-- LVE Withholding
INSERT INTO LVE_WH_Conbination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,LVE_PersonType_ID,LVE_WH_Conbination_ID,LVE_WithholdingConcept_ID,Processing,Updated,UpdatedBy,Value) VALUES (11,50001,5.000000000000,TO_TIMESTAMP('2013-08-01 16:34:39','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000003,1000031,1000010,'N',TO_TIMESTAMP('2013-08-01 16:34:39','YYYY-MM-DD HH24:MI:SS'),100,'085')
;

-- 1/08/2013 04:35:12 PM VET
-- LVE Withholding
INSERT INTO LVE_WH_Conbination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,LVE_PersonType_ID,LVE_WH_Conbination_ID,LVE_WithholdingConcept_ID,Processing,Updated,UpdatedBy,Value) VALUES (11,50001,3.000000000000,TO_TIMESTAMP('2013-08-01 16:35:12','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000032,1000010,'N',TO_TIMESTAMP('2013-08-01 16:35:12','YYYY-MM-DD HH24:MI:SS'),100,'083')
;

-- 1/08/2013 04:36:16 PM VET
-- LVE Withholding
INSERT INTO LVE_WH_Conbination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,LVE_PersonType_ID,LVE_WH_Conbination_ID,LVE_WithholdingConcept_ID,Processing,Updated,UpdatedBy,Value) VALUES (11,50001,34.000000000000,TO_TIMESTAMP('2013-08-01 16:36:16','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000001,1000033,1000011,'N',TO_TIMESTAMP('2013-08-01 16:36:16','YYYY-MM-DD HH24:MI:SS'),100,'038')
;

-- 1/08/2013 04:36:40 PM VET
-- LVE Withholding
INSERT INTO LVE_WH_Conbination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,LVE_PersonType_ID,LVE_WH_Conbination_ID,LVE_WithholdingConcept_ID,Processing,Updated,UpdatedBy,Value) VALUES (11,50001,34.000000000000,TO_TIMESTAMP('2013-08-01 16:36:40','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000001,1000034,1000012,'N',TO_TIMESTAMP('2013-08-01 16:36:40','YYYY-MM-DD HH24:MI:SS'),100,'001')
;

-- 1/08/2013 04:37:02 PM VET
-- LVE Withholding
INSERT INTO LVE_WH_Conbination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,LVE_PersonType_ID,LVE_WH_Conbination_ID,LVE_WithholdingConcept_ID,Processing,Updated,UpdatedBy,Value) VALUES (11,50001,3.000000000000,TO_TIMESTAMP('2013-08-01 16:37:02','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,1000035,1000013,'N',TO_TIMESTAMP('2013-08-01 16:37:02','YYYY-MM-DD HH24:MI:SS'),100,'065')
;

-- 1/08/2013 04:37:55 PM VET
-- LVE Withholding
INSERT INTO LVE_WithholdingConcept (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,IsActive,LVE_Withholding_ID,LVE_WithholdingConcept_ID,Name,Updated,UpdatedBy) VALUES (11,50001,TO_TIMESTAMP('2013-08-01 16:37:55','YYYY-MM-DD HH24:MI:SS'),100,'PUBLICIDAD, PROPAGANDA, CESION O VENTA DE ESPACIOS PARA TALES FINES A EMISORAS DE RADIO','Y',1000000,1000014,'PUBLICIDAD, PROPAGANDA, CESION O VENTA DE ESPACIOS PARA TALES FINES A EMISORAS DE RADIO',TO_TIMESTAMP('2013-08-01 16:37:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 1/08/2013 04:38:53 PM VET
-- LVE Withholding
INSERT INTO LVE_WH_Conbination (AD_Client_ID,AD_Org_ID,Aliquot,Created,CreatedBy,IsActive,LVE_PersonType_ID,LVE_WH_Conbination_ID,LVE_WithholdingConcept_ID,Processing,Updated,UpdatedBy,Value) VALUES (11,50001,3.000000000000,TO_TIMESTAMP('2013-08-01 16:38:53','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000002,1000036,1000014,'N',TO_TIMESTAMP('2013-08-01 16:38:53','YYYY-MM-DD HH24:MI:SS'),100,'086')
;

