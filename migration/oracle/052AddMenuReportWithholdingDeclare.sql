-- Aug 6, 2013 3:22:44 PM VET
-- LVE Withholding
INSERT INTO AD_Menu (Action,AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('R',0,53582,0,53430,TO_DATE('2013-08-06 15:22:42','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Withholding Declare',TO_DATE('2013-08-06 15:22:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 6, 2013 3:22:44 PM VET
-- LVE Withholding
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53582 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Aug 6, 2013 3:22:44 PM VET
-- LVE Withholding
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 53582, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=53582)
;

-- Aug 6, 2013 3:22:54 PM VET
-- LVE Withholding
UPDATE AD_Menu_Trl SET Name='Retenciones Declaradas',Updated=TO_DATE('2013-08-06 15:22:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53582 AND AD_Language='es_MX'
;

-- Aug 6, 2013 3:22:57 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53582
;

-- Aug 6, 2013 3:22:57 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53579
;

-- Aug 6, 2013 3:22:57 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53578
;

-- Aug 6, 2013 3:22:57 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53577
;

-- Aug 6, 2013 3:22:57 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53574
;

-- Aug 6, 2013 3:22:57 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53573
;

