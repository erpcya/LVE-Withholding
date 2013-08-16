-- Aug 8, 2013 5:16:01 PM VET
-- LVE Withholding
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,56053,0,53424,53952,19,'LVE_Withholding_ID',TO_TIMESTAMP('2013-08-08 17:15:57','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Y','N','N','LVE_Withholding_ID',60,TO_TIMESTAMP('2013-08-08 17:15:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 8, 2013 5:16:01 PM VET
-- LVE Withholding
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=53952 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Aug 8, 2013 5:17:00 PM VET
-- LVE Withholding
UPDATE AD_Process SET Classname='org.spin.process.WithholdingGenerate',Updated=TO_TIMESTAMP('2013-08-08 17:17:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53424
;

