-- 31/07/2013 11:03:36 AM VET
-- LVE Withholding
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,Description,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53424,'org.erpca.process.GenerateWithholding','N',TO_DATE('2013-07-31 11:03:35','YYYY-MM-DD HH24:MI:SS'),100,'Generate Withholding','ECA02','Y','N','N','N','N','Generate Withholding','Y',0,0,TO_DATE('2013-07-31 11:03:35','YYYY-MM-DD HH24:MI:SS'),100,'LVE_Withholding GenerateWithholding')
;

-- 31/07/2013 11:03:36 AM VET
-- LVE Withholding
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53424 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 31/07/2013 11:03:50 AM VET
-- LVE Withholding
UPDATE AD_Process_Trl SET Name='Generar Retención',Description='Generar Retención',Updated=TO_DATE('2013-07-31 11:03:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53424 AND AD_Language='es_MX'
;

-- 31/07/2013 11:04:48 AM VET
-- LVE Withholding
INSERT INTO AD_Menu (Action,AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,Description,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('P',0,53579,0,53424,TO_DATE('2013-07-31 11:04:47','YYYY-MM-DD HH24:MI:SS'),100,'Generate Withholding','ECA02','Y','Y','N','N','N','Generate Withholding',TO_DATE('2013-07-31 11:04:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 31/07/2013 11:04:48 AM VET
-- LVE Withholding
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53579 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- 31/07/2013 11:04:48 AM VET
-- LVE Withholding
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 53579, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=53579)
;

-- 31/07/2013 11:05:01 AM VET
-- LVE Withholding
UPDATE AD_Menu_Trl SET Name='Generar Retención',Description='Generar Retención',Updated=TO_DATE('2013-07-31 11:05:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53579 AND AD_Language='es_MX'
;

-- 31/07/2013 11:05:05 AM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53579
;

-- 31/07/2013 11:05:05 AM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53578
;

-- 31/07/2013 11:05:05 AM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53577
;

-- 31/07/2013 11:05:05 AM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53574
;

-- 31/07/2013 11:05:05 AM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53573
;

-- 31/07/2013 11:12:41 AM VET
-- LVE Withholding
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,187,0,53424,53934,19,'C_BPartner_ID',TO_DATE('2013-07-31 11:12:40','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Business Partner ',10,TO_DATE('2013-07-31 11:12:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 31/07/2013 11:12:41 AM VET
-- LVE Withholding
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=53934 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 31/07/2013 11:13:31 AM VET
-- LVE Withholding
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1008,0,53424,53935,19,145,'C_Invoice_ID',TO_DATE('2013-07-31 11:13:31','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Invoice',20,TO_DATE('2013-07-31 11:13:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 31/07/2013 11:13:31 AM VET
-- LVE Withholding
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=53935 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 31/07/2013 11:16:09 AM VET
-- LVE Withholding
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,263,0,53424,53936,15,'DateAcct',TO_DATE('2013-07-31 11:16:09','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','Y','Account Date',30,TO_DATE('2013-07-31 11:16:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 31/07/2013 11:16:09 AM VET
-- LVE Withholding
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=53936 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 31/07/2013 11:16:59 AM VET
-- LVE Withholding
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56052,0,53424,53937,19,'LVE_WithholdingType_ID',TO_DATE('2013-07-31 11:16:58','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Withholding Type',40,TO_DATE('2013-07-31 11:16:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 31/07/2013 11:16:59 AM VET
-- LVE Withholding
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=53937 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 31/07/2013 11:17:33 AM VET
-- LVE Withholding
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,265,0,53424,53938,15,'DateDoc',TO_DATE('2013-07-31 11:17:33','YYYY-MM-DD HH24:MI:SS'),100,'@#Date@','ECA02',0,'Y','Y','Y','N','Document Date',50,TO_DATE('2013-07-31 11:17:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 31/07/2013 11:17:33 AM VET
-- LVE Withholding
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=53938 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 31/07/2013 11:20:24 AM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='Tipo de Retención',PrintName='Tipo de Retención',Updated=TO_DATE('2013-07-31 11:20:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56052 AND AD_Language='es_MX'
;

-- 31/07/2013 11:21:07 AM VET
-- LVE Withholding
UPDATE AD_Process_Para SET IsMandatory='Y',Updated=TO_DATE('2013-07-31 11:21:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=53933
;

