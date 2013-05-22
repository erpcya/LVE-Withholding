-- 29/04/2013 11:58:39 AM VET
-- LVE Retention
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_ReportView_ID,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,3000203,3000204,'N',TO_TIMESTAMP('2013-04-29 11:58:38','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','Books Sales','Y',0,0,TO_TIMESTAMP('2013-04-29 11:58:38','YYYY-MM-DD HH24:MI:SS'),100,'inf_Books_Sales')
;

-- 29/04/2013 11:58:39 AM VET
-- LVE Retention
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=3000203 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 29/04/2013 11:58:48 AM VET
-- LVE Retention
UPDATE AD_Process_Trl SET Name='Libro de Ventas',Updated=TO_TIMESTAMP('2013-04-29 11:58:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=3000203 AND AD_Language='es_MX'
;

-- 29/04/2013 11:58:57 AM VET
-- LVE Retention
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,263,0,3000203,3000209,15,'DateAcct',TO_TIMESTAMP('2013-04-29 11:58:56','YYYY-MM-DD HH24:MI:SS'),100,'Accounting Date','ECA02',7,'The Accounting Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.','Y','Y','N','N','Account Date',10,TO_TIMESTAMP('2013-04-29 11:58:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 29/04/2013 11:58:57 AM VET
-- LVE Retention
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=3000209 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 29/04/2013 11:59:09 AM VET
-- LVE Retention
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,267,0,3000203,3000210,15,'DateInvoiced',TO_TIMESTAMP('2013-04-29 11:59:09','YYYY-MM-DD HH24:MI:SS'),100,'Date printed on Invoice','ECA02',7,'The Date Invoice indicates the date printed on the invoice.','Y','Y','N','N','Date Invoiced',20,TO_TIMESTAMP('2013-04-29 11:59:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 29/04/2013 11:59:09 AM VET
-- LVE Retention
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=3000210 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 29/04/2013 11:59:40 AM VET
-- LVE Retention
UPDATE AD_Process_Para SET IsRange='Y',Updated=TO_TIMESTAMP('2013-04-29 11:59:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=3000210
;

-- 29/04/2013 11:59:42 AM VET
-- LVE Retention
UPDATE AD_Process_Para SET IsRange='Y',Updated=TO_TIMESTAMP('2013-04-29 11:59:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=3000209
;

