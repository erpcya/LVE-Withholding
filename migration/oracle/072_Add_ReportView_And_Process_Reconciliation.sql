-- 22/05/2013 10:43:35 AM VET
-- LVE Retention
INSERT INTO AD_ReportView (AD_Client_ID,AD_Org_ID,AD_ReportView_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,0,3000207,3000231,TO_DATE('2013-05-22 10:43:34','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','T_Cust_Reconciliation',TO_DATE('2013-05-22 10:43:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/05/2013 10:44:02 AM VET
-- LVE Retention
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_ReportView_ID,Classname,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,3000212,3000207,'org.erpca.report.Reconciliation','N',TO_DATE('2013-05-22 10:44:01','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','Y','N','Bank Statement','Y',0,0,TO_DATE('2013-05-22 10:44:01','YYYY-MM-DD HH24:MI:SS'),100,'rptBankStatement')
;

-- 22/05/2013 10:44:02 AM VET
-- LVE Retention
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=3000212 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 22/05/2013 10:44:10 AM VET
-- LVE Retention
UPDATE AD_Process_Trl SET Name='Estado de Cuentas',Updated=TO_DATE('2013-05-22 10:44:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=3000212 AND AD_Language='es_VE'
;

-- 22/05/2013 10:44:34 AM VET
-- LVE Retention
UPDATE AD_Tab SET AD_Process_ID=3000212,Updated=TO_DATE('2013-05-22 10:44:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=328
;

