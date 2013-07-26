-- 23/01/2013 03:26:14 PM VET
-- LVE Retention
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,Description,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,3000000,'org.erpca.process.GenerateRetention','N',TO_DATE('2013-01-23 15:26:14','YYYY-MM-DD HH24:MI:SS'),100,'GenerateRetention','ECA02','Y','N','N','N','N','Generate Retention','Y',0,0,TO_DATE('2013-01-23 15:26:14','YYYY-MM-DD HH24:MI:SS'),100,'prc_GenerateRetention')
;

-- 23/01/2013 03:26:14 PM VET
-- LVE Retention
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=3000000 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 23/01/2013 03:26:23 PM VET
-- LVE Retention
UPDATE AD_Process_Trl SET Name='Generar Retenciones',Updated=TO_DATE('2013-01-23 15:26:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=3000000 AND AD_Language='es_VE'
;

-- 23/01/2013 03:28:25 PM VET
-- LVE Retention
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1008,0,3000000,3000000,19,'C_Invoice_ID',TO_DATE('2013-01-23 15:28:25','YYYY-MM-DD HH24:MI:SS'),100,'Invoice','ECA02',0,'Y','Y','N','N','Invoice',10,TO_DATE('2013-01-23 15:28:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 23/01/2013 03:28:25 PM VET
-- LVE Retention
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=3000000 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 23/01/2013 03:29:05 PM VET
-- LVE Retention
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,187,0,3000000,3000001,19,'C_BPartner_ID',TO_DATE('2013-01-23 15:29:05','YYYY-MM-DD HH24:MI:SS'),100,'Business Partner ','ECA02',0,'Y','Y','N','N','Business Partner ',20,TO_DATE('2013-01-23 15:29:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 23/01/2013 03:29:05 PM VET
-- LVE Retention
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=3000001 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 23/01/2013 03:29:16 PM VET
-- LVE Retention
UPDATE AD_Process_Para_Trl SET Name='Socio del Negocio',Description='Socio del Negocio',Updated=TO_DATE('2013-01-23 15:29:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=3000001 AND AD_Language='es_VE'
;

-- 23/01/2013 03:29:31 PM VET
-- LVE Retention
UPDATE AD_Process_Para_Trl SET Name='Factura',Description='Factura',Updated=TO_DATE('2013-01-23 15:29:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=3000000 AND AD_Language='es_VE'
;

-- 23/01/2013 03:30:06 PM VET
-- LVE Retention
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,263,0,3000000,3000002,15,'DateAcct',TO_DATE('2013-01-23 15:30:06','YYYY-MM-DD HH24:MI:SS'),100,'Account Date','ECA02',0,'Y','Y','N','Y','Account Date',30,TO_DATE('2013-01-23 15:30:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 23/01/2013 03:30:06 PM VET
-- LVE Retention
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=3000002 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 23/01/2013 03:30:10 PM VET
-- LVE Retention
UPDATE AD_Process_Para SET EntityType='ECA02',Updated=TO_DATE('2013-01-23 15:30:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=3000002
;

-- 23/01/2013 03:30:39 PM VET
-- LVE Retention
UPDATE AD_Process_Para_Trl SET Name='Fecha Contable',Description='Fecha Contable',Updated=TO_DATE('2013-01-23 15:30:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=3000002 AND AD_Language='es_VE'
;

-- 23/01/2013 03:31:14 PM VET
-- LVE Retention
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,3000000,0,3000000,3000003,19,'CUST_RetentionType',TO_DATE('2013-01-23 15:31:14','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Retention Type',40,TO_DATE('2013-01-23 15:31:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 23/01/2013 03:31:14 PM VET
-- LVE Retention
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=3000003 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 23/01/2013 03:31:19 PM VET
-- LVE Retention
UPDATE AD_Process_Para SET Description='Retention Type',Updated=TO_DATE('2013-01-23 15:31:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=3000003
;

-- 23/01/2013 03:31:19 PM VET
-- LVE Retention
/*UPDATE AD_Process_Para_Trl SET IsTranslated='N' WHERE AD_Process_Para_ID=1000074
;*/

-- 23/01/2013 03:31:28 PM VET
-- LVE Retention
UPDATE AD_Process_Para_Trl SET Name='Tipo de Retención',Description='Tipo de Retención',Updated=TO_DATE('2013-01-23 15:31:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=3000003 AND AD_Language='es_VE'
;

-- 23/01/2013 03:32:52 PM VET
-- LVE Retention
INSERT INTO AD_Menu (action,AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,Description,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('P',0,3000006,0,3000000,TO_DATE('2013-01-23 15:32:52','YYYY-MM-DD HH24:MI:SS'),100,'Generate Retention','ECA02','Y','Y','N','N','N','Generate Retention',TO_DATE('2013-01-23 15:32:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 23/01/2013 03:32:52 PM VET
-- LVE Retention
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=3000006 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- 23/01/2013 03:32:52 PM VET
-- LVE Retention
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', SYSDATE, 100, SYSDATE, 100,t.AD_Tree_ID, 3000006, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1000023)
;

-- 23/01/2013 03:33:01 PM VET
-- LVE Retention
UPDATE AD_Menu_Trl SET Name='Generar Retenciones',Description='Generar Retenciones',Updated=TO_DATE('2013-01-23 15:33:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=3000006 AND AD_Language='es_VE'
;

-- 23/01/2013 03:33:06 PM VET
-- LVE Retention
UPDATE AD_TreeNodeMM SET Parent_ID=3000000, SeqNo=0, Updated=SYSDATE WHERE AD_Tree_ID=10 AND Node_ID=3000006
;

-- 23/01/2013 03:33:06 PM VET
-- LVE Retention
UPDATE AD_TreeNodeMM SET Parent_ID=3000000, SeqNo=1, Updated=SYSDATE WHERE AD_Tree_ID=10 AND Node_ID=3000005
;

-- 23/01/2013 03:33:06 PM VET
-- LVE Retention
UPDATE AD_TreeNodeMM SET Parent_ID=3000000, SeqNo=2, Updated=SYSDATE WHERE AD_Tree_ID=10 AND Node_ID=3000004
;

-- 23/01/2013 03:33:06 PM VET
-- LVE Retention
UPDATE AD_TreeNodeMM SET Parent_ID=3000000, SeqNo=3, Updated=SYSDATE WHERE AD_Tree_ID=10 AND Node_ID=3000003
;

-- 23/01/2013 03:33:06 PM VET
-- LVE Retention
UPDATE AD_TreeNodeMM SET Parent_ID=3000000, SeqNo=4, Updated=SYSDATE WHERE AD_Tree_ID=10 AND Node_ID=3000002
;

-- 23/01/2013 03:33:06 PM VET
-- LVE Retention
UPDATE AD_TreeNodeMM SET Parent_ID=3000000, SeqNo=5, Updated=SYSDATE WHERE AD_Tree_ID=10 AND Node_ID=3000001
;

-- 23/01/2013 03:50:20 PM VET
-- LVE Retention
UPDATE AD_Process_Para SET ColumnName='CUST_RetentionType_ID',Updated=TO_DATE('2013-01-23 15:50:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=3000003
;

-- 23/01/2013 04:30:56 PM VET
-- LVE Retention
UPDATE AD_Field SET DisplayLogic='@DocAffected_ID@ !0',Updated=TO_DATE('2013-01-23 16:30:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000112
;

