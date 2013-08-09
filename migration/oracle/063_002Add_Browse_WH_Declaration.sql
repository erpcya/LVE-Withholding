-- Aug 9, 2013 6:10:14 AM VET
-- LVE Withholding
INSERT INTO AD_View (AD_Client_ID,AD_Org_ID,AD_View_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,50015,TO_DATE('2013-08-09 06:10:13','YYYY-MM-DD HH24:MI:SS'),100,'Withholding Undeclared','ECA02','View of withholdings pending for declaring.','Y','Withholding Undeclared',TO_DATE('2013-08-09 06:10:13','YYYY-MM-DD HH24:MI:SS'),100,'LVE_RV_WH_UnDeclared')
;

-- Aug 9, 2013 6:10:14 AM VET
-- LVE Withholding
INSERT INTO AD_View_Trl (AD_Language,AD_View_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_View_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_View t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_View_ID=50015 AND NOT EXISTS (SELECT * FROM AD_View_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_View_ID=t.AD_View_ID)
;

-- Aug 9, 2013 6:11:03 AM VET
-- LVE Withholding
UPDATE AD_View_Trl SET Name='Retenciones no Declaradas',Description='Retenciones no Declaradas',Help='Vista de retenciones pendientes por declarar.',Updated=TO_DATE('2013-08-09 06:11:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_View_ID=50015
;

-- Aug 9, 2013 6:12:39 AM VET
-- LVE Withholding
INSERT INTO AD_View_Definition (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_View_Definition_ID,AD_View_ID,Created,CreatedBy,IsActive,Processing,SeqNo,TableAlias,Updated,UpdatedBy) VALUES (0,0,53547,50052,50015,TO_DATE('2013-08-09 06:12:38','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',10,'WHU',TO_DATE('2013-08-09 06:12:38','YYYY-MM-DD HH24:MI:SS'),100)
;

