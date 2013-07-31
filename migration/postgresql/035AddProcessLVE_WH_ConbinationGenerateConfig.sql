-- Jul 31, 2013 10:40:39 AM VET
-- LVE Withholding
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,Description,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53423,'org.erpca.process.CopyFromTaxUnit','N',TO_TIMESTAMP('2013-07-31 10:40:39','YYYY-MM-DD HH24:MI:SS'),100,'Generate Config','U','Y','N','N','N','N','Generate Config','Y',0,0,TO_TIMESTAMP('2013-07-31 10:40:39','YYYY-MM-DD HH24:MI:SS'),100,'LVE_WH_Conbination GenerateConfig')
;

-- Jul 31, 2013 10:40:39 AM VET
-- LVE Withholding
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53423 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Jul 31, 2013 10:41:03 AM VET
-- LVE Withholding
UPDATE AD_Process SET Classname='org.erpca.process.GenerateConfigConbination', EntityType='ECA02',Updated=TO_TIMESTAMP('2013-07-31 10:41:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53423
;

-- Jul 31, 2013 10:41:48 AM VET
-- LVE Withholding
UPDATE AD_Column SET AD_Process_ID=53423,Updated=TO_TIMESTAMP('2013-07-31 10:41:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66442
;

-- Jul 31, 2013 10:44:48 AM VET
-- LVE Withholding
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56064,0,53423,53933,19,'LVE_TaxUnit_ID',TO_TIMESTAMP('2013-07-31 10:44:47','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','Tax Unit',10,TO_TIMESTAMP('2013-07-31 10:44:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 31, 2013 10:44:48 AM VET
-- LVE Withholding
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=53933 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jul 31, 2013 10:49:37 AM VET
-- LVE Withholding
UPDATE AD_Process_Trl SET Name='Generar Configuración',Description='Generar Configuración',Updated=TO_TIMESTAMP('2013-07-31 10:49:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53423 AND AD_Language='es_MX'
;

