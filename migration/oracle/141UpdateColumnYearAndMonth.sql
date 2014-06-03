-- Oct 1, 2013 11:06:55 AM VET
-- LVE Withholding
UPDATE AD_Column SET ColumnSQL='CASE WHEN DATE_PART(''MONTH'',DateAcct) < 10 THEN ''0'' ELSE '''' END || DATE_PART(''MONTH'',DateAcct)',Updated=TO_DATE('2013-10-01 11:06:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68353
;

-- Oct 1, 2013 11:07:06 AM VET
-- LVE Withholding
UPDATE AD_Column SET ColumnSQL='DATE_PART(''YEAR'',DateAcct)',Updated=TO_DATE('2013-10-01 11:07:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68352
;

-- Oct 1, 2013 11:11:29 AM VET
-- LVE Withholding
UPDATE AD_Column SET ColumnSQL='DATE_PART(''YEAR'',NOW())',Updated=TO_DATE('2013-10-01 11:11:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68352
;

-- Oct 1, 2013 11:11:41 AM VET
-- LVE Withholding
UPDATE AD_Column SET ColumnSQL='CASE WHEN DATE_PART(''MONTH'',NOW()) < 10 THEN ''0'' ELSE '''' END || DATE_PART(''MONTH'',NOW())',Updated=TO_DATE('2013-10-01 11:11:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68353
;

-- Oct 1, 2013 11:17:04 AM VET
-- LVE Withholding
UPDATE AD_Column SET ColumnSQL='initcap(CASE WHEN DATE_PART(''MONTH'',NOW()) < 10 THEN ''0'' ELSE '''' END || DATE_PART(''MONTH'',NOW()))',Updated=TO_DATE('2013-10-01 11:17:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68353
;

-- Oct 1, 2013 11:20:40 AM VET
-- LVE Withholding
UPDATE AD_Column SET ColumnSQL='initcap(to_char(NOW(), ''tmmonth''::text))',Updated=TO_DATE('2013-10-01 11:20:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68353
;

-- Oct 1, 2013 11:20:59 AM VET
-- LVE Withholding
UPDATE AD_Column SET FieldLength=4,Updated=TO_DATE('2013-10-01 11:20:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=68352
;

