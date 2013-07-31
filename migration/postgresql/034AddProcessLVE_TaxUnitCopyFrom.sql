-- Jul 31, 2013 10:28:27 AM VET
-- LVE Withholding
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,Description,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53422,'org.erpca.process.CopyFromTaxUnit','N',TO_TIMESTAMP('2013-07-31 10:28:26','YYYY-MM-DD HH24:MI:SS'),100,'Copy From','ECA02','Y','N','N','N','N','Copy From','Y',0,0,TO_TIMESTAMP('2013-07-31 10:28:26','YYYY-MM-DD HH24:MI:SS'),100,'LVE_TaxUnit CopyFrom')
;

-- Jul 31, 2013 10:28:27 AM VET
-- LVE Withholding
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53422 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Jul 31, 2013 10:28:50 AM VET
-- LVE Withholding
UPDATE AD_Process_Trl SET Name='Copiar Desde',Description='Copiar Desde',Updated=TO_TIMESTAMP('2013-07-31 10:28:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53422 AND AD_Language='es_MX'
;

-- Jul 31, 2013 10:33:23 AM VET
-- LVE Withholding
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56064,0,53422,53932,19,'LVE_TaxUnit_ID',TO_TIMESTAMP('2013-07-31 10:33:22','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','Y','N','Tax Unit',10,TO_TIMESTAMP('2013-07-31 10:33:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 31, 2013 10:33:23 AM VET
-- LVE Withholding
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=53932 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Jul 31, 2013 10:34:03 AM VET
-- LVE Withholding
UPDATE AD_Column SET AD_Process_ID=53422,Updated=TO_TIMESTAMP('2013-07-31 10:34:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66487
;

