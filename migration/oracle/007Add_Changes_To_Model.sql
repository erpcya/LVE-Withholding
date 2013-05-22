-- Mar 3, 2013 1:04:30 AM VET
-- LVE Retention
UPDATE AD_Table SET Name='Retention Combination',Updated=TO_DATE('2013-03-03 01:04:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=3000003
;

-- Mar 3, 2013 1:04:30 AM VET
-- LVE Retention
UPDATE AD_Table_Trl SET IsTranslated='N' WHERE AD_Table_ID=3000003
;

-- Mar 3, 2013 1:04:57 AM VET
-- LVE Retention
UPDATE AD_Column SET IsMandatory='N',Updated=TO_DATE('2013-03-03 01:04:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=3000053
;

-- Mar 3, 2013 1:05:04 AM VET
-- LVE Retention
UPDATE AD_Column SET IsMandatory='N',Updated=TO_DATE('2013-03-03 01:05:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=3000052
;

-- Mar 3, 2013 1:06:20 AM VET
-- LVE Retention
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=3000010
;

-- Mar 3, 2013 1:06:20 AM VET
-- LVE Retention
/*DELETE FROM AD_Column WHERE AD_Column_ID=3000010
;*/

-- Mar 3, 2013 1:07:34 AM VET
-- LVE Retention
UPDATE AD_Column SET AD_Element_ID=117, AD_Reference_ID=19, ColumnName='AD_Process_ID', Description='Process or Report', Help='The Process field identifies a unique Process or Report in the system.', Name='Process',Updated=TO_DATE('2013-03-03 01:07:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=3000010
;

-- Mar 3, 2013 1:07:34 AM VET
-- LVE Retention
UPDATE AD_Column_Trl SET IsTranslated='N' WHERE AD_Column_ID=3000010
;

-- Mar 3, 2013 1:07:34 AM VET
-- LVE Retention
UPDATE AD_Field SET Name='Process', Description='Process or Report', Help='The Process field identifies a unique Process or Report in the system.' WHERE AD_Column_ID=3000010 AND IsCentrallyMaintained='Y'
;

-- Mar 3, 2013 1:08:23 AM VET
-- LVE Retention
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_DATE('2013-03-03 01:08:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=3000010
;

-- Mar 3, 2013 1:17:49 AM VET
-- LVE Retention
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,Description,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,3000001,'org.erpca.process.GenerateRetention','N',TO_DATE('2013-03-03 01:17:49','YYYY-MM-DD HH24:MI:SS'),100,'Process Retention IVA','U','Y','N','N','N','N','Process Retention IVA','Y',82,1138,TO_DATE('2013-03-03 01:17:49','YYYY-MM-DD HH24:MI:SS'),100,'prc_ProcessRetention_IVA')
;

-- Mar 3, 2013 1:17:49 AM VET
-- LVE Retention
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=3000001 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Mar 3, 2013 1:17:56 AM VET
-- LVE Retention
UPDATE AD_Process SET AccessLevel='3', AD_Form_ID=NULL, AD_PrintFormat_ID=NULL, AD_ReportView_ID=NULL, AD_Workflow_ID=NULL, Classname='org.erpca.process.GenerateRetention', Description='GenerateRetention', Help=NULL, IsBetaFunctionality='N', IsDirectPrint='N', IsReport='N', IsServerProcess='N', JasperReport=NULL, ProcedureName=NULL, ShowHelp='Y',Updated=TO_DATE('2013-03-03 01:17:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=3000001
;

-- Mar 3, 2013 1:17:56 AM VET
-- LVE Retention
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=3000001
;

-- Mar 3, 2013 1:17:56 AM VET
-- LVE Retention
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1008,0,3000001,3000005,19,'C_Invoice_ID',TO_DATE('2013-03-03 01:17:56','YYYY-MM-DD HH24:MI:SS'),100,'Invoice','U',0,'Y','Y','N','N','Invoice',10,TO_DATE('2013-03-03 01:17:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 3, 2013 1:17:56 AM VET
-- LVE Retention
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=3000005 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Mar 3, 2013 1:17:56 AM VET
-- LVE Retention
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,187,0,3000001,3000006,19,'C_BPartner_ID',TO_DATE('2013-03-03 01:17:56','YYYY-MM-DD HH24:MI:SS'),100,'Business Partner ','U',0,'Y','Y','N','N','Business Partner ',20,TO_DATE('2013-03-03 01:17:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 3, 2013 1:17:56 AM VET
-- LVE Retention
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=3000006 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Mar 3, 2013 1:17:56 AM VET
-- LVE Retention
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,263,0,3000001,3000007,15,'DateAcct',TO_DATE('2013-03-03 01:17:56','YYYY-MM-DD HH24:MI:SS'),100,'Account Date','U',0,'Y','Y','N','Y','Account Date',30,TO_DATE('2013-03-03 01:17:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 3, 2013 1:17:56 AM VET
-- LVE Retention
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=3000007 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Mar 3, 2013 1:17:57 AM VET
-- LVE Retention
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,3000000,0,3000001,3000008,19,'CUST_RetentionType_ID',TO_DATE('2013-03-03 01:17:56','YYYY-MM-DD HH24:MI:SS'),100,'Retention Type','U',0,'Y','Y','N','N','Retention Type',40,TO_DATE('2013-03-03 01:17:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 3, 2013 1:17:57 AM VET
-- LVE Retention
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=3000008 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Mar 3, 2013 1:17:57 AM VET
-- LVE Retention
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,265,0,3000001,3000009,15,'DateDoc',TO_DATE('2013-03-03 01:17:57','YYYY-MM-DD HH24:MI:SS'),100,'U',0,'Y','Y','Y','N','Document Date',50,TO_DATE('2013-03-03 01:17:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 3, 2013 1:17:57 AM VET
-- LVE Retention
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=3000009 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Mar 3, 2013 1:18:02 AM VET
-- LVE Retention
UPDATE AD_Process SET EntityType='ECA02',Updated=TO_DATE('2013-03-03 01:18:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=3000001
;

-- Mar 3, 2013 1:18:20 AM VET
-- LVE Retention
UPDATE AD_Process SET Classname='org.erpca.process.ProcessRetention_IVA',Updated=TO_DATE('2013-03-03 01:18:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=3000001
;

-- Mar 3, 2013 1:19:05 AM VET
-- LVE Retention
UPDATE AD_Process_Trl SET Name='Procesar Retención de IVA',Description='Procesar Retención de IVA',Updated=TO_DATE('2013-03-03 01:19:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=3000001 AND AD_Language='es_VE'
;

-- Mar 3, 2013 1:19:49 AM VET
-- LVE Retention
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,Description,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,3000002,'org.erpca.process.ProcessRetention_ISLR','N',TO_DATE('2013-03-03 01:19:49','YYYY-MM-DD HH24:MI:SS'),100,'GenerateRetention','ECA02','Y','N','N','N','N','Process Retention ISLR','Y',82,1138,TO_DATE('2013-03-03 01:19:49','YYYY-MM-DD HH24:MI:SS'),100,'prc_ProcessRetention_ISLR')
;

-- Mar 3, 2013 1:19:49 AM VET
-- LVE Retention
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=3000002 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Mar 3, 2013 1:20:13 AM VET
-- LVE Retention
UPDATE AD_Process SET AccessLevel='3', AD_Form_ID=NULL, AD_PrintFormat_ID=NULL, AD_ReportView_ID=NULL, AD_Workflow_ID=NULL, Classname='org.erpca.process.ProcessRetention_ISLR', Description='GenerateRetention', Help=NULL, IsBetaFunctionality='N', IsDirectPrint='N', IsReport='N', IsServerProcess='N', JasperReport=NULL, ProcedureName=NULL, ShowHelp='Y',Updated=TO_DATE('2013-03-03 01:20:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=3000002
;

-- Mar 3, 2013 1:20:13 AM VET
-- LVE Retention
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=3000002
;

-- Mar 3, 2013 1:20:25 AM VET
-- LVE Retention
UPDATE AD_Process SET AccessLevel='3', AD_Form_ID=NULL, AD_PrintFormat_ID=NULL, AD_ReportView_ID=NULL, AD_Workflow_ID=NULL, Classname='org.erpca.process.ProcessRetention_IVA', Description='GenerateRetention', Help=NULL, IsBetaFunctionality='N', IsDirectPrint='N', IsReport='N', IsServerProcess='N', JasperReport=NULL, ProcedureName=NULL, ShowHelp='Y',Updated=TO_DATE('2013-03-03 01:20:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=3000002
;

-- Mar 3, 2013 1:20:25 AM VET
-- LVE Retention
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=3000002
;

-- Mar 3, 2013 1:20:25 AM VET
-- LVE Retention
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1008,0,3000002,3000010,19,'C_Invoice_ID',TO_DATE('2013-03-03 01:20:25','YYYY-MM-DD HH24:MI:SS'),100,'Invoice','ECA02',0,'Y','Y','N','N','Invoice',10,TO_DATE('2013-03-03 01:20:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 3, 2013 1:20:25 AM VET
-- LVE Retention
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=3000010 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Mar 3, 2013 1:20:26 AM VET
-- LVE Retention
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,187,0,3000002,3000011,19,'C_BPartner_ID',TO_DATE('2013-03-03 01:20:25','YYYY-MM-DD HH24:MI:SS'),100,'Business Partner ','ECA02',0,'Y','Y','N','N','Business Partner ',20,TO_DATE('2013-03-03 01:20:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 3, 2013 1:20:26 AM VET
-- LVE Retention
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=3000011 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Mar 3, 2013 1:20:26 AM VET
-- LVE Retention
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,263,0,3000002,3000012,15,'DateAcct',TO_DATE('2013-03-03 01:20:26','YYYY-MM-DD HH24:MI:SS'),100,'Account Date','ECA02',0,'Y','Y','N','Y','Account Date',30,TO_DATE('2013-03-03 01:20:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 3, 2013 1:20:26 AM VET
-- LVE Retention
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=3000012 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Mar 3, 2013 1:20:26 AM VET
-- LVE Retention
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,3000000,0,3000002,3000013,19,'CUST_RetentionType_ID',TO_DATE('2013-03-03 01:20:26','YYYY-MM-DD HH24:MI:SS'),100,'Retention Type','ECA02',0,'Y','Y','N','N','Retention Type',40,TO_DATE('2013-03-03 01:20:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 3, 2013 1:20:26 AM VET
-- LVE Retention
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=3000013 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Mar 3, 2013 1:20:26 AM VET
-- LVE Retention
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,265,0,3000002,3000014,15,'DateDoc',TO_DATE('2013-03-03 01:20:26','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','Y','N','Document Date',50,TO_DATE('2013-03-03 01:20:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Mar 3, 2013 1:20:26 AM VET
-- LVE Retention
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=3000014 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Mar 3, 2013 1:20:32 AM VET
-- LVE Retention
UPDATE AD_Process SET Classname='org.erpca.process.ProcessRetention_ISLR',Updated=TO_DATE('2013-03-03 01:20:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=3000002
;

-- Mar 3, 2013 1:20:57 AM VET
-- LVE Retention
UPDATE AD_Process_Trl SET Name='Procesar Retención de ISLR',Description='Procesar Retención de ISLR',Updated=TO_DATE('2013-03-03 01:20:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=3000002 AND AD_Language='es_VE'
;

-- Mar 3, 2013 1:22:03 AM VET
-- LVE Retention
UPDATE AD_Process_Para SET DefaultValue='@#Date@',Updated=TO_DATE('2013-03-03 01:22:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=3000004
;

-- Mar 3, 2013 1:23:15 AM VET
-- LVE Retention
UPDATE AD_Table_Trl SET Name='Combinación de Retención',Updated=TO_DATE('2013-03-03 01:23:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=3000003 AND AD_Language='es_VE'
;

-- Mar 3, 2013 1:23:44 AM VET
-- LVE Retention
UPDATE AD_Element SET Name='Retention Combination', PrintName='Retention Combination',Updated=TO_DATE('2013-03-03 01:23:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=3000004
;

-- Mar 3, 2013 1:23:44 AM VET
-- LVE Retention
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=3000004
;

-- Mar 3, 2013 1:23:44 AM VET
-- LVE Retention
UPDATE AD_Column SET ColumnName='CUST_CR_PT_Combination_ID', Name='Retention Combination', Description=NULL, Help=NULL WHERE AD_Element_ID=3000004
;

-- Mar 3, 2013 1:23:44 AM VET
-- LVE Retention
UPDATE AD_Process_Para SET ColumnName='CUST_CR_PT_Combination_ID', Name='Retention Combination', Description=NULL, Help=NULL, AD_Element_ID=3000004 WHERE UPPER(ColumnName)='CUST_CR_PT_COMBINATION_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Mar 3, 2013 1:23:44 AM VET
-- LVE Retention
UPDATE AD_Process_Para SET ColumnName='CUST_CR_PT_Combination_ID', Name='Retention Combination', Description=NULL, Help=NULL WHERE AD_Element_ID=3000004 AND IsCentrallyMaintained='Y'
;

-- Mar 3, 2013 1:23:44 AM VET
-- LVE Retention
UPDATE AD_Field SET Name='Retention Combination', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=3000004) AND IsCentrallyMaintained='Y'
;

-- Mar 3, 2013 1:23:44 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem SET PrintName='Retention Combination', Name='Retention Combination' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=3000004)
;

-- Mar 3, 2013 1:24:09 AM VET
-- LVE Retention
UPDATE AD_Element_Trl SET Name='Combinación de Retención',PrintName='Combinación de Retención',Updated=TO_DATE('2013-03-03 01:24:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=3000004 AND AD_Language='es_VE'
;

-- Mar 3, 2013 1:24:50 AM VET
-- LVE Retention
UPDATE AD_Window SET Description='Combination Retention', Name='Combination Retention',Updated=TO_DATE('2013-03-03 01:24:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=3000002
;

-- Mar 3, 2013 1:24:50 AM VET
-- LVE Retention
UPDATE AD_Window_Trl SET IsTranslated='N' WHERE AD_Window_ID=3000002
;

-- Mar 3, 2013 1:24:50 AM VET
-- LVE Retention
UPDATE AD_Menu SET Description='Combination Retention', IsActive='Y', Name='Combination Retention',Updated=TO_DATE('2013-03-03 01:24:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=3000003
;

-- Mar 3, 2013 1:24:50 AM VET
-- LVE Retention
UPDATE AD_Menu_Trl SET IsTranslated='N' WHERE AD_Menu_ID=3000003
;

-- Mar 3, 2013 1:25:14 AM VET
-- LVE Retention
UPDATE AD_Window_Trl SET Name='Combinación de Retención',Description='Combinación de Retención',Updated=TO_DATE('2013-03-03 01:25:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=3000002 AND AD_Language='es_VE'
;

-- Mar 3, 2013 1:29:02 AM VET
-- LVE Retention
UPDATE AD_Tab SET Description='Combination Retention', Name='Combination Retention',Updated=TO_DATE('2013-03-03 01:29:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=3000005
;

-- Mar 3, 2013 1:29:02 AM VET
-- LVE Retention
UPDATE AD_Tab_Trl SET IsTranslated='N' WHERE AD_Tab_ID=3000005
;

-- Mar 3, 2013 1:29:27 AM VET
-- LVE Retention
UPDATE AD_Tab_Trl SET Name='Conbinación de Retención',Description='Conbinación de Retención',Updated=TO_DATE('2013-03-03 01:29:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=3000005 AND AD_Language='es_VE'
;
