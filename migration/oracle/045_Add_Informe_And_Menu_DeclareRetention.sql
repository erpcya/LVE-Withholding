-- 17/04/2013 05:28:28 PM VET
-- LVE Retention
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_ReportView_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,3000201,3000202,'N',TO_DATE('2013-04-17 17:28:28','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','Declare Retention','Y',0,0,TO_DATE('2013-04-17 17:28:28','YYYY-MM-DD HH24:MI:SS'),100,'inf_DeclareRetention')
;

-- 17/04/2013 05:28:28 PM VET
-- LVE Retention
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=3000201 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 17/04/2013 05:30:27 PM VET
-- LVE Retention
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1008,0,3000201,3000205,19,'C_Invoice_ID',TO_DATE('2013-04-17 17:30:27','YYYY-MM-DD HH24:MI:SS'),100,'Invoice Identifier','ECA02',22,'The Invoice Document.','Y','Y','Y','N','Invoice',10,TO_DATE('2013-04-17 17:30:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 17/04/2013 05:30:27 PM VET
-- LVE Retention
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=3000205 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 17/04/2013 05:31:59 PM VET
-- LVE Retention
UPDATE AD_Process_Trl SET Name='Declaracion de Retenciones',Updated=TO_DATE('2013-04-17 17:31:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=3000201 AND AD_Language='es_MX'
;

-- 17/04/2013 05:32:32 PM VET
-- LVE Retention
INSERT INTO AD_Menu (action,AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('R',0,3000204,0,3000201,TO_DATE('2013-04-17 17:32:32','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Declare Retention',TO_DATE('2013-04-17 17:32:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 17/04/2013 05:32:32 PM VET
-- LVE Retention
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=3000204 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- 17/04/2013 05:32:32 PM VET
-- LVE Retention
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_DATE('2013-04-17 17:32:32','YYYY-MM-DD HH24:MI:SS'),100,'Y',3000204,0,999,TO_DATE('2013-04-17 17:32:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 17/04/2013 05:32:40 PM VET
-- LVE Retention
UPDATE AD_Menu_Trl SET Name='Declaracion de Retenciones',Updated=TO_DATE('2013-04-17 17:32:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=3000204 AND AD_Language='es_MX'
;

-- 17/04/2013 05:32:52 PM VET
-- LVE Retention
UPDATE AD_TreeNodeMM SET Parent_ID=3000000, SeqNo=0,Updated=TO_DATE('2013-04-17 17:32:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=3000204
;

-- 17/04/2013 05:32:52 PM VET
-- LVE Retention
UPDATE AD_TreeNodeMM SET Parent_ID=3000000, SeqNo=1,Updated=TO_DATE('2013-04-17 17:32:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=3000203
;

-- 17/04/2013 05:32:52 PM VET
-- LVE Retention
UPDATE AD_TreeNodeMM SET Parent_ID=3000000, SeqNo=2,Updated=TO_DATE('2013-04-17 17:32:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=3000006
;

-- 17/04/2013 05:32:52 PM VET
-- LVE Retention
UPDATE AD_TreeNodeMM SET Parent_ID=3000000, SeqNo=3,Updated=TO_DATE('2013-04-17 17:32:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=3000007
;

-- 17/04/2013 05:32:52 PM VET
-- LVE Retention
UPDATE AD_TreeNodeMM SET Parent_ID=3000000, SeqNo=4,Updated=TO_DATE('2013-04-17 17:32:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=3000005
;

-- 17/04/2013 05:32:52 PM VET
-- LVE Retention
UPDATE AD_TreeNodeMM SET Parent_ID=3000000, SeqNo=5,Updated=TO_DATE('2013-04-17 17:32:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=3000004
;

-- 17/04/2013 05:32:52 PM VET
-- LVE Retention
UPDATE AD_TreeNodeMM SET Parent_ID=3000000, SeqNo=6,Updated=TO_DATE('2013-04-17 17:32:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=3000003
;

-- 17/04/2013 05:32:52 PM VET
-- LVE Retention
UPDATE AD_TreeNodeMM SET Parent_ID=3000000, SeqNo=7,Updated=TO_DATE('2013-04-17 17:32:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=3000002
;

-- 17/04/2013 05:32:52 PM VET
-- LVE Retention
UPDATE AD_TreeNodeMM SET Parent_ID=3000000, SeqNo=8,Updated=TO_DATE('2013-04-17 17:32:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=3000001
;

-- Apr 17, 2013 9:21:38 PM VET
-- LVE Retention
UPDATE AD_Column SET AD_Reference_ID=18, AD_Reference_Value_ID=336,Updated=TO_DATE('2013-04-17 21:21:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=3000387
;

