-- 22/08/2013 03:12:54 PM VET
-- LVE Withholding
UPDATE AD_Column SET AD_Reference_ID=30, AD_Reference_Value_ID=138,Updated=TO_TIMESTAMP('2013-08-22 15:12:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66841
;

-- 22/08/2013 03:13:07 PM VET
-- LVE Withholding
UPDATE AD_Column SET AD_Reference_ID=18, AD_Reference_Value_ID=170,Updated=TO_TIMESTAMP('2013-08-22 15:13:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66835
;

-- 22/08/2013 03:13:37 PM VET
-- LVE Withholding
UPDATE AD_Column SET AD_Reference_ID=18, AD_Reference_Value_ID=138,Updated=TO_TIMESTAMP('2013-08-22 15:13:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66834
;

-- 22/08/2013 03:14:08 PM VET
-- LVE Withholding
UPDATE AD_Column SET AD_Reference_ID=18, AD_Reference_Value_ID=170,Updated=TO_TIMESTAMP('2013-08-22 15:14:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66836
;

-- 22/08/2013 03:22:31 PM VET
-- LVE Withholding
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,53526,TO_TIMESTAMP('2013-08-22 15:22:28','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','LVE_WH_Combination_CombinationName',TO_TIMESTAMP('2013-08-22 15:22:28','YYYY-MM-DD HH24:MI:SS'),100,'T')
;

-- 22/08/2013 03:22:31 PM VET
-- LVE Withholding
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53526 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 22/08/2013 03:22:41 PM VET
-- LVE Withholding
UPDATE AD_Reference_Trl SET Name='Nombre Combinacion',Updated=TO_TIMESTAMP('2013-08-22 15:22:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53526 AND AD_Language='es_MX'
;

-- 22/08/2013 03:36:47 PM VET
-- LVE Withholding
UPDATE AD_Reference SET Name='LVE_WH_Concept_ConceptName',Updated=TO_TIMESTAMP('2013-08-22 15:36:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53526
;

-- 22/08/2013 03:36:47 PM VET
-- LVE Withholding
UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=53526
;

-- 22/08/2013 03:36:56 PM VET
-- LVE Withholding
UPDATE AD_Reference_Trl SET Name='Nombre Concepto',Updated=TO_TIMESTAMP('2013-08-22 15:36:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53526 AND AD_Language='es_MX'
;

-- 22/08/2013 03:37:23 PM VET
-- LVE Withholding
INSERT INTO AD_Ref_Table (AD_Client_ID,AD_Display,AD_Key,AD_Org_ID,AD_Reference_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,IsValueDisplayed,Updated,UpdatedBy) VALUES (0,66428,66424,0,53526,53536,TO_TIMESTAMP('2013-08-22 15:37:23','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Y',TO_TIMESTAMP('2013-08-22 15:37:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/08/2013 03:39:22 PM VET
-- LVE Withholding
UPDATE AD_Column SET AD_Reference_ID=42,Updated=TO_TIMESTAMP('2013-08-22 15:39:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66843
;

-- 22/08/2013 03:39:35 PM VET
-- LVE Withholding
UPDATE AD_Column SET AD_Reference_ID=19,Updated=TO_TIMESTAMP('2013-08-22 15:39:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66843
;

-- 22/08/2013 03:40:46 PM VET
-- LVE Withholding
UPDATE AD_Column SET AD_Reference_ID=18, AD_Reference_Value_ID=53526,Updated=TO_TIMESTAMP('2013-08-22 15:40:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66843
;

-- 22/08/2013 03:43:16 PM VET
-- LVE Withholding
UPDATE AD_Reference SET Name='LVE_WH_Concept ConceptName',Updated=TO_TIMESTAMP('2013-08-22 15:43:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53526
;

-- 22/08/2013 03:43:16 PM VET
-- LVE Withholding
UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=53526
;

-- 22/08/2013 03:43:27 PM VET
-- LVE Withholding
UPDATE AD_Reference SET Name='LVE_WH_Concept Concept Name',Updated=TO_TIMESTAMP('2013-08-22 15:43:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53526
;

-- 22/08/2013 03:43:27 PM VET
-- LVE Withholding
UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=53526
;

-- 22/08/2013 03:43:51 PM VET
-- LVE Withholding
UPDATE AD_Reference_Trl SET Name='LVE_WH_Concept Concept Name',Updated=TO_TIMESTAMP('2013-08-22 15:43:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53526 AND AD_Language='es_MX'
;

-- 22/08/2013 03:44:10 PM VET
-- LVE Withholding
UPDATE AD_Ref_Table SET IsValueDisplayed='N',Updated=TO_TIMESTAMP('2013-08-22 15:44:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53526
;

-- 22/08/2013 03:55:17 PM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='%Base Imponible',PrintName='%Base Imponible',Description='%Base Imponible',Updated=TO_TIMESTAMP('2013-08-22 15:55:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56120 AND AD_Language='es_MX'
;

-- 22/08/2013 03:56:00 PM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='% Base Imponible',PrintName='% Base Imponible',Description='% Base Imponible',Updated=TO_TIMESTAMP('2013-08-22 15:56:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56120 AND AD_Language='es_MX'
;

