-- Dec 19, 2013 9:22:07 AM VET
-- LVE Withholding
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,112,0,53424,54326,18,130,'AD_OrgTrx_ID',TO_TIMESTAMP('2013-12-19 09:22:04','YYYY-MM-DD HH24:MI:SS'),100,'Performing or initiating organization','ECA02',22,'The organization which performs or initiates this transaction (for another organization).  The owning Organization may not be the transaction organization in a service bureau environment, with centralized services, and inter-organization transactions.','Y','Y','N','N','Trx Organization',70,TO_TIMESTAMP('2013-12-19 09:22:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 19, 2013 9:22:07 AM VET
-- LVE Withholding
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=54326 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Dec 19, 2013 9:23:10 AM VET
-- LVE Withholding
UPDATE AD_Process_Para SET SeqNo=5,Updated=TO_TIMESTAMP('2013-12-19 09:23:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54283
;

-- Dec 19, 2013 9:23:18 AM VET
-- LVE Withholding
UPDATE AD_Process_Para SET SeqNo=9,Updated=TO_TIMESTAMP('2013-12-19 09:23:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=54326
;

