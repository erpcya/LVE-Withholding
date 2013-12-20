-- Aug 28, 2013 9:19:11 AM VET
-- LVE Withholding
UPDATE AD_Process SET Classname='org.spin.process.CopyFromConceptGroup',Updated=TO_DATE('2013-08-28 09:19:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53441
;

-- Aug 28, 2013 9:36:59 AM VET
-- LVE Withholding
UPDATE AD_Element SET ColumnName='CopyCombination', Name='Copy Combination', PrintName='Copy Combination',Updated=TO_DATE('2013-08-28 09:36:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56153
;

-- Aug 28, 2013 9:36:59 AM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56153
;

-- Aug 28, 2013 9:36:59 AM VET
-- LVE Withholding
UPDATE AD_Column SET ColumnName='CopyCombination', Name='Copy Combination', Description=NULL, Help=NULL WHERE AD_Element_ID=56153
;

-- Aug 28, 2013 9:36:59 AM VET
-- LVE Withholding
UPDATE AD_Process_Para SET ColumnName='CopyCombination', Name='Copy Combination', Description=NULL, Help=NULL, AD_Element_ID=56153 WHERE UPPER(ColumnName)='COPYCOMBINATION' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Aug 28, 2013 9:36:59 AM VET
-- LVE Withholding
UPDATE AD_Process_Para SET ColumnName='CopyCombination', Name='Copy Combination', Description=NULL, Help=NULL WHERE AD_Element_ID=56153 AND IsCentrallyMaintained='Y'
;

-- Aug 28, 2013 9:36:59 AM VET
-- LVE Withholding
UPDATE AD_Field SET Name='Copy Combination', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=56153) AND IsCentrallyMaintained='Y'
;

-- Aug 28, 2013 9:36:59 AM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem pi SET PrintName='Copy Combination', Name='Copy Combination' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=56153)
;

