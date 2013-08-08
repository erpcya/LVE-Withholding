-- Aug 8, 2013 4:45:37 PM VET
-- LVE Withholding
UPDATE AD_Element SET ColumnName='WithholdingDocType_ID',Updated=TO_DATE('2013-08-08 16:45:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56054
;

-- Aug 8, 2013 4:45:37 PM VET
-- LVE Withholding
UPDATE AD_Column SET ColumnName='WithholdingDocType_ID', Name='Withholding Doc Type', Description=NULL, Help=NULL WHERE AD_Element_ID=56054
;

-- Aug 8, 2013 4:45:37 PM VET
-- LVE Withholding
UPDATE AD_Process_Para SET ColumnName='WithholdingDocType_ID', Name='Withholding Doc Type', Description=NULL, Help=NULL, AD_Element_ID=56054 WHERE UPPER(ColumnName)='WITHHOLDINGDOCTYPE_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Aug 8, 2013 4:45:37 PM VET
-- LVE Withholding
UPDATE AD_Process_Para SET ColumnName='WithholdingDocType_ID', Name='Withholding Doc Type', Description=NULL, Help=NULL WHERE AD_Element_ID=56054 AND IsCentrallyMaintained='Y'
;

-- Aug 8, 2013 4:47:47 PM VET
-- LVE Withholding
UPDATE AD_Element SET ColumnName='DeclarationDocType_ID',Updated=TO_DATE('2013-08-08 16:47:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56055
;

-- Aug 8, 2013 4:47:47 PM VET
-- LVE Withholding
UPDATE AD_Column SET ColumnName='DeclarationDocType_ID', Name='Declaration Doc Type', Description=NULL, Help=NULL WHERE AD_Element_ID=56055
;

-- Aug 8, 2013 4:47:47 PM VET
-- LVE Withholding
UPDATE AD_Process_Para SET ColumnName='DeclarationDocType_ID', Name='Declaration Doc Type', Description=NULL, Help=NULL, AD_Element_ID=56055 WHERE UPPER(ColumnName)='DECLARATIONDOCTYPE_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Aug 8, 2013 4:47:47 PM VET
-- LVE Withholding
UPDATE AD_Process_Para SET ColumnName='DeclarationDocType_ID', Name='Declaration Doc Type', Description=NULL, Help=NULL WHERE AD_Element_ID=56055 AND IsCentrallyMaintained='Y'
;

-- Aug 8, 2013 4:48:45 PM VET
-- LVE Withholding
UPDATE AD_Element SET ColumnName='RifOrg',Updated=TO_DATE('2013-08-08 16:48:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56096
;

-- Aug 8, 2013 4:48:45 PM VET
-- LVE Withholding
UPDATE AD_Column SET ColumnName='RifOrg', Name='riforg', Description=NULL, Help=NULL WHERE AD_Element_ID=56096
;

-- Aug 8, 2013 4:48:45 PM VET
-- LVE Withholding
UPDATE AD_Process_Para SET ColumnName='RifOrg', Name='riforg', Description=NULL, Help=NULL, AD_Element_ID=56096 WHERE UPPER(ColumnName)='RIFORG' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Aug 8, 2013 4:48:45 PM VET
-- LVE Withholding
UPDATE AD_Process_Para SET ColumnName='RifOrg', Name='riforg', Description=NULL, Help=NULL WHERE AD_Element_ID=56096 AND IsCentrallyMaintained='Y'
;

-- Aug 8, 2013 4:48:53 PM VET
-- LVE Withholding
UPDATE AD_Element SET Name='Rif Org', PrintName='Rif Org',Updated=TO_DATE('2013-08-08 16:48:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56096
;

-- Aug 8, 2013 4:48:53 PM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56096
;

-- Aug 8, 2013 4:48:53 PM VET
-- LVE Withholding
UPDATE AD_Column SET ColumnName='RifOrg', Name='Rif Org', Description=NULL, Help=NULL WHERE AD_Element_ID=56096
;

-- Aug 8, 2013 4:48:53 PM VET
-- LVE Withholding
UPDATE AD_Process_Para SET ColumnName='RifOrg', Name='Rif Org', Description=NULL, Help=NULL, AD_Element_ID=56096 WHERE UPPER(ColumnName)='RIFORG' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Aug 8, 2013 4:48:53 PM VET
-- LVE Withholding
UPDATE AD_Process_Para SET ColumnName='RifOrg', Name='Rif Org', Description=NULL, Help=NULL WHERE AD_Element_ID=56096 AND IsCentrallyMaintained='Y'
;

-- Aug 8, 2013 4:48:53 PM VET
-- LVE Withholding
UPDATE AD_Field SET Name='Rif Org', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=56096) AND IsCentrallyMaintained='Y'
;

-- Aug 8, 2013 4:48:53 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem pi SET PrintName='Rif Org', Name='Rif Org' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=56096)
;

