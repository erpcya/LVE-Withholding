-- Aug 8, 2013 10:29:29 AM VET
-- LVE Withholding
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,JasperReport,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53432,'org.compiere.report.ReportStarter','N',TO_TIMESTAMP('2013-08-08 10:29:27','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','attachment:ARCV.jrxml','ARCV','Y',0,0,TO_TIMESTAMP('2013-08-08 10:29:27','YYYY-MM-DD HH24:MI:SS'),100,'LVE_ARCV')
;

-- Aug 8, 2013 10:29:29 AM VET
-- LVE Withholding
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53432 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Aug 8, 2013 10:29:56 AM VET
-- LVE Withholding
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,187,0,53432,53950,19,'C_BPartner_ID',TO_TIMESTAMP('2013-08-08 10:29:56','YYYY-MM-DD HH24:MI:SS'),100,'U',0,'Y','Y','N','N','C_BPartner_ID',10,TO_TIMESTAMP('2013-08-08 10:29:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 10:29:56 AM VET
-- LVE Withholding
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=53950 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Aug 8, 2013 10:29:59 AM VET
-- LVE Withholding
UPDATE AD_Process_Para SET EntityType='ECA02',Updated=TO_TIMESTAMP('2013-08-08 10:29:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=53950
;

-- Aug 8, 2013 10:30:32 AM VET
-- LVE Withholding
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,263,0,53432,53951,15,'DateAcct',TO_TIMESTAMP('2013-08-08 10:30:20','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','Y','Y','DateAcct',20,TO_TIMESTAMP('2013-08-08 10:30:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 10:30:32 AM VET
-- LVE Withholding
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=53951 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Aug 8, 2013 10:31:05 AM VET
-- LVE Withholding
INSERT INTO AD_Menu ("action",AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('R',0,53584,0,53432,TO_TIMESTAMP('2013-08-08 10:31:04','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','ARCV',TO_TIMESTAMP('2013-08-08 10:31:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 10:31:05 AM VET
-- LVE Withholding
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53584 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Aug 8, 2013 10:31:05 AM VET
-- LVE Withholding
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 53584, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=53584)
;

-- Aug 8, 2013 10:31:08 AM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53584
;

-- Aug 8, 2013 10:31:08 AM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53583
;

-- Aug 8, 2013 10:31:08 AM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=2, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53582
;

-- Aug 8, 2013 10:31:08 AM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=3, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53579
;

-- Aug 8, 2013 10:31:08 AM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=4, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53578
;

-- Aug 8, 2013 10:31:08 AM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=5, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53577
;

-- Aug 8, 2013 10:31:08 AM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=6, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53574
;

-- Aug 8, 2013 10:31:08 AM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=7, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53573
;

