-- 4/09/2013 03:22:45 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=68433
;

-- 4/09/2013 03:22:45 PM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=68434
;

-- 4/09/2013 03:22:51 PM VET
-- LVE Withholding
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=68434
;

-- 4/09/2013 03:22:51 PM VET
-- LVE Withholding
DELETE FROM AD_Field WHERE AD_Field_ID=68434
;

-- 4/09/2013 03:22:54 PM VET
-- LVE Withholding
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=68433
;

-- 4/09/2013 03:22:54 PM VET
-- LVE Withholding
DELETE FROM AD_Field WHERE AD_Field_ID=68433
;

