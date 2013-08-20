-- Aug 10, 2013 10:13:20 PM VET
-- LVE Withholding
UPDATE AD_Process SET Description='Withholding Generate', Name='Withholding Generate', Value='LVE_Withholding WithholdingGenerate',Updated=TO_TIMESTAMP('2013-08-10 22:13:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53424
;

-- Aug 10, 2013 10:13:20 PM VET
-- LVE Withholding
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=53424
;

-- Aug 10, 2013 10:13:20 PM VET
-- LVE Withholding
UPDATE AD_Menu SET Description='Withholding Generate', IsActive='Y', Name='Withholding Generate',Updated=TO_TIMESTAMP('2013-08-10 22:13:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53579
;

-- Aug 10, 2013 10:13:20 PM VET
-- LVE Withholding
UPDATE AD_Menu_Trl SET IsTranslated='N' WHERE AD_Menu_ID=53579
;

-- Aug 10, 2013 10:14:54 PM VET
-- LVE Withholding
INSERT INTO AD_Menu (AD_Client_ID,AD_Menu_ID,AD_Org_ID,Created,CreatedBy,Description,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES (0,53587,0,TO_TIMESTAMP('2013-08-10 22:14:53','YYYY-MM-DD HH24:MI:SS'),100,'Withholding Setup','ECA02','Y','Y','N','N','Y','Withholding Setup',TO_TIMESTAMP('2013-08-10 22:14:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 10, 2013 10:14:54 PM VET
-- LVE Withholding
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53587 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Aug 10, 2013 10:14:54 PM VET
-- LVE Withholding
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 53587, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=53587)
;

-- Aug 10, 2013 10:15:01 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53587
;

-- Aug 10, 2013 10:15:01 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53586
;

-- Aug 10, 2013 10:15:01 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=2, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53584
;

-- Aug 10, 2013 10:15:01 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=3, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53583
;

-- Aug 10, 2013 10:15:01 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=4, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53582
;

-- Aug 10, 2013 10:15:01 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=5, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53579
;

-- Aug 10, 2013 10:15:01 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=6, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53578
;

-- Aug 10, 2013 10:15:01 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=7, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53577
;

-- Aug 10, 2013 10:15:01 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=8, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53574
;

-- Aug 10, 2013 10:15:01 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=9, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53573
;

-- Aug 10, 2013 10:16:05 PM VET
-- LVE Withholding
UPDATE AD_Menu_Trl SET Name='Configuración de Retenciones',Description='Configuración de Retenciones... Conceptos y Grupos',Updated=TO_TIMESTAMP('2013-08-10 22:16:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53587 AND AD_Language='es_MX'
;

-- Aug 10, 2013 10:16:41 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53587, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53578
;

-- Aug 10, 2013 10:16:49 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53587, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53577
;

-- Aug 10, 2013 10:16:49 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53587, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53578
;

-- Aug 10, 2013 10:16:59 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53587, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53586
;

-- Aug 10, 2013 10:16:59 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53587, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53577
;

-- Aug 10, 2013 10:16:59 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53587, SeqNo=2, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53578
;

-- Aug 10, 2013 10:17:05 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53587, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53574
;

-- Aug 10, 2013 10:17:05 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53587, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53586
;

-- Aug 10, 2013 10:17:05 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53587, SeqNo=2, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53577
;

-- Aug 10, 2013 10:17:05 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53587, SeqNo=3, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53578
;

-- Aug 10, 2013 10:17:13 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53573
;

-- Aug 10, 2013 10:17:13 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53587
;

-- Aug 10, 2013 10:17:13 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=2, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53584
;

-- Aug 10, 2013 10:17:13 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=3, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53583
;

-- Aug 10, 2013 10:17:13 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=4, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53582
;

-- Aug 10, 2013 10:17:13 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=5, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53579
;

-- Aug 10, 2013 10:17:13 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=6, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53573
;

-- Aug 10, 2013 10:17:15 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53587, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53573
;

-- Aug 10, 2013 10:17:15 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53587, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53574
;

-- Aug 10, 2013 10:17:15 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53587, SeqNo=2, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53586
;

-- Aug 10, 2013 10:17:15 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53587, SeqNo=3, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53577
;

-- Aug 10, 2013 10:17:15 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53587, SeqNo=4, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53578
;

-- Aug 10, 2013 10:18:13 PM VET
-- LVE Withholding
INSERT INTO AD_Menu (AD_Client_ID,AD_Menu_ID,AD_Org_ID,Created,CreatedBy,Description,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES (0,53588,0,TO_TIMESTAMP('2013-08-10 22:18:12','YYYY-MM-DD HH24:MI:SS'),100,'Withholding Process','ECA02','Y','Y','N','N','Y','Withholding Process',TO_TIMESTAMP('2013-08-10 22:18:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 10, 2013 10:18:13 PM VET
-- LVE Withholding
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53588 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Aug 10, 2013 10:18:13 PM VET
-- LVE Withholding
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 53588, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=53588)
;

-- Aug 10, 2013 10:20:44 PM VET
-- LVE Withholding
UPDATE AD_Menu_Trl SET Name='Calculo de Retenciones',Description='Calculo de Retenciones y Declaración',Updated=TO_TIMESTAMP('2013-08-10 22:20:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53588 AND AD_Language='es_MX'
;

-- Aug 10, 2013 10:20:53 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53587
;

-- Aug 10, 2013 10:20:53 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53588
;

-- Aug 10, 2013 10:20:53 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=2, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53584
;

-- Aug 10, 2013 10:20:53 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=3, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53583
;

-- Aug 10, 2013 10:20:53 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=4, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53582
;

-- Aug 10, 2013 10:20:53 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=5, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53579
;

-- Aug 10, 2013 10:21:04 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53588, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53582
;

-- Aug 10, 2013 10:21:08 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53588, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53584
;

-- Aug 10, 2013 10:21:08 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53588, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53582
;

-- Aug 10, 2013 10:21:19 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53587, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53583
;

-- Aug 10, 2013 10:21:19 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53587, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53573
;

-- Aug 10, 2013 10:21:19 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53587, SeqNo=2, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53574
;

-- Aug 10, 2013 10:21:19 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53587, SeqNo=3, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53586
;

-- Aug 10, 2013 10:21:19 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53587, SeqNo=4, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53577
;

-- Aug 10, 2013 10:21:19 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53587, SeqNo=5, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53578
;

-- Aug 10, 2013 10:21:24 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53588, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53579
;

-- Aug 10, 2013 10:21:24 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53588, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53584
;

-- Aug 10, 2013 10:21:24 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53588, SeqNo=2, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=53582
;

