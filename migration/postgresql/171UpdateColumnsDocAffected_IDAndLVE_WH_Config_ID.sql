-- Dec 11, 2014 10:16:02 PM VET
-- LVE Withholding
UPDATE AD_Field SET IsReadOnly='N',Updated=TO_TIMESTAMP('2014-12-11 22:16:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67864
;

-- Dec 11, 2014 10:16:55 PM VET
-- LVE Withholding
UPDATE AD_Field SET AD_Reference_ID=18,Updated=TO_TIMESTAMP('2014-12-11 22:16:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67864
;

-- Dec 11, 2014 10:22:24 PM VET
-- LVE Withholding
UPDATE AD_Column SET ReadOnlyLogic='@LVE_WH_Config_ID@!0 & @IsSOTrx@ =''N''',Updated=TO_TIMESTAMP('2014-12-11 22:22:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66489
;

-- Dec 12, 2014 10:10:28 AM VET
-- LVE Withholding
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,53764,TO_TIMESTAMP('2014-12-12 10:10:21','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','LVE_WH_Config Config Name',TO_TIMESTAMP('2014-12-12 10:10:21','YYYY-MM-DD HH24:MI:SS'),100,'T')
;

-- Dec 12, 2014 10:10:28 AM VET
-- LVE Withholding
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53764 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Dec 12, 2014 10:11:16 AM VET
-- LVE Withholding
DELETE FROM AD_Reference_Trl WHERE AD_Reference_ID=53764
;

-- Dec 12, 2014 10:11:16 AM VET
-- LVE Withholding
DELETE FROM AD_Reference WHERE AD_Reference_ID=53764
;

-- Dec 12, 2014 10:12:43 AM VET
-- LVE Withholding
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52411,'EXISTS (SELECT 1 FROM LVE_Withholding w  INNER JOIN LVE_WH_ConceptGroup whcg ON (w.LVE_WH_ConceptGroup_ID = whcg.LVE_WH_ConceptGroup_ID ) INNER JOIN LVE_WH_Concept whcc ON (whcg.LVE_WH_ConceptGroup_ID = whcc.LVE_WH_ConceptGroup_ID) INNER JOIN LVE_WH_Combination whc ON (whcc.LVE_WH_Concept_ID = whc.LVE_WH_Concept_ID) WHERE w.IsSOTrx = ''Y'' AND LVE_WH_Config.LVE_WH_Combination_ID = whc.LVE_WH_Combination_ID )',TO_TIMESTAMP('2014-12-12 10:12:41','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','LVE_WH_Config of Sales Transaction','S',TO_TIMESTAMP('2014-12-12 10:12:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Dec 12, 2014 10:12:56 AM VET
-- LVE Withholding
UPDATE AD_Field SET AD_Reference_ID=19, AD_Val_Rule_ID=52411,Updated=TO_TIMESTAMP('2014-12-12 10:12:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=67864
;

