-- Aug 10, 2013 11:59:04 PM VET
-- LVE Withholding
UPDATE AD_Process_Para SET IsMandatory='Y',Updated=TO_DATE('2013-08-10 23:59:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=53932
;

-- Aug 10, 2013 11:59:48 PM VET
-- LVE Withholding
UPDATE AD_Table SET AD_Window_ID=53258,Updated=TO_DATE('2013-08-10 23:59:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53542
;

-- Aug 11, 2013 12:00:04 AM VET
-- LVE Withholding
UPDATE AD_Table SET Description=NULL,Updated=TO_DATE('2013-08-11 00:00:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53540
;

-- Aug 11, 2013 12:02:42 AM VET
-- LVE Withholding
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_DATE('2013-08-11 00:02:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66645
;

-- Aug 11, 2013 12:02:59 AM VET
-- LVE Withholding
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_DATE('2013-08-11 00:02:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66400
;

-- Aug 11, 2013 12:03:15 AM VET
-- LVE Withholding
UPDATE AD_Tab SET SeqNo=22,Updated=TO_DATE('2013-08-11 00:03:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53718
;

-- Aug 11, 2013 12:03:18 AM VET
-- LVE Withholding
UPDATE AD_Tab SET SeqNo=30,Updated=TO_DATE('2013-08-11 00:03:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53720
;

-- Aug 11, 2013 12:03:20 AM VET
-- LVE Withholding
UPDATE AD_Tab SET SeqNo=20,Updated=TO_DATE('2013-08-11 00:03:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=53718
;

-- Aug 11, 2013 12:06:52 AM VET
-- LVE Withholding
UPDATE AD_Process SET Classname='org.spin.process.ConfigConbinationGenerate', Description='Config Generate', Name='Config Generate', Value='LVE_WH_Conbination ConfigGenerate',Updated=TO_DATE('2013-08-11 00:06:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53423
;

-- Aug 11, 2013 12:06:52 AM VET
-- LVE Withholding
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=53423
;

-- Aug 11, 2013 12:08:30 AM VET
-- LVE Withholding
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,Description,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53434,'org.spin.process.WithholdingConfigGenerate','N',TO_DATE('2013-08-11 00:08:29','YYYY-MM-DD HH24:MI:SS'),100,'Withholding Config Generate','U','Y','N','N','N','N','Config Generate','Y',7,7,TO_DATE('2013-08-11 00:08:29','YYYY-MM-DD HH24:MI:SS'),100,'LVE_Withholding ConfigGenerate')
;

-- Aug 11, 2013 12:08:30 AM VET
-- LVE Withholding
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53434 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Aug 11, 2013 12:09:14 AM VET
-- LVE Withholding
UPDATE AD_Process SET EntityType='ECA02',Updated=TO_DATE('2013-08-11 00:09:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53434
;

-- Aug 11, 2013 12:09:42 AM VET
-- LVE Withholding
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56064,0,53434,53957,19,'LVE_TaxUnit_ID',TO_DATE('2013-08-11 00:09:41','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Tax Unit',10,TO_DATE('2013-08-11 00:09:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 11, 2013 12:09:42 AM VET
-- LVE Withholding
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=53957 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Aug 11, 2013 12:11:38 AM VET
-- LVE Withholding
UPDATE AD_Process_Trl SET Name='Generar Configuración',Description='Generar Configuración de Retención',Help='Genera las Configuraciones para esta Retención, si la Unidad Tributaria no se Selecciona se Generará para Todas las U.T.',Updated=TO_DATE('2013-08-11 00:11:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53434 AND AD_Language='es_MX'
;

-- Aug 11, 2013 12:12:22 AM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66656,524,0,53434,28,53534,'Processing',TO_DATE('2013-08-11 00:12:21','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Process Now',0,TO_DATE('2013-08-11 00:12:21','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 11, 2013 12:12:22 AM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66656 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 11, 2013 12:13:35 AM VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,66656,68107,0,53717,TO_DATE('2013-08-11 00:13:34','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Process Now',TO_DATE('2013-08-11 00:13:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 11, 2013 12:13:35 AM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68107 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Aug 11, 2013 12:14:27 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=68107
;

-- Aug 11, 2013 12:14:27 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=68078
;

-- Aug 11, 2013 12:14:27 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=68081
;

-- Aug 11, 2013 12:14:27 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=68082
;

-- Aug 11, 2013 12:14:27 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=68083
;

-- Aug 11, 2013 12:14:27 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=68084
;

-- Aug 11, 2013 12:14:39 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-08-11 00:14:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68107
;

-- Aug 11, 2013 12:14:42 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsSameLine='N',Updated=TO_DATE('2013-08-11 00:14:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68078
;

-- Aug 11, 2013 12:21:44 AM VET
-- LVE Withholding
UPDATE AD_Process SET Classname='org.spin.process.ConfigCombinationGenerate', Value='LVE_WH_Combination ConfigGenerate',Updated=TO_DATE('2013-08-11 00:21:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53423
;

