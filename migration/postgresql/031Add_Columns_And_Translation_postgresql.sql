-- Jul 30, 2013 10:49:41 PM VET
-- LVE Withholding
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2013-07-30 22:49:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66486
;

-- Jul 30, 2013 10:52:01 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66491,275,0,14,53541,'Description',TO_TIMESTAMP('2013-07-30 22:52:00','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record','ECA02',255,'A description is limited to 255 characters.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Description',0,TO_TIMESTAMP('2013-07-30 22:52:00','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jul 30, 2013 10:52:01 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66491 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jul 30, 2013 10:53:23 PM VET
-- LVE Withholding
UPDATE AD_Column SET AD_Reference_ID=30, IsUpdateable='N',Updated=TO_TIMESTAMP('2013-07-30 22:53:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66461
;

-- Jul 30, 2013 10:53:48 PM VET
-- LVE Withholding
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2013-07-30 22:53:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66441
;

-- Jul 30, 2013 10:56:11 PM VET
-- LVE Withholding
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2013-07-30 22:56:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66406
;

-- Jul 30, 2013 10:57:18 PM VET
-- LVE Withholding
UPDATE AD_Column SET AD_Reference_ID=14,Updated=TO_TIMESTAMP('2013-07-30 22:57:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66399
;

-- Jul 30, 2013 11:15:23 PM VET
-- LVE Withholding
UPDATE AD_Column SET AD_Val_Rule_ID=124,Updated=TO_TIMESTAMP('2013-07-30 23:15:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66403
;

-- Jul 30, 2013 11:16:46 PM VET
-- LVE Withholding
UPDATE AD_Column SET AD_Val_Rule_ID=124,Updated=TO_TIMESTAMP('2013-07-30 23:16:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66404
;

-- Jul 30, 2013 11:17:55 PM VET
-- LVE Withholding
UPDATE AD_Column SET AD_Reference_ID=14,Updated=TO_TIMESTAMP('2013-07-30 23:17:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66429
;

-- Jul 30, 2013 11:21:53 PM VET
-- LVE Withholding
UPDATE AD_Column SET IsMandatory='N', IsUpdateable='N',Updated=TO_TIMESTAMP('2013-07-30 23:21:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66416
;

-- Jul 30, 2013 11:21:57 PM VET
-- LVE Withholding
UPDATE AD_Column SET IsMandatory='N', IsUpdateable='N',Updated=TO_TIMESTAMP('2013-07-30 23:21:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66417
;

-- Jul 30, 2013 11:22:02 PM VET
-- LVE Withholding
UPDATE AD_Column SET IsMandatory='N', IsUpdateable='N',Updated=TO_TIMESTAMP('2013-07-30 23:22:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66418
;

-- Jul 30, 2013 11:22:47 PM VET
-- LVE Withholding
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2013-07-30 23:22:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66388
;

-- Jul 30, 2013 11:24:19 PM VET
-- LVE Withholding
UPDATE AD_Column SET AD_Reference_ID=14,Updated=TO_TIMESTAMP('2013-07-30 23:24:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66452
;

-- Jul 30, 2013 11:28:27 PM VET
-- LVE Withholding
UPDATE AD_Column SET IsMandatory='N', IsUpdateable='N',Updated=TO_TIMESTAMP('2013-07-30 23:28:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66461
;

-- Jul 30, 2013 11:28:38 PM VET
-- LVE Withholding
UPDATE AD_Column SET IsMandatory='N', IsUpdateable='N',Updated=TO_TIMESTAMP('2013-07-30 23:28:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66462
;

-- Jul 30, 2013 11:29:34 PM VET
-- LVE Withholding
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2013-07-30 23:29:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66406
;

-- Jul 30, 2013 11:29:42 PM VET
-- LVE Withholding
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2013-07-30 23:29:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66402
;

-- Jul 30, 2013 11:29:50 PM VET
-- LVE Withholding
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2013-07-30 23:29:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66404
;

-- Jul 30, 2013 11:30:08 PM VET
-- LVE Withholding
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2013-07-30 23:30:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66405
;

-- Jul 30, 2013 11:30:21 PM VET
-- LVE Withholding
UPDATE AD_Column SET IsMandatory='Y', IsUpdateable='N',Updated=TO_TIMESTAMP('2013-07-30 23:30:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66403
;

-- Jul 30, 2013 11:30:29 PM VET
-- LVE Withholding
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2013-07-30 23:30:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66404
;

-- Jul 30, 2013 11:31:52 PM VET
-- LVE Withholding
UPDATE AD_Column SET IsMandatory='N',Updated=TO_TIMESTAMP('2013-07-30 23:31:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66439
;

-- Jul 30, 2013 11:37:12 PM VET
-- LVE Withholding
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2013-07-30 23:37:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66428
;

-- Jul 30, 2013 11:39:29 PM VET
-- LVE Withholding
UPDATE AD_Column SET IsMandatory='Y', IsUpdateable='N',Updated=TO_TIMESTAMP('2013-07-30 23:39:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66473
;

-- Jul 30, 2013 11:41:07 PM VET
-- LVE Withholding
UPDATE AD_Column SET IsMandatory='Y', IsUpdateable='N',Updated=TO_TIMESTAMP('2013-07-30 23:41:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66475
;

-- Jul 30, 2013 11:41:12 PM VET
-- LVE Withholding
UPDATE AD_Column SET IsMandatory='Y', IsUpdateable='N',Updated=TO_TIMESTAMP('2013-07-30 23:41:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66474
;

-- Jul 30, 2013 11:43:52 PM VET
-- LVE Withholding
UPDATE AD_Tab_Trl SET Name='Documentos a Aplicar',Updated=TO_TIMESTAMP('2013-07-30 23:43:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53705 AND AD_Language='es_MX'
;

-- Jul 30, 2013 11:44:55 PM VET
-- LVE Withholding
UPDATE AD_Window_Trl SET Name='Retención',Updated=TO_TIMESTAMP('2013-07-30 23:44:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=53254 AND AD_Language='es_MX'
;

-- Jul 30, 2013 11:45:27 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=67890
;

-- Jul 30, 2013 11:45:27 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=67891
;

-- Jul 30, 2013 11:45:27 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=67893
;

-- Jul 30, 2013 11:46:35 PM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='Concepto de Retención',PrintName='Concepto de Retención',Updated=TO_TIMESTAMP('2013-07-30 23:46:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56057 AND AD_Language='es_MX'
;

-- Jul 30, 2013 11:46:53 PM VET
-- LVE Withholding
UPDATE AD_Tab_Trl SET Name='Concepto de Retención',Updated=TO_TIMESTAMP('2013-07-30 23:46:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53706 AND AD_Language='es_MX'
;

-- Jul 30, 2013 11:47:06 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=67908
;

-- Jul 30, 2013 11:47:06 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=67906
;

-- Jul 30, 2013 11:47:06 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=67907
;

-- Jul 30, 2013 11:47:16 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-07-30 23:47:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67908
;

-- Jul 30, 2013 11:50:05 PM VET
-- LVE Withholding
UPDATE AD_Tab SET Name='Combination',Updated=TO_TIMESTAMP('2013-07-30 23:50:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53708
;

-- Jul 30, 2013 11:50:05 PM VET
-- LVE Withholding
UPDATE AD_Tab_Trl SET IsTranslated='N' WHERE AD_Tab_ID=53708
;

-- Jul 30, 2013 11:50:52 PM VET
-- LVE Withholding
UPDATE AD_Tab_Trl SET Name='Combinación',Description='Combinación de Retención',Updated=TO_TIMESTAMP('2013-07-30 23:50:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53708 AND AD_Language='es_MX'
;

-- Jul 30, 2013 11:51:37 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=67924
;

-- Jul 30, 2013 11:51:37 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=67923
;

-- Jul 30, 2013 11:53:27 PM VET
-- LVE Withholding
UPDATE AD_Field SET DisplayLength=10,Updated=TO_TIMESTAMP('2013-07-30 23:53:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67921
;

-- Jul 30, 2013 11:53:32 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-07-30 23:53:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67922
;

-- Jul 30, 2013 11:56:01 PM VET
-- LVE Withholding
UPDATE AD_Tab_Trl SET Name='Retención',Description='Retención a Documentos',Updated=TO_TIMESTAMP('2013-07-30 23:56:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53700 AND AD_Language='es_MX'
;

-- Jul 30, 2013 11:56:54 PM VET
-- LVE Withholding
UPDATE AD_Tab_Trl SET Description='Documentos a los que se le Aplicará la Retención',Updated=TO_TIMESTAMP('2013-07-30 23:56:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53705 AND AD_Language='es_MX'
;

-- Jul 30, 2013 11:57:16 PM VET
-- LVE Withholding
UPDATE AD_Tab_Trl SET Description='Concepto de Retención',Updated=TO_TIMESTAMP('2013-07-30 23:57:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53706 AND AD_Language='es_MX'
;

-- Jul 30, 2013 11:57:55 PM VET
-- LVE Withholding
UPDATE AD_Tab SET Name='Product or Charge',Updated=TO_TIMESTAMP('2013-07-30 23:57:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53707
;

-- Jul 30, 2013 11:57:55 PM VET
-- LVE Withholding
UPDATE AD_Tab_Trl SET IsTranslated='N' WHERE AD_Tab_ID=53707
;

-- Jul 30, 2013 11:58:13 PM VET
-- LVE Withholding
UPDATE AD_Tab_Trl SET Name='Producto o Cargo',Updated=TO_TIMESTAMP('2013-07-30 23:58:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53707 AND AD_Language='es_MX'
;

-- Jul 30, 2013 11:58:55 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=67915
;

-- Jul 30, 2013 11:58:55 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=67913
;

-- Jul 30, 2013 11:58:55 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=67914
;

-- Jul 30, 2013 11:59:03 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-07-30 23:59:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67915
;

-- Jul 30, 2013 11:59:27 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsMandatory='Y',Updated=TO_TIMESTAMP('2013-07-30 23:59:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67913
;

-- Jul 30, 2013 11:59:33 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsMandatory='Y',Updated=TO_TIMESTAMP('2013-07-30 23:59:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67914
;

-- Jul 30, 2013 11:59:52 PM VET
-- LVE Withholding
UPDATE AD_Field SET DisplayLogic='@M_Product_ID@=0',Updated=TO_TIMESTAMP('2013-07-30 23:59:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67914
;

-- Jul 31, 2013 12:00:04 AM VET
-- LVE Withholding
UPDATE AD_Field SET DisplayLogic='@C_Charge_ID@=0',Updated=TO_TIMESTAMP('2013-07-31 00:00:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67913
;

-- Jul 31, 2013 12:04:26 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=67817
;

-- Jul 31, 2013 12:04:27 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=67819
;

-- Jul 31, 2013 12:04:35 AM VET
-- LVE Withholding
UPDATE AD_Field SET DisplayLength=10,Updated=TO_TIMESTAMP('2013-07-31 00:04:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67821
;

-- Jul 31, 2013 12:04:41 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-07-31 00:04:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67817
;

-- Jul 31, 2013 12:05:56 AM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66492,275,0,14,53533,'Description',TO_TIMESTAMP('2013-07-31 00:05:56','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record','ECA02',255,'A description is limited to 255 characters.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Description',0,TO_TIMESTAMP('2013-07-31 00:05:56','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Jul 31, 2013 12:05:56 AM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66492 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Jul 31, 2013 12:06:21 AM VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,66492,67954,0,53697,TO_TIMESTAMP('2013-07-31 00:06:20','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record',0,'ECA02','A description is limited to 255 characters.','Y','Y','Y','N','N','N','N','N','Description',60,0,TO_TIMESTAMP('2013-07-31 00:06:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 31, 2013 12:06:21 AM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=67954 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Jul 31, 2013 12:06:40 AM VET
-- LVE Withholding
UPDATE AD_Field SET DisplayLength=10,Updated=TO_TIMESTAMP('2013-07-31 00:06:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67954
;

-- Jul 31, 2013 12:06:49 AM VET
-- LVE Withholding
UPDATE AD_Field SET DisplayLength=60,Updated=TO_TIMESTAMP('2013-07-31 00:06:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67954
;

-- Jul 31, 2013 12:16:06 AM VET
-- LVE Withholding
UPDATE AD_Tab_Trl SET Name='Configuración',Description='Configuración de Retención',Updated=TO_TIMESTAMP('2013-07-31 00:16:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53709 AND AD_Language='es_MX'
;

-- Jul 31, 2013 12:18:46 AM VET
-- LVE Withholding
DELETE FROM AD_Menu_Trl WHERE AD_Menu_ID=53576
;

-- Jul 31, 2013 12:18:46 AM VET
-- LVE Withholding
DELETE FROM AD_Menu WHERE AD_Menu_ID=53576
;

-- Jul 31, 2013 12:18:46 AM VET
-- LVE Withholding
DELETE FROM AD_TreeNodeMM WHERE Node_ID=53576 AND EXISTS (SELECT * FROM AD_Tree t WHERE t.AD_Tree_ID=AD_TreeNodeMM.AD_Tree_ID AND t.TreeType='MM')
;

-- Jul 31, 2013 12:18:50 AM VET
-- LVE Withholding
DELETE FROM AD_Menu_Trl WHERE AD_Menu_ID=53575
;

-- Jul 31, 2013 12:18:50 AM VET
-- LVE Withholding
DELETE FROM AD_Menu WHERE AD_Menu_ID=53575
;

-- Jul 31, 2013 12:18:50 AM VET
-- LVE Withholding
DELETE FROM AD_TreeNodeMM WHERE Node_ID=53575 AND EXISTS (SELECT * FROM AD_Tree t WHERE t.AD_Tree_ID=AD_TreeNodeMM.AD_Tree_ID AND t.TreeType='MM')
;

-- Jul 31, 2013 12:18:57 AM VET
-- LVE Withholding
DELETE FROM AD_Window_Trl WHERE AD_Window_ID=53256
;

-- Jul 31, 2013 12:18:57 AM VET
-- LVE Withholding
DELETE FROM AD_Window WHERE AD_Window_ID=53256
;

-- Jul 31, 2013 12:19:22 AM VET
-- LVE Withholding
DELETE FROM AD_Window_Trl WHERE AD_Window_ID=53255
;

-- Jul 31, 2013 12:19:22 AM VET
-- LVE Withholding
DELETE FROM AD_Window WHERE AD_Window_ID=53255
;

-- Jul 31, 2013 12:20:51 AM VET
-- LVE Withholding
UPDATE AD_Element SET Name='Product or Charge', PrintName='Product or Charge',Updated=TO_TIMESTAMP('2013-07-31 00:20:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56061
;

-- Jul 31, 2013 12:20:51 AM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56061
;

-- Jul 31, 2013 12:20:51 AM VET
-- LVE Withholding
UPDATE AD_Column SET ColumnName='LVE_WC_ProductCharge_ID', Name='Product or Charge', Description=NULL, Help=NULL WHERE AD_Element_ID=56061
;

-- Jul 31, 2013 12:20:51 AM VET
-- LVE Withholding
UPDATE AD_Process_Para SET ColumnName='LVE_WC_ProductCharge_ID', Name='Product or Charge', Description=NULL, Help=NULL, AD_Element_ID=56061 WHERE UPPER(ColumnName)='LVE_WC_PRODUCTCHARGE_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Jul 31, 2013 12:20:51 AM VET
-- LVE Withholding
UPDATE AD_Process_Para SET ColumnName='LVE_WC_ProductCharge_ID', Name='Product or Charge', Description=NULL, Help=NULL WHERE AD_Element_ID=56061 AND IsCentrallyMaintained='Y'
;

-- Jul 31, 2013 12:20:51 AM VET
-- LVE Withholding
UPDATE AD_Field SET Name='Product or Charge', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=56061) AND IsCentrallyMaintained='Y'
;

-- Jul 31, 2013 12:20:51 AM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET PrintName='Product or Charge', Name='Product or Charge' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=56061)
;

-- Jul 31, 2013 12:21:04 AM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='Producto o Cargo',PrintName='Producto o Cargo',Updated=TO_TIMESTAMP('2013-07-31 00:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56061 AND AD_Language='es_MX'
;

-- Jul 31, 2013 12:21:11 AM VET
-- LVE Withholding
UPDATE AD_Table_Trl SET Name='Producto o Cargo',Updated=TO_TIMESTAMP('2013-07-31 00:21:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53539 AND AD_Language='es_MX'
;

-- Jul 31, 2013 12:21:40 AM VET
-- LVE Withholding
UPDATE AD_Table_Trl SET Name='Combinación',Updated=TO_TIMESTAMP('2013-07-31 00:21:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53537 AND AD_Language='es_MX'
;

-- Jul 31, 2013 12:21:59 AM VET
-- LVE Withholding
UPDATE AD_Element SET Name='Conbination', PrintName='Conbination',Updated=TO_TIMESTAMP('2013-07-31 00:21:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56058
;

-- Jul 31, 2013 12:21:59 AM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56058
;

-- Jul 31, 2013 12:21:59 AM VET
-- LVE Withholding
UPDATE AD_Column SET ColumnName='LVE_WH_Conbination_ID', Name='Conbination', Description=NULL, Help=NULL WHERE AD_Element_ID=56058
;

-- Jul 31, 2013 12:21:59 AM VET
-- LVE Withholding
UPDATE AD_Process_Para SET ColumnName='LVE_WH_Conbination_ID', Name='Conbination', Description=NULL, Help=NULL, AD_Element_ID=56058 WHERE UPPER(ColumnName)='LVE_WH_CONBINATION_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Jul 31, 2013 12:21:59 AM VET
-- LVE Withholding
UPDATE AD_Process_Para SET ColumnName='LVE_WH_Conbination_ID', Name='Conbination', Description=NULL, Help=NULL WHERE AD_Element_ID=56058 AND IsCentrallyMaintained='Y'
;

-- Jul 31, 2013 12:21:59 AM VET
-- LVE Withholding
UPDATE AD_Field SET Name='Conbination', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=56058) AND IsCentrallyMaintained='Y'
;

-- Jul 31, 2013 12:21:59 AM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET PrintName='Conbination', Name='Conbination' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=56058)
;

-- Jul 31, 2013 12:22:11 AM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='Conbinación',PrintName='Conbinación de Retención',Updated=TO_TIMESTAMP('2013-07-31 00:22:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56058 AND AD_Language='es_MX'
;

-- Jul 31, 2013 12:23:02 AM VET
-- LVE Withholding
UPDATE AD_Table_Trl SET Name='Combinación de Retención',Updated=TO_TIMESTAMP('2013-07-31 00:23:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53537 AND AD_Language='es_MX'
;

-- Jul 31, 2013 12:23:19 AM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='Conbinación de Retención',Updated=TO_TIMESTAMP('2013-07-31 00:23:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56058 AND AD_Language='es_MX'
;

-- Jul 31, 2013 12:23:32 AM VET
-- LVE Withholding
UPDATE AD_Element SET Name='Withholding Conbination', PrintName='Withholding Conbination',Updated=TO_TIMESTAMP('2013-07-31 00:23:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56058
;

-- Jul 31, 2013 12:23:32 AM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56058
;

-- Jul 31, 2013 12:23:32 AM VET
-- LVE Withholding
UPDATE AD_Column SET ColumnName='LVE_WH_Conbination_ID', Name='Withholding Conbination', Description=NULL, Help=NULL WHERE AD_Element_ID=56058
;

-- Jul 31, 2013 12:23:32 AM VET
-- LVE Withholding
UPDATE AD_Process_Para SET ColumnName='LVE_WH_Conbination_ID', Name='Withholding Conbination', Description=NULL, Help=NULL, AD_Element_ID=56058 WHERE UPPER(ColumnName)='LVE_WH_CONBINATION_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Jul 31, 2013 12:23:32 AM VET
-- LVE Withholding
UPDATE AD_Process_Para SET ColumnName='LVE_WH_Conbination_ID', Name='Withholding Conbination', Description=NULL, Help=NULL WHERE AD_Element_ID=56058 AND IsCentrallyMaintained='Y'
;

-- Jul 31, 2013 12:23:32 AM VET
-- LVE Withholding
UPDATE AD_Field SET Name='Withholding Conbination', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=56058) AND IsCentrallyMaintained='Y'
;

-- Jul 31, 2013 12:23:32 AM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET PrintName='Withholding Conbination', Name='Withholding Conbination' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=56058)
;

-- Jul 31, 2013 12:23:46 AM VET
-- LVE Withholding
UPDATE AD_Table SET Name='Product or Charge',Updated=TO_TIMESTAMP('2013-07-31 00:23:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53539
;

-- Jul 31, 2013 12:23:46 AM VET
-- LVE Withholding
UPDATE AD_Table_Trl SET IsTranslated='N' WHERE AD_Table_ID=53539
;

