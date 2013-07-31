-- Jul 30, 2013 12:05:42 PM VET
-- LVE Withholding
INSERT INTO AD_Menu (AD_Client_ID,AD_Menu_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES (0,53572,0,TO_DATE('2013-07-30 12:05:41','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','Y','Withholding ',TO_DATE('2013-07-30 12:05:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 30, 2013 12:05:42 PM VET
-- LVE Withholding
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53572 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Jul 30, 2013 12:05:42 PM VET
-- LVE Withholding
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 53572, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=53572)
;

-- Jul 30, 2013 12:05:49 PM VET
-- LVE Withholding
UPDATE AD_Menu_Trl SET Name='Retenciones',Updated=TO_DATE('2013-07-30 12:05:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53572 AND AD_Language='es_MX'
;

-- Jul 30, 2013 12:06:18 PM VET
-- LVE Withholding
INSERT INTO AD_Menu (Action,AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('W',0,53573,0,53254,TO_DATE('2013-07-30 12:06:17','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','Y','N','N','N','Withholding',TO_DATE('2013-07-30 12:06:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 30, 2013 12:06:18 PM VET
-- LVE Withholding
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53573 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Jul 30, 2013 12:06:18 PM VET
-- LVE Withholding
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 53573, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=53573)
;

-- Jul 30, 2013 12:06:24 PM VET
-- LVE Withholding
UPDATE AD_Menu_Trl SET Name='Retenciones',Updated=TO_DATE('2013-07-30 12:06:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53573 AND AD_Language='es_MX'
;

-- Jul 30, 2013 12:07:10 PM VET
-- LVE Withholding
INSERT INTO AD_Menu (Action,AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('W',0,53574,0,53250,TO_DATE('2013-07-30 12:07:09','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','Y','N','N','N','Withholding Type',TO_DATE('2013-07-30 12:07:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 30, 2013 12:07:10 PM VET
-- LVE Withholding
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53574 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Jul 30, 2013 12:07:10 PM VET
-- LVE Withholding
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 53574, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=53574)
;

-- Jul 30, 2013 12:07:23 PM VET
-- LVE Withholding
UPDATE AD_Menu_Trl SET Name='Tipo de Retención',Updated=TO_DATE('2013-07-30 12:07:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53574 AND AD_Language='es_MX'
;

-- Jul 30, 2013 12:07:48 PM VET
-- LVE Withholding
UPDATE AD_Menu SET EntityType='ECA02',Updated=TO_DATE('2013-07-30 12:07:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53574
;

-- Jul 30, 2013 12:07:53 PM VET
-- LVE Withholding
UPDATE AD_Menu SET EntityType='ECA02',Updated=TO_DATE('2013-07-30 12:07:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53573
;

-- Jul 30, 2013 12:07:56 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53573
;

-- Jul 30, 2013 12:07:58 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53574
;

-- Jul 30, 2013 12:07:58 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53573
;

-- Jul 30, 2013 12:08:42 PM VET
-- LVE Withholding
INSERT INTO AD_Menu (Action,AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('W',0,53575,0,53255,TO_DATE('2013-07-30 12:08:41','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Withholding Concept',TO_DATE('2013-07-30 12:08:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 30, 2013 12:08:42 PM VET
-- LVE Withholding
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53575 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Jul 30, 2013 12:08:42 PM VET
-- LVE Withholding
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 53575, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=53575)
;

-- Jul 30, 2013 12:10:03 PM VET
-- LVE Withholding
INSERT INTO AD_Menu (Action,AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('W',0,53576,0,53256,TO_DATE('2013-07-30 12:10:03','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Withholding Conbination',TO_DATE('2013-07-30 12:10:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 30, 2013 12:10:03 PM VET
-- LVE Withholding
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53576 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Jul 30, 2013 12:10:03 PM VET
-- LVE Withholding
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 53576, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=53576)
;

-- Jul 30, 2013 12:10:12 PM VET
-- LVE Withholding
UPDATE AD_Menu_Trl SET Name='Combinacion de Retenciones',Updated=TO_DATE('2013-07-30 12:10:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53576 AND AD_Language='es_MX'
;

-- Jul 30, 2013 12:10:25 PM VET
-- LVE Withholding
UPDATE AD_Menu_Trl SET Name='Concepto de Retencion',Updated=TO_DATE('2013-07-30 12:10:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53575 AND AD_Language='es_MX'
;

-- Jul 30, 2013 12:10:27 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53575
;

-- Jul 30, 2013 12:10:27 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53574
;

-- Jul 30, 2013 12:10:27 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53573
;

-- Jul 30, 2013 12:10:28 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- Jul 30, 2013 12:10:28 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- Jul 30, 2013 12:10:28 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- Jul 30, 2013 12:10:28 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- Jul 30, 2013 12:10:28 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- Jul 30, 2013 12:10:28 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- Jul 30, 2013 12:10:28 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- Jul 30, 2013 12:10:28 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- Jul 30, 2013 12:10:28 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- Jul 30, 2013 12:10:28 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- Jul 30, 2013 12:10:28 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- Jul 30, 2013 12:10:28 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- Jul 30, 2013 12:10:28 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- Jul 30, 2013 12:10:28 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53576
;

-- Jul 30, 2013 12:10:28 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53572
;

-- Jul 30, 2013 12:10:28 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53576
;

-- Jul 30, 2013 12:10:30 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53576
;

-- Jul 30, 2013 12:10:30 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53575
;

-- Jul 30, 2013 12:10:30 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53574
;

-- Jul 30, 2013 12:10:30 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53573
;

-- Jul 30, 2013 12:11:02 PM VET
-- LVE Withholding
INSERT INTO AD_Menu (Action,AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('W',0,53577,0,53251,TO_DATE('2013-07-30 12:10:58','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Tax Unit',TO_DATE('2013-07-30 12:10:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 30, 2013 12:11:02 PM VET
-- LVE Withholding
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53577 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Jul 30, 2013 12:11:02 PM VET
-- LVE Withholding
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 53577, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=53577)
;

-- Jul 30, 2013 12:11:09 PM VET
-- LVE Withholding
UPDATE AD_Menu_Trl SET Name='Unidad Tributaria',Updated=TO_DATE('2013-07-30 12:11:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53577 AND AD_Language='es_MX'
;

-- Jul 30, 2013 12:11:12 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53577
;

-- Jul 30, 2013 12:11:12 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53576
;

-- Jul 30, 2013 12:11:12 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53575
;

-- Jul 30, 2013 12:11:12 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53574
;

-- Jul 30, 2013 12:11:12 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53573
;

-- Jul 30, 2013 12:11:45 PM VET
-- LVE Withholding
INSERT INTO AD_Menu (Action,AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('W',0,53578,0,53252,TO_DATE('2013-07-30 12:11:44','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y','N','N','N','Person Type',TO_DATE('2013-07-30 12:11:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 30, 2013 12:11:45 PM VET
-- LVE Withholding
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53578 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Jul 30, 2013 12:11:45 PM VET
-- LVE Withholding
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 53578, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=53578)
;

-- Jul 30, 2013 12:11:51 PM VET
-- LVE Withholding
UPDATE AD_Menu_Trl SET Name='Tipo de Persona',Updated=TO_DATE('2013-07-30 12:11:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53578 AND AD_Language='es_MX'
;

-- Jul 30, 2013 12:11:53 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- Jul 30, 2013 12:11:53 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- Jul 30, 2013 12:11:53 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- Jul 30, 2013 12:11:53 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- Jul 30, 2013 12:11:53 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- Jul 30, 2013 12:11:53 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- Jul 30, 2013 12:11:53 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- Jul 30, 2013 12:11:53 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- Jul 30, 2013 12:11:53 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- Jul 30, 2013 12:11:53 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- Jul 30, 2013 12:11:53 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- Jul 30, 2013 12:11:53 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- Jul 30, 2013 12:11:53 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- Jul 30, 2013 12:11:53 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53578
;

-- Jul 30, 2013 12:11:53 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53572
;

-- Jul 30, 2013 12:11:53 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53578
;

-- Jul 30, 2013 12:11:55 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53578
;

-- Jul 30, 2013 12:11:55 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53577
;

-- Jul 30, 2013 12:11:55 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53576
;

-- Jul 30, 2013 12:11:55 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53575
;

-- Jul 30, 2013 12:11:55 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53574
;

-- Jul 30, 2013 12:11:55 PM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53573
;

