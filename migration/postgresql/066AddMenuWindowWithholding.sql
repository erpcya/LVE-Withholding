-- Aug 9, 2013 10:38:22 AM VET
-- LVE Withholding
INSERT INTO AD_Menu ("action",AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('W',0,53586,0,53258,TO_TIMESTAMP('2013-08-09 10:38:20','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','LVE Withholding',TO_TIMESTAMP('2013-08-09 10:38:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 9, 2013 10:38:22 AM VET
-- LVE Withholding
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53586 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Aug 9, 2013 10:38:22 AM VET
-- LVE Withholding
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 53586, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=53586)
;

-- Aug 9, 2013 10:38:24 AM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53586
;

-- Aug 9, 2013 10:38:24 AM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53584
;

-- Aug 9, 2013 10:38:24 AM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=2, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53583
;

-- Aug 9, 2013 10:38:24 AM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=3, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53582
;

-- Aug 9, 2013 10:38:24 AM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=4, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53579
;

-- Aug 9, 2013 10:38:24 AM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=5, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53578
;

-- Aug 9, 2013 10:38:24 AM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=6, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53577
;

-- Aug 9, 2013 10:38:24 AM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=7, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53574
;

-- Aug 9, 2013 10:38:24 AM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=8, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53573
;

-- Aug 9, 2013 10:38:30 AM VET
-- LVE Withholding
UPDATE AD_Menu_Trl SET Name='Retenciones',Updated=TO_TIMESTAMP('2013-08-09 10:38:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53586 AND AD_Language='es_MX'
;

