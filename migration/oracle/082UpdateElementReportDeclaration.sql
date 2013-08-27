-- 13/08/2013 02:29:50 PM VET
-- LVE Withholding
UPDATE AD_Element SET ColumnName='BCTaxID',Updated=TO_DATE('2013-08-13 14:29:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56094
;

-- 13/08/2013 02:29:50 PM VET
-- LVE Withholding
UPDATE AD_Column SET ColumnName='BCTaxID', Name='Business Tax ID', Description=NULL, Help=NULL WHERE AD_Element_ID=56094
;

-- 13/08/2013 02:29:50 PM VET
-- LVE Withholding
UPDATE AD_Process_Para SET ColumnName='BCTaxID', Name='Business Tax ID', Description=NULL, Help=NULL, AD_Element_ID=56094 WHERE UPPER(ColumnName)='BCTAXID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 13/08/2013 02:29:50 PM VET
-- LVE Withholding
UPDATE AD_Process_Para SET ColumnName='BCTaxID', Name='Business Tax ID', Description=NULL, Help=NULL WHERE AD_Element_ID=56094 AND IsCentrallyMaintained='Y'
;

-- 13/08/2013 02:31:44 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET AD_Column_ID=66586, IsGroupBy='N', IsPageBreak='N', SortNo=0, XPosition=0, YPosition=0,Updated=TO_DATE('2013-08-13 14:31:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=54023
;

