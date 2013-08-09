-- Aug 9, 2013 11:31:36 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE LVE_PersonType (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, Description VARCHAR(255) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LVE_PersonType_ID NUMERIC(10) NOT NULL, Name VARCHAR(60) NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, Value VARCHAR(60) DEFAULT NULL , CONSTRAINT LVE_PersonType_Key PRIMARY KEY (LVE_PersonType_ID))
;

-- Aug 9, 2013 11:31:47 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE LVE_TaxUnit (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, Description VARCHAR(255) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LVE_TaxUnit_ID NUMERIC(10) NOT NULL, Name VARCHAR(60) NOT NULL, Processing CHAR(1) DEFAULT NULL , TaxAmt NUMERIC NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, ValidFrom TIMESTAMP NOT NULL, CONSTRAINT LVE_TaxUnit_Key PRIMARY KEY (LVE_TaxUnit_ID))
;

-- Aug 9, 2013 11:31:52 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE LVE_WC_ProductCharge (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, C_Charge_ID NUMERIC(10) DEFAULT NULL , Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LVE_WC_ProductCharge_ID NUMERIC(10) NOT NULL, LVE_WH_Concept_ID NUMERIC(10) NOT NULL, M_Product_ID NUMERIC(10) DEFAULT NULL , Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT LVE_WC_ProductCharge_Key PRIMARY KEY (LVE_WC_ProductCharge_ID))
;

-- Aug 9, 2013 11:31:56 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE LVE_WH_Combination (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Aliquot NUMERIC NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LVE_PersonType_ID NUMERIC(10) DEFAULT NULL , LVE_WH_Combination_ID NUMERIC(10) NOT NULL, LVE_WH_Concept_ID NUMERIC(10) NOT NULL, Processing CHAR(1) DEFAULT NULL , Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, Value VARCHAR(60) DEFAULT NULL , CONSTRAINT LVE_WH_Combination_Key PRIMARY KEY (LVE_WH_Combination_ID))
;

-- Aug 9, 2013 11:32:01 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE LVE_WH_Concept (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, Description VARCHAR(255) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LVE_WH_ConceptGroup_ID NUMERIC(10) DEFAULT NULL , LVE_WH_Concept_ID NUMERIC(10) NOT NULL, Name VARCHAR(255) NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT LVE_WH_Concept_Key PRIMARY KEY (LVE_WH_Concept_ID))
;

-- Aug 9, 2013 11:32:07 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE LVE_WH_ConceptGroup (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, Description VARCHAR(255) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LVE_WH_ConceptGroup_ID NUMERIC(10) NOT NULL, Name VARCHAR(60) NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, Value VARCHAR(60) NOT NULL, CONSTRAINT LVE_WH_ConceptGroup_Key PRIMARY KEY (LVE_WH_ConceptGroup_ID))
;

-- Aug 9, 2013 11:32:11 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE LVE_WH_Config (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LVE_TaxUnit_ID NUMERIC(10) NOT NULL, LVE_WH_Combination_ID NUMERIC(10) NOT NULL, LVE_WH_Config_ID NUMERIC(10) NOT NULL, MinimalAmt NUMERIC NOT NULL, Subtrahend NUMERIC NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT LVE_WH_Config_Key PRIMARY KEY (LVE_WH_Config_ID))
;

-- Aug 9, 2013 11:32:16 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE LVE_WH_Relation (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, C_BPartner_ID NUMERIC(10) DEFAULT NULL , C_BP_Group_ID NUMERIC(10) DEFAULT NULL , C_DocType_ID NUMERIC(10) DEFAULT NULL , Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LVE_WH_Relation_ID NUMERIC(10) NOT NULL, LVE_Withholding_ID NUMERIC(10) NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT LVE_WH_Relation_Key PRIMARY KEY (LVE_WH_Relation_ID))
;

-- Aug 9, 2013 11:32:21 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE LVE_WH_Type (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, Description VARCHAR(255) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LVE_WH_Type_ID NUMERIC(10) NOT NULL, Name VARCHAR(60) NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, Value VARCHAR(60) DEFAULT NULL , CONSTRAINT LVE_WH_Type_Key PRIMARY KEY (LVE_WH_Type_ID))
;

-- Aug 9, 2013 11:32:26 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE LVE_Withholding (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Beneficiary VARCHAR(10) NOT NULL, C_Charge_ID NUMERIC(10) NOT NULL, Classname VARCHAR(255) DEFAULT NULL , Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, DeclarationDocType_ID NUMERIC(10) NOT NULL, Description VARCHAR(255) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, IsSOTrx CHAR(1) DEFAULT 'N' CHECK (IsSOTrx IN ('Y','N')), LVE_WH_ConceptGroup_ID NUMERIC(10) NOT NULL, LVE_WH_Type_ID NUMERIC(10) NOT NULL, LVE_Withholding_ID NUMERIC(10) NOT NULL, Name VARCHAR(60) NOT NULL, TaxUnitRate NUMERIC DEFAULT NULL , Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, WithholdingDocType_ID NUMERIC(10) NOT NULL, CONSTRAINT LVE_Withholding_Key PRIMARY KEY (LVE_Withholding_ID))
;

-- Aug 9, 2013 11:32:41 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE C_Invoice ADD COLUMN ControlNo VARCHAR(60) DEFAULT NULL 
;

-- Aug 9, 2013 11:32:44 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE C_Invoice ADD COLUMN LVE_WH_Concept_ID NUMERIC(10) DEFAULT NULL 
;

-- Aug 9, 2013 11:32:57 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO t_alter_column values('c_invoiceline','DocAffected_ID','NUMERIC(10)',null,'NULL')
;

-- Aug 9, 2013 11:32:59 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE C_InvoiceLine ADD COLUMN LVE_WH_Config_ID NUMERIC(10) DEFAULT NULL 
;

-- Aug 9, 2013 11:33:19 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE C_DocType ADD COLUMN DocTypeDeclare VARCHAR(2) DEFAULT NULL 
;

-- Aug 9, 2013 11:33:41 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE C_BPartner ADD COLUMN LVE_PersonType_ID NUMERIC(10) DEFAULT NULL 
;

