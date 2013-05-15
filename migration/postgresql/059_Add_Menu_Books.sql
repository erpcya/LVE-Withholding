-- 29/04/2013 12:10:45 PM VET
-- LVE Retention
INSERT INTO AD_Menu ("action",AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('R',0,3000205,0,3000202,TO_TIMESTAMP('2013-04-29 12:10:45','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Books Purchases',TO_TIMESTAMP('2013-04-29 12:10:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 29/04/2013 12:10:45 PM VET
-- LVE Retention
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=3000205 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- 29/04/2013 12:10:45 PM VET
-- LVE Retention
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_TIMESTAMP('2013-04-29 12:10:45','YYYY-MM-DD HH24:MI:SS'),100,'Y',3000205,0,999,TO_TIMESTAMP('2013-04-29 12:10:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 29/04/2013 12:10:53 PM VET
-- LVE Retention
UPDATE AD_Menu_Trl SET Name='Libro de Compras',Updated=TO_TIMESTAMP('2013-04-29 12:10:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=3000205 AND AD_Language='es_MX'
;

-- 29/04/2013 12:12:05 PM VET
-- LVE Retention
INSERT INTO AD_Menu ("action",AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('R',0,3000206,0,3000203,TO_TIMESTAMP('2013-04-29 12:12:05','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Books Sales',TO_TIMESTAMP('2013-04-29 12:12:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 29/04/2013 12:12:05 PM VET
-- LVE Retention
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=3000206 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- 29/04/2013 12:12:05 PM VET
-- LVE Retention
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_TIMESTAMP('2013-04-29 12:12:05','YYYY-MM-DD HH24:MI:SS'),100,'Y',3000206,0,999,TO_TIMESTAMP('2013-04-29 12:12:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 29/04/2013 12:12:13 PM VET
-- LVE Retention
UPDATE AD_Menu_Trl SET Name='Libro de Ventas',Updated=TO_TIMESTAMP('2013-04-29 12:12:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=3000206 AND AD_Language='es_MX'
;

-- 29/04/2013 12:13:05 PM VET
-- LVE Retention
UPDATE AD_TreeNodeMM SET Parent_ID=203, SeqNo=0,Updated=TO_TIMESTAMP('2013-04-29 12:13:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=3000205
;

-- 29/04/2013 12:13:05 PM VET
-- LVE Retention
UPDATE AD_TreeNodeMM SET Parent_ID=203, SeqNo=1,Updated=TO_TIMESTAMP('2013-04-29 12:13:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=452
;

-- 29/04/2013 12:13:05 PM VET
-- LVE Retention
UPDATE AD_TreeNodeMM SET Parent_ID=203, SeqNo=2,Updated=TO_TIMESTAMP('2013-04-29 12:13:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=454
;

-- 29/04/2013 12:13:05 PM VET
-- LVE Retention
UPDATE AD_TreeNodeMM SET Parent_ID=203, SeqNo=3,Updated=TO_TIMESTAMP('2013-04-29 12:13:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=466
;

-- 29/04/2013 12:13:05 PM VET
-- LVE Retention
UPDATE AD_TreeNodeMM SET Parent_ID=203, SeqNo=4,Updated=TO_TIMESTAMP('2013-04-29 12:13:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=468
;

-- 29/04/2013 12:13:05 PM VET
-- LVE Retention
UPDATE AD_TreeNodeMM SET Parent_ID=203, SeqNo=5,Updated=TO_TIMESTAMP('2013-04-29 12:13:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=467
;

-- 29/04/2013 12:13:05 PM VET
-- LVE Retention
UPDATE AD_TreeNodeMM SET Parent_ID=203, SeqNo=6,Updated=TO_TIMESTAMP('2013-04-29 12:13:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=463
;

-- 29/04/2013 12:13:05 PM VET
-- LVE Retention
UPDATE AD_TreeNodeMM SET Parent_ID=203, SeqNo=7,Updated=TO_TIMESTAMP('2013-04-29 12:13:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=549
;

-- 29/04/2013 12:13:05 PM VET
-- LVE Retention
UPDATE AD_TreeNodeMM SET Parent_ID=203, SeqNo=8,Updated=TO_TIMESTAMP('2013-04-29 12:13:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=471
;

-- 29/04/2013 12:13:05 PM VET
-- LVE Retention
UPDATE AD_TreeNodeMM SET Parent_ID=203, SeqNo=9,Updated=TO_TIMESTAMP('2013-04-29 12:13:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=205
;

-- 29/04/2013 12:13:05 PM VET
-- LVE Retention
UPDATE AD_TreeNodeMM SET Parent_ID=203, SeqNo=10,Updated=TO_TIMESTAMP('2013-04-29 12:13:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=204
;

-- 29/04/2013 12:13:05 PM VET
-- LVE Retention
UPDATE AD_TreeNodeMM SET Parent_ID=203, SeqNo=11,Updated=TO_TIMESTAMP('2013-04-29 12:13:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=493
;

-- 29/04/2013 12:13:05 PM VET
-- LVE Retention
UPDATE AD_TreeNodeMM SET Parent_ID=203, SeqNo=12,Updated=TO_TIMESTAMP('2013-04-29 12:13:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=206
;

-- 29/04/2013 12:13:05 PM VET
-- LVE Retention
UPDATE AD_TreeNodeMM SET Parent_ID=203, SeqNo=13,Updated=TO_TIMESTAMP('2013-04-29 12:13:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=360
;

-- 29/04/2013 12:13:05 PM VET
-- LVE Retention
UPDATE AD_TreeNodeMM SET Parent_ID=203, SeqNo=14,Updated=TO_TIMESTAMP('2013-04-29 12:13:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=516
;

-- 29/04/2013 12:13:05 PM VET
-- LVE Retention
UPDATE AD_TreeNodeMM SET Parent_ID=203, SeqNo=15,Updated=TO_TIMESTAMP('2013-04-29 12:13:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=312
;

-- 29/04/2013 12:13:05 PM VET
-- LVE Retention
UPDATE AD_TreeNodeMM SET Parent_ID=203, SeqNo=16,Updated=TO_TIMESTAMP('2013-04-29 12:13:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=316
;

-- 29/04/2013 12:13:05 PM VET
-- LVE Retention
UPDATE AD_TreeNodeMM SET Parent_ID=203, SeqNo=17,Updated=TO_TIMESTAMP('2013-04-29 12:13:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=315
;

-- 29/04/2013 12:13:12 PM VET
-- LVE Retention
UPDATE AD_TreeNodeMM SET Parent_ID=166, SeqNo=0,Updated=TO_TIMESTAMP('2013-04-29 12:13:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=3000206
;

-- 29/04/2013 12:13:12 PM VET
-- LVE Retention
UPDATE AD_TreeNodeMM SET Parent_ID=166, SeqNo=1,Updated=TO_TIMESTAMP('2013-04-29 12:13:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=272
;

-- 29/04/2013 12:13:12 PM VET
-- LVE Retention
UPDATE AD_TreeNodeMM SET Parent_ID=166, SeqNo=2,Updated=TO_TIMESTAMP('2013-04-29 12:13:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=457
;

-- 29/04/2013 12:13:12 PM VET
-- LVE Retention
UPDATE AD_TreeNodeMM SET Parent_ID=166, SeqNo=3,Updated=TO_TIMESTAMP('2013-04-29 12:13:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=459
;

-- 29/04/2013 12:13:12 PM VET
-- LVE Retention
UPDATE AD_TreeNodeMM SET Parent_ID=166, SeqNo=4,Updated=TO_TIMESTAMP('2013-04-29 12:13:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=458
;

-- 29/04/2013 12:13:13 PM VET
-- LVE Retention
UPDATE AD_TreeNodeMM SET Parent_ID=166, SeqNo=5,Updated=TO_TIMESTAMP('2013-04-29 12:13:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=100
;

