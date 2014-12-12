-- Aug 28, 2013 11:11:55 AM VET
-- LVE Withholding
ALTER TABLE C_BPartner ADD COLUMN LVE_PersonType_ID NUMERIC(10) DEFAULT NULL 
;

-- Aug 28, 2013 11:12:12 AM VET
-- LVE Withholding
ALTER TABLE C_BPartner ADD COLUMN Nationality CHAR(1) DEFAULT NULL 
;

-- Aug 28, 2013 11:14:53 AM VET
-- LVE Withholding
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2013-08-28 11:14:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66848
;

-- Aug 28, 2013 11:16:37 AM VET
-- LVE Withholding
ALTER TABLE C_DocType ADD COLUMN DocTypeDeclare VARCHAR(2) DEFAULT NULL 
;

-- Aug 28, 2013 11:17:01 AM VET
-- LVE Withholding
ALTER TABLE C_Invoice ADD COLUMN LVE_WH_Concept_ID NUMERIC(10) DEFAULT NULL 
;

-- Aug 28, 2013 11:17:29 AM VET
-- LVE Withholding
UPDATE AD_Column SET ColumnSQL=NULL,Updated=TO_TIMESTAMP('2013-08-28 11:17:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=7734
;

-- Aug 28, 2013 11:17:47 AM VET
-- LVE Withholding
ALTER TABLE C_InvoiceLine ADD COLUMN LVE_WH_Config_ID NUMERIC(10) DEFAULT NULL 
;

-- Aug 28, 2013 11:19:23 AM VET
-- LVE Withholding
UPDATE AD_Column SET Callout=NULL, IsUpdateable='N',Updated=TO_TIMESTAMP('2013-08-28 11:19:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=3836
;

-- Dec 13, 2013 6:51:48 AM VET
-- LVE Withholding
ALTER TABLE C_Invoice ADD COLUMN AffectsBook CHAR(1) DEFAULT 'N' CHECK (AffectsBook IN ('Y','N'))
;

-- Dec 20, 2013 8:09:55 AM VET
-- LVE Withholding
ALTER TABLE C_DocType ADD COLUMN IsManual CHAR(1) DEFAULT 'N' CHECK (IsManual IN ('Y','N'))
;

-- Dec 20, 2013 8:11:00 AM VET
-- LVE Withholding
ALTER TABLE C_Invoice ADD COLUMN IsManual CHAR(1) DEFAULT 'N' CHECK (IsManual IN ('Y','N'))
;

-- 7/09/2013 03:56:53 PM VET
-- LVE Withholding
ALTER TABLE C_DocType ADD AffectsBook CHAR(1) DEFAULT 'N' CHECK (AffectsBook IN ('Y','N'))
;
