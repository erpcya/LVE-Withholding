-- Aug 28, 2013 11:11:55 AM VET
-- LVE Withholding
ALTER TABLE C_BPartner ADD LVE_PersonType_ID NUMBER(10) DEFAULT NULL 
;

-- Aug 28, 2013 11:12:12 AM VET
-- LVE Withholding
ALTER TABLE C_BPartner ADD Nationality CHAR(1) DEFAULT NULL 
;

-- Aug 28, 2013 11:14:53 AM VET
-- LVE Withholding
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_DATE('2013-08-28 11:14:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66848
;

-- 7/09/2013 03:56:53 PM VET
-- LVE Withholding
ALTER TABLE C_DocType ADD COLUMN AffectsBook CHAR(1) DEFAULT 'N' CHECK (AffectsBook IN ('Y','N'))
;

-- Aug 28, 2013 11:16:37 AM VET
-- LVE Withholding
ALTER TABLE C_DocType ADD DocTypeDeclare NVARCHAR2(2) DEFAULT NULL 
;

-- Aug 28, 2013 11:17:01 AM VET
-- LVE Withholding
ALTER TABLE C_Invoice ADD LVE_WH_Concept_ID NUMBER(10) DEFAULT NULL 
;

-- Aug 28, 2013 11:17:29 AM VET
-- LVE Withholding
UPDATE AD_Column SET ColumnSQL=NULL,Updated=TO_DATE('2013-08-28 11:17:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=7734
;

-- Aug 28, 2013 11:17:47 AM VET
-- LVE Withholding
ALTER TABLE C_InvoiceLine ADD LVE_WH_Config_ID NUMBER(10) DEFAULT NULL 
;

-- Aug 28, 2013 11:19:23 AM VET
-- LVE Withholding
UPDATE AD_Column SET Callout=NULL, IsUpdateable='N',Updated=TO_DATE('2013-08-28 11:19:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=3836
;

-- Dec 13, 2013 6:51:48 AM VET
-- LVE Withholding
ALTER TABLE C_Invoice ADD AffectsBook CHAR(1) DEFAULT 'N' CHECK (AffectsBook IN ('Y','N'))
;

-- Dec 13, 2013 6:52:36 AM VET
-- LVE Withholding
ALTER TABLE C_Invoice ADD DocAffected_ID NUMBER(10) DEFAULT NULL 
;

-- Dec 20, 2013 8:09:55 AM VET
-- LVE Withholding
ALTER TABLE C_DocType ADD IsManual CHAR(1) DEFAULT 'N' CHECK (IsManual IN ('Y','N'))
;

-- Dec 20, 2013 8:11:00 AM VET
-- LVE Withholding
ALTER TABLE C_Invoice ADD IsManual CHAR(1) DEFAULT 'N' CHECK (IsManual IN ('Y','N'))
;

