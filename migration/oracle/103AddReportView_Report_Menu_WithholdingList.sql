-- 22/08/2013 02:59:15 PM VET
-- LVE Withholding
INSERT INTO AD_ReportView (AD_Client_ID,AD_Org_ID,AD_ReportView_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,0,53057,53557,TO_DATE('2013-08-22 14:59:11','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Withholding List',TO_DATE('2013-08-22 14:59:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/08/2013 02:59:37 PM VET
-- LVE Withholding
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_ReportView_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53439,53057,'N',TO_DATE('2013-08-22 14:59:36','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','Withholding List','Y',0,0,TO_DATE('2013-08-22 14:59:36','YYYY-MM-DD HH24:MI:SS'),100,'LVE_RV_WH_List WithholdingList')
;

-- 22/08/2013 02:59:37 PM VET
-- LVE Withholding
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53439 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 22/08/2013 02:59:49 PM VET
-- LVE Withholding
UPDATE AD_Process_Trl SET Name='Lista de Retenciones',Updated=TO_DATE('2013-08-22 14:59:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53439 AND AD_Language='es_MX'
;

-- 22/08/2013 03:00:46 PM VET
-- LVE Withholding
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56103,0,53439,53958,19,'LVE_WH_ConceptGroup_ID',TO_DATE('2013-08-22 15:00:34','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Concept Group',10,TO_DATE('2013-08-22 15:00:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/08/2013 03:00:46 PM VET
-- LVE Withholding
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=53958 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 22/08/2013 03:01:23 PM VET
-- LVE Withholding
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56053,0,53439,53959,19,'LVE_Withholding_ID',TO_DATE('2013-08-22 15:01:21','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Withholding',20,TO_DATE('2013-08-22 15:01:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/08/2013 03:01:23 PM VET
-- LVE Withholding
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=53959 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 22/08/2013 03:02:06 PM VET
-- LVE Withholding
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56064,0,53439,53960,19,'LVE_TaxUnit_ID',TO_DATE('2013-08-22 15:02:03','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Tax Unit',30,TO_DATE('2013-08-22 15:02:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/08/2013 03:02:06 PM VET
-- LVE Withholding
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=53960 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 22/08/2013 03:03:37 PM VET
-- LVE Withholding
UPDATE AD_Table SET Name='Withholding List', TableName='LVE_RV_WH_List',Updated=TO_DATE('2013-08-22 15:03:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53557
;

-- 22/08/2013 03:03:37 PM VET
-- LVE Withholding
UPDATE AD_Table_Trl SET IsTranslated='N' WHERE AD_Table_ID=53557
;

-- 22/08/2013 03:03:38 PM VET
-- LVE Withholding
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,53685,TO_DATE('2013-08-22 15:03:37','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table LVE_RV_WH_List',1,'Y','N','Y','Y','LVE_RV_WH_List','N',1000000,TO_DATE('2013-08-22 15:03:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/08/2013 03:04:13 PM VET
-- LVE Withholding
UPDATE AD_Table_Trl SET Name='Lista de Retenciones',Updated=TO_DATE('2013-08-22 15:04:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53557 AND AD_Language='es_MX'
;

-- 22/08/2013 03:05:12 PM VET
-- LVE Withholding
INSERT INTO AD_Menu (Action,AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('R',0,53596,0,53439,TO_DATE('2013-08-22 15:05:08','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Withholding List',TO_DATE('2013-08-22 15:05:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/08/2013 03:05:12 PM VET
-- LVE Withholding
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53596 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- 22/08/2013 03:05:12 PM VET
-- LVE Withholding
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 53596, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=53596)
;

-- 22/08/2013 03:05:22 PM VET
-- LVE Withholding
UPDATE AD_Menu_Trl SET Name='Lista de Retenciones',Updated=TO_DATE('2013-08-22 15:05:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53596 AND AD_Language='es_MX'
;

-- 22/08/2013 03:05:37 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53588, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53596
;

-- 22/08/2013 03:05:37 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53588, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53579
;

-- 22/08/2013 03:05:37 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53588, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53584
;

-- 22/08/2013 03:05:37 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53588, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53582
;

-- 22/08/2013 03:05:41 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53587, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53596
;

-- 22/08/2013 03:05:41 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53587, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53583
;

-- 22/08/2013 03:05:41 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53587, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53573
;

-- 22/08/2013 03:05:41 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53587, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53574
;

-- 22/08/2013 03:05:41 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53587, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53586
;

-- 22/08/2013 03:05:41 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53587, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53577
;

-- 22/08/2013 03:05:41 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53587, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53578
;

