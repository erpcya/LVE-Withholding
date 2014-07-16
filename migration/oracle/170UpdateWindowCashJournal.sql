-- Jul 14, 2014 4:25:02 PM VET
-- LVE Wittholding
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_DATE('2014-07-14 16:25:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66847
;

-- Jul 14, 2014 4:25:12 PM VET
-- LVE Wittholding
ALTER TABLE C_Cash MODIFY C_DocTypeTarget_ID NUMBER(10)
;

-- Jul 14, 2014 4:25:38 PM VET
-- LVE Wittholding
UPDATE AD_Field SET DisplayLogic='@CashType@=C',Updated=TO_DATE('2014-07-14 16:25:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68279
;

-- Jul 14, 2014 4:25:41 PM VET
-- LVE Wittholding
UPDATE AD_Field SET DisplayLogic='@CashType@=C',Updated=TO_DATE('2014-07-14 16:25:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68274
;

