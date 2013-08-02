-- 2/08/2013 09:35:33 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE LVE_PersonType (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, Description VARCHAR(255) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LVE_PersonType_ID NUMERIC(10) NOT NULL, Name VARCHAR(60) NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT LVE_PersonType_Key PRIMARY KEY (LVE_PersonType_ID))
;

-- 2/08/2013 09:35:39 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE LVE_TaxUnit (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, Description VARCHAR(255) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LVE_TaxUnit_ID NUMERIC(10) NOT NULL, Name VARCHAR(60) NOT NULL, Processing CHAR(1) DEFAULT NULL , TaxAmt NUMERIC NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, ValidFrom TIMESTAMP NOT NULL, CONSTRAINT LVE_TaxUnit_Key PRIMARY KEY (LVE_TaxUnit_ID))
;

-- 2/08/2013 09:35:46 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE LVE_WC_ProductCharge (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, C_Charge_ID NUMERIC(10) DEFAULT NULL , Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LVE_WC_ProductCharge_ID NUMERIC(10) NOT NULL, LVE_WithholdingConcept_ID NUMERIC(10) NOT NULL, M_Product_ID NUMERIC(10) DEFAULT NULL , Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT LVE_WC_ProductCharge_Key PRIMARY KEY (LVE_WC_ProductCharge_ID))
;

-- 2/08/2013 09:35:54 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE LVE_WH_Conbination (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Aliquot NUMERIC NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LVE_PersonType_ID NUMERIC(10) DEFAULT NULL , LVE_WH_Conbination_ID NUMERIC(10) NOT NULL, LVE_WithholdingConcept_ID NUMERIC(10) NOT NULL, Processing CHAR(1) DEFAULT NULL , Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, Value VARCHAR(60) DEFAULT NULL , CONSTRAINT LVE_WH_Conbination_Key PRIMARY KEY (LVE_WH_Conbination_ID))
;

-- 2/08/2013 09:36:00 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE LVE_Withholding (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Beneficiary VARCHAR(10) NOT NULL, C_Charge_ID NUMERIC(10) NOT NULL, Classname VARCHAR(255) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, DeclarationDocType VARCHAR(10) NOT NULL, Description VARCHAR(255) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, IsSOTrx CHAR(1) DEFAULT 'N' CHECK (IsSOTrx IN ('Y','N')), LVE_Withholding_ID NUMERIC(10) NOT NULL, LVE_WithholdingType_ID NUMERIC(10) NOT NULL, Name VARCHAR(60) NOT NULL, TaxUnitRate NUMERIC DEFAULT NULL , Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, WithholdingDocType VARCHAR(10) NOT NULL, CONSTRAINT LVE_Withholding_Key PRIMARY KEY (LVE_Withholding_ID))
;

-- 2/08/2013 09:36:06 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE LVE_WithholdingConcept (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, Description VARCHAR(255) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LVE_Withholding_ID NUMERIC(10) NOT NULL, LVE_WithholdingConcept_ID NUMERIC(10) NOT NULL, Name VARCHAR(255) NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT LVE_WithholdingConcept_Key PRIMARY KEY (LVE_WithholdingConcept_ID))
;

-- 2/08/2013 09:36:12 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE LVE_WithholdingConfig (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LVE_TaxUnit_ID NUMERIC(10) NOT NULL, LVE_WH_Conbination_ID NUMERIC(10) NOT NULL, LVE_WithholdingConfig_ID NUMERIC(10) NOT NULL, MinimalAmt NUMERIC NOT NULL, Subtrahend NUMERIC NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT LVE_WithholdingConfig_Key PRIMARY KEY (LVE_WithholdingConfig_ID))
;

-- 2/08/2013 09:36:18 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE LVE_WithholdingRelation (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, C_BP_Group_ID NUMERIC(10) DEFAULT NULL , C_BPartner_ID NUMERIC(10) DEFAULT NULL , C_DocType_ID NUMERIC(10) DEFAULT NULL , Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LVE_Withholding_ID NUMERIC(10) NOT NULL, LVE_WithholdingRelation_ID NUMERIC(10) NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT LVE_WithholdingRelation_Key PRIMARY KEY (LVE_WithholdingRelation_ID))
;

-- 2/08/2013 09:36:25 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE LVE_WithholdingType (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, Description VARCHAR(255) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LVE_WithholdingType_ID NUMERIC(10) NOT NULL, Name VARCHAR(60) NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, Value VARCHAR(60) DEFAULT NULL , CONSTRAINT LVE_WithholdingType_Key PRIMARY KEY (LVE_WithholdingType_ID))
;

-- 2/08/2013 09:36:49 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE C_Invoice ADD COLUMN ControlNo VARCHAR(60) DEFAULT NULL 
;

-- 2/08/2013 09:36:53 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE C_Invoice ADD COLUMN LVE_WithholdingConcept_ID NUMERIC(10) DEFAULT NULL 
;

-- 2/08/2013 09:37:17 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE C_InvoiceLine ADD COLUMN DocAffected VARCHAR(10) DEFAULT NULL 
;

-- 2/08/2013 09:37:22 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE C_InvoiceLine ADD COLUMN LVE_WithholdingConfig_ID NUMERIC(10) DEFAULT NULL 
;

-- 2/08/2013 09:37:49 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE C_BPartner ADD COLUMN LVE_PersonType_ID NUMERIC(10) DEFAULT NULL 
;

