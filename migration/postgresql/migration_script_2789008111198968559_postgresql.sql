-- 22/01/2013 05:11:50 PM VET
-- LVE Retention
CREATE TABLE CUST_RetentionType (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, AD_Rule_ID NUMERIC DEFAULT NULL , Classname VARCHAR(255) DEFAULT NULL , Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, CUST_RetentionType_ID NUMERIC(10) NOT NULL, Description VARCHAR(255) DEFAULT NULL , IsActive CHAR(1) CHECK (IsActive IN ('Y','N')) NOT NULL, Name VARCHAR(60) NOT NULL , Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, IsSOTrx CHAR(1) DEFAULT 'N' CHECK (IsSOTrx IN ('Y','N')), C_Charge_ID NUMERIC(10) DEFAULT NULL, C_DocType_ID NUMERIC(10) DEFAULT NULL, CONSTRAINT CUST_RetentionType_Key PRIMARY KEY (CUST_RetentionType_ID))
;

-- 22/01/2013 05:12:43 PM VET
-- LVE Retention
CREATE TABLE CUST_RetentionConfig (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL,Aliquot NUMERIC(10) DEFAULT NULL , Subtrahend NUMERIC(10) DEFAULT NULL , Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, CUST_RetentionConfig_ID NUMERIC(10) NOT NULL, CUST_RetentionType_ID NUMERIC(10) NOT NULL , IsActive CHAR(1) CHECK (IsActive IN ('Y','N')) NOT NULL, MinimalAmt NUMERIC(10) DEFAULT NULL , Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT CUST_RetentionConfig_Key PRIMARY KEY (CUST_RetentionConfig_ID))
;

-- 22/01/2013 05:13:14 PM VET
-- LVE Retention
CREATE TABLE CUST_ConceptRetention (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, CUST_ConceptRetention_ID NUMERIC(10) NOT NULL, Description VARCHAR(255) DEFAULT NULL , IsActive CHAR(1) CHECK (IsActive IN ('Y','N')) NOT NULL, Name VARCHAR(255) NOT NULL , Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT CUST_ConceptRetention_Key PRIMARY KEY (CUST_ConceptRetention_ID))
;

-- 22/01/2013 05:13:34 PM VET
-- LVE Retention
CREATE TABLE CUST_CR_PT_Combination (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, CUST_ConceptRetention_ID NUMERIC DEFAULT NULL , CUST_CR_PT_Combination_ID NUMERIC(10) NOT NULL, CUST_PersonType_ID NUMERIC DEFAULT NULL , CUST_RetentionConfig_ID NUMERIC NOT NULL , IsActive CHAR(1) CHECK (IsActive IN ('Y','N')) NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT CUST_CR_PT_Combination_Key PRIMARY KEY (CUST_CR_PT_Combination_ID))
;

-- 22/01/2013 05:13:53 PM VET
-- LVE Retention
CREATE TABLE CUST_RetentionRelation (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, C_BPartner_ID NUMERIC DEFAULT NULL , C_BP_Group_ID NUMERIC DEFAULT NULL , C_DocType_ID NUMERIC DEFAULT NULL , Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, CUST_RetentionRelation_ID NUMERIC(10) NOT NULL, CUST_RetentionType_ID NUMERIC NOT NULL , IsActive CHAR(1) CHECK (IsActive IN ('Y','N')) NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT CUST_RetentionRelation_Key PRIMARY KEY (CUST_RetentionRelation_ID))
;

-- 22/01/2013 05:14:11 PM VET
-- LVE Retention
CREATE TABLE CUST_PersonType (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, CUST_PersonType_ID NUMERIC(10) NOT NULL, Description VARCHAR(255) DEFAULT NULL , IsActive CHAR(1) CHECK (IsActive IN ('Y','N')) NOT NULL, Name VARCHAR(60) NOT NULL , Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT CUST_PersonType_Key PRIMARY KEY (CUST_PersonType_ID))
;

-- 22/01/2013 05:09:10 PM VET
-- LVE Retention
ALTER TABLE C_DocType ADD COLUMN CUST_RetentionType_ID NUMERIC DEFAULT NULL
;


-- 22/01/2013 05:10:34 PM VET
-- LVE Retention
ALTER TABLE C_InvoiceLine ADD COLUMN DocAffected_ID NUMERIC DEFAULT NULL 
;

-- 22/01/2013 05:10:34 PM VET
-- LVE Retention
ALTER TABLE C_Invoice ADD COLUMN CUST_ConceptRetention_ID NUMERIC DEFAULT NULL 
;

-- 22/01/2013 05:11:23 PM VET
-- LVE Retention
ALTER TABLE C_BPartner ADD COLUMN CUST_PersonType_ID NUMERIC DEFAULT NULL 
;

-- Feb 21, 2013 7:23:56 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE C_InvoiceLine ADD COLUMN IsRetaint CHAR(1) DEFAULT 'Y' CHECK (IsRetaint IN ('Y','N'))
;

