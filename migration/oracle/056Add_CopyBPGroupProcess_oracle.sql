-- Aug 6, 2013 6:15:20 PM VET
-- LVE Withholding
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,Created,CreatedBy,Description,EntityType,Help,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('2',0,0,53431,'org.spin.process.BPGroupWHAppliedCopy',TO_DATE('2013-08-06 18:15:18','YYYY-MM-DD HH24:MI:SS'),100,'Copy and overwrite Withholding Applied to Business Partners of this group','ECA02','If you copy and overwrite the current default values, you may have to repeat previous updates (e.g. set the tax withholding, ...)','Y','N','N','N','N','Copy Withholding Applied','Y',0,0,TO_DATE('2013-08-06 18:15:18','YYYY-MM-DD HH24:MI:SS'),100,'C_BP_Group_CopyWithholding')
;

-- Aug 6, 2013 6:15:20 PM VET
-- LVE Withholding
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53431 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Aug 6, 2013 6:16:42 PM VET
-- LVE Withholding
UPDATE AD_Process_Trl SET Name='Copiar Retenciones Aplicadas',Description='Copia y Sobreescribe las Retenciones Aplicadas a los Socios de Negocio de este Grupo',Help=NULL,Updated=TO_DATE('2013-08-06 18:16:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53431 AND AD_Language='es_MX'
;

-- Aug 6, 2013 6:17:23 PM VET
-- LVE Withholding
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1383,0,53431,53949,19,'C_BP_Group_ID',TO_DATE('2013-08-06 18:17:20','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','Y','N','BP Group',10,TO_DATE('2013-08-06 18:17:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 6, 2013 6:17:23 PM VET
-- LVE Withholding
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=53949 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Aug 6, 2013 6:18:13 PM VET
-- LVE Withholding
INSERT INTO AD_Menu (Action,AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('P',0,53583,0,53431,TO_DATE('2013-08-06 18:18:11','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Copy Withholding Applied',TO_DATE('2013-08-06 18:18:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 6, 2013 6:18:13 PM VET
-- LVE Withholding
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53583 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Aug 6, 2013 6:18:13 PM VET
-- LVE Withholding
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 53583, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=53583)
;

-- Aug 6, 2013 6:18:18 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53583
;

-- Aug 6, 2013 6:18:18 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53582
;

-- Aug 6, 2013 6:18:18 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53579
;

-- Aug 6, 2013 6:18:18 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53578
;

-- Aug 6, 2013 6:18:18 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53577
;

-- Aug 6, 2013 6:18:18 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53574
;

-- Aug 6, 2013 6:18:18 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53573
;

