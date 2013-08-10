-- Aug 9, 2013 5:13:45 PM VET
-- LVE Withholding
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52177,'EXISTS(
SELECT 1 FROM LVE_WH_Combination cn 
INNER JOIN C_BPartner bp ON(bp.LVE_PersonType_ID = cn.LVE_PersonType_ID)
WHERE cn.LVE_WH_Concept_ID = LVE_WH_Concept.LVE_WH_Concept_ID AND bp.C_BPartner_ID = @C_BPartner_ID@)',TO_DATE('2013-08-09 17:13:44','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','LVE_WH_Concept Person Type & Concept Withholding','S',TO_DATE('2013-08-09 17:13:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 9, 2013 5:14:11 PM VET
-- LVE Withholding
UPDATE AD_Column SET AD_Val_Rule_ID=52177,Updated=TO_DATE('2013-08-09 17:14:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66488
;

-- Aug 9, 2013 5:17:38 PM VET
-- LVE Withholding
UPDATE AD_Table SET AD_Window_ID=53254,Updated=TO_DATE('2013-08-09 17:17:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53548
;

-- Aug 9, 2013 5:31:56 PM VET
-- LVE Withholding
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52178,'EXISTS(
SELECT 1 FROM LVE_WH_ConceptGroup cg
INNER JOIN LVE_WH_Concept cn ON cn.LVE_WH_ConceptGroup_ID  = cg.LVE_WH_ConceptGroup_ID  
INNER JOIN LVE_WH_Combination c ON cn.LVE_WH_Concept_ID  = c.LVE_WH_Concept_ID
WHERE cn.LVE_WH_Concept_ID = LVE_WH_Concept.LVE_WH_Concept_ID AND cg.LVE_WH_ConceptGroup = @LVE_WH_ConceptGroup_ID@)',TO_DATE('2013-08-09 17:31:55','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','LVE_Withholding Withholdin & Concept Group','S',TO_DATE('2013-08-09 17:31:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 9, 2013 5:32:17 PM VET
-- LVE Withholding
UPDATE AD_Process_Para SET AD_Val_Rule_ID=52178,Updated=TO_DATE('2013-08-09 17:32:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=53955
;

-- Aug 9, 2013 5:39:35 PM VET
-- LVE Withholding
UPDATE AD_Val_Rule SET Code='EXISTS(

SELECT 1
FROM LVE_Withholding w 
INNER JOIN LVE_WH_ConceptGroup cg ON cg.LVE_WH_ConceptGroup_ID = w.LVE_WH_ConceptGroup_ID 
)WHERE cg.LVE_WH_ConceptGroup_ID = @LVE_WH_ConceptGroup_ID@',Updated=TO_DATE('2013-08-09 17:39:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52178
;

-- Aug 9, 2013 5:49:42 PM VET
-- LVE Withholding
UPDATE AD_Val_Rule SET Code='EXISTS(
SELECT 1
FROM LVE_Withholding w
INNER JOIN LVE_WH_ConceptGroup cg ON cg.LVE_WH_ConceptGroup_ID = w.LVE_WH_ConceptGroup_ID 
INNER JOIN LVE_WH_Concept cn ON cn.LVE_WH_ConceptGroup_ID  = cg.LVE_WH_ConceptGroup_ID  
INNER JOIN LVE_WH_Combination c ON cn.LVE_WH_Concept_ID  = c.LVE_WH_Concept_ID
)
WHERE cg.LVE_WH_ConceptGroup_ID = @LVE_WH_ConceptGroup_ID@',Updated=TO_DATE('2013-08-09 17:49:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52178
;

-- Aug 9, 2013 5:56:23 PM VET
-- LVE Withholding
UPDATE AD_Val_Rule SET Code='EXISTS(
SELECT 1
FROM LVE_Withholding w
INNER JOIN LVE_WH_ConceptGroup cg ON cg.LVE_WH_ConceptGroup_ID = w.LVE_WH_ConceptGroup_ID 
)
WHERE cg.LVE_WH_ConceptGroup_ID = @LVE_WH_ConceptGroup_ID@',Updated=TO_DATE('2013-08-09 17:56:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52178
;

-- Aug 9, 2013 6:05:27 PM VET
-- LVE Withholding
UPDATE AD_Val_Rule SET Code='EXISTS(
SELECT 1
FROM LVE_Withholding w
INNER JOIN LVE_WH_ConceptGroup cg ON cg.LVE_WH_ConceptGroup_ID = w.LVE_WH_ConceptGroup_ID )
FROM LVE_WH_ConceptGroup
WHERE LVE_WH_ConceptGroup.LVE_WH_ConceptGroup_ID = @LVE_WH_ConceptGroup_ID@
',Updated=TO_DATE('2013-08-09 18:05:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52178
;

-- Aug 9, 2013 6:06:45 PM VET
-- LVE Withholding
UPDATE AD_Process_Para SET AD_Val_Rule_ID=52178,Updated=TO_DATE('2013-08-09 18:06:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=53956
;

-- Aug 9, 2013 6:08:19 PM VET
-- LVE Withholding
UPDATE AD_Val_Rule SET Code='EXISTS(
SELECT 1
FROM LVE_Withholding w
INNER JOIN LVE_WH_ConceptGroup cg ON cg.LVE_WH_ConceptGroup_ID = w.LVE_WH_ConceptGroup_ID )
WHERE LVE_WH_ConceptGroup.LVE_WH_ConceptGroup_ID = @LVE_WH_ConceptGroup_ID@
',Updated=TO_DATE('2013-08-09 18:08:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52178
;

-- Aug 9, 2013 6:10:49 PM VET
-- LVE Withholding
UPDATE AD_Val_Rule SET Code='EXISTS(
SELECT 1
FROM LVE_Withholding w
INNER JOIN LVE_WH_ConceptGroup cg ON (cg.LVE_WH_ConceptGroup_ID = w.LVE_WH_ConceptGroup_ID )
WHERE LVE_WH_ConceptGroup.LVE_WH_ConceptGroup_ID = @LVE_WH_ConceptGroup_ID@)
',Updated=TO_DATE('2013-08-09 18:10:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52178
;

-- Aug 9, 2013 6:12:31 PM VET
-- LVE Withholding
UPDATE AD_Val_Rule SET Code='EXISTS(
SELECT 1
FROM LVE_Withholding w
INNER JOIN LVE_WH_ConceptGroup cg ON (cg.LVE_WH_ConceptGroup_ID = w.LVE_WH_ConceptGroup_ID )
WHERE cg.LVE_WH_ConceptGroup_ID = @LVE_WH_ConceptGroup_ID@)
',Updated=TO_DATE('2013-08-09 18:12:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52178
;

-- Aug 9, 2013 6:15:33 PM VET
-- LVE Withholding
UPDATE AD_Val_Rule SET Code='EXISTS(
SELECT 1
FROM LVE_Withholding w
INNER JOIN LVE_WH_ConceptGroup cg ON (cg.LVE_WH_ConceptGroup_ID = @LVE_WH_ConceptGroup_ID@))
',Updated=TO_DATE('2013-08-09 18:15:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52178
;

