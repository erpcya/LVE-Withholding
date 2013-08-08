-- Aug 8, 2013 5:31:18 PM VET
-- LVE Withholding
CREATE TABLE LVE_PersonType (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, Created DATE NOT NULL, CreatedBy NUMBER(10) NOT NULL, Description NVARCHAR2(255) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LVE_PersonType_ID NUMBER(10) NOT NULL, Name NVARCHAR2(60) NOT NULL, Updated DATE NOT NULL, UpdatedBy NUMBER(10) NOT NULL, Value NVARCHAR2(60) DEFAULT NULL , CONSTRAINT LVE_PersonType_Key PRIMARY KEY (LVE_PersonType_ID))
;

-- Aug 8, 2013 5:31:28 PM VET
-- LVE Withholding
CREATE TABLE LVE_TaxUnit (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, Created DATE NOT NULL, CreatedBy NUMBER(10) NOT NULL, Description NVARCHAR2(255) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LVE_TaxUnit_ID NUMBER(10) NOT NULL, Name NVARCHAR2(60) NOT NULL, Processing CHAR(1) DEFAULT NULL , TaxAmt NUMBER NOT NULL, Updated DATE NOT NULL, UpdatedBy NUMBER(10) NOT NULL, ValidFrom DATE NOT NULL, CONSTRAINT LVE_TaxUnit_Key PRIMARY KEY (LVE_TaxUnit_ID))
;

-- Aug 8, 2013 5:31:32 PM VET
-- LVE Withholding
CREATE TABLE LVE_WC_ProductCharge (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, C_Charge_ID NUMBER(10) DEFAULT NULL , Created DATE NOT NULL, CreatedBy NUMBER(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LVE_WC_ProductCharge_ID NUMBER(10) NOT NULL, LVE_WH_Concept_ID NUMBER(10) NOT NULL, M_Product_ID NUMBER(10) DEFAULT NULL , Updated DATE NOT NULL, UpdatedBy NUMBER(10) NOT NULL, CONSTRAINT LVE_WC_ProductCharge_Key PRIMARY KEY (LVE_WC_ProductCharge_ID))
;

-- Aug 8, 2013 5:31:39 PM VET
-- LVE Withholding
CREATE TABLE LVE_WH_Combination (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, Aliquot NUMBER NOT NULL, Created DATE NOT NULL, CreatedBy NUMBER(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LVE_PersonType_ID NUMBER(10) DEFAULT NULL , LVE_WH_Combination_ID NUMBER(10) NOT NULL, LVE_WH_Concept_ID NUMBER(10) NOT NULL, Processing CHAR(1) DEFAULT NULL , Updated DATE NOT NULL, UpdatedBy NUMBER(10) NOT NULL, Value NVARCHAR2(60) DEFAULT NULL , CONSTRAINT LVE_WH_Combination_Key PRIMARY KEY (LVE_WH_Combination_ID))
;

-- Aug 8, 2013 5:31:43 PM VET
-- LVE Withholding
CREATE TABLE LVE_WH_Concept (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, Created DATE NOT NULL, CreatedBy NUMBER(10) NOT NULL, Description NVARCHAR2(255) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LVE_WH_Concept_ID NUMBER(10) NOT NULL, LVE_Withholding_ID NUMBER(10) NOT NULL, Name NVARCHAR2(255) NOT NULL, Updated DATE NOT NULL, UpdatedBy NUMBER(10) NOT NULL, CONSTRAINT LVE_WH_Concept_Key PRIMARY KEY (LVE_WH_Concept_ID))
;

-- Aug 8, 2013 5:31:48 PM VET
-- LVE Withholding
CREATE TABLE LVE_WH_Config (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, Created DATE NOT NULL, CreatedBy NUMBER(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LVE_TaxUnit_ID NUMBER(10) NOT NULL, LVE_WH_Combination_ID NUMBER(10) NOT NULL, LVE_WH_Config_ID NUMBER(10) NOT NULL, MinimalAmt NUMBER NOT NULL, Subtrahend NUMBER NOT NULL, Updated DATE NOT NULL, UpdatedBy NUMBER(10) NOT NULL, CONSTRAINT LVE_WH_Config_Key PRIMARY KEY (LVE_WH_Config_ID))
;

-- Aug 8, 2013 5:31:52 PM VET
-- LVE Withholding
CREATE TABLE LVE_WH_Relation (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, C_BPartner_ID NUMBER(10) DEFAULT NULL , C_BP_Group_ID NUMBER(10) DEFAULT NULL , C_DocType_ID NUMBER(10) DEFAULT NULL , Created DATE NOT NULL, CreatedBy NUMBER(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LVE_WH_Relation_ID NUMBER(10) NOT NULL, LVE_Withholding_ID NUMBER(10) NOT NULL, Updated DATE NOT NULL, UpdatedBy NUMBER(10) NOT NULL, CONSTRAINT LVE_WH_Relation_Key PRIMARY KEY (LVE_WH_Relation_ID))
;

-- Aug 8, 2013 5:31:57 PM VET
-- LVE Withholding
CREATE TABLE LVE_WH_Type (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, Created DATE NOT NULL, CreatedBy NUMBER(10) NOT NULL, Description NVARCHAR2(255) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LVE_WH_Type_ID NUMBER(10) NOT NULL, Name NVARCHAR2(60) NOT NULL, Updated DATE NOT NULL, UpdatedBy NUMBER(10) NOT NULL, Value NVARCHAR2(60) DEFAULT NULL , CONSTRAINT LVE_WH_Type_Key PRIMARY KEY (LVE_WH_Type_ID))
;

-- Aug 8, 2013 5:32:01 PM VET
-- LVE Withholding
CREATE TABLE LVE_Withholding (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, Beneficiary VARCHAR2(10) NOT NULL, C_Charge_ID NUMBER(10) NOT NULL, Classname NVARCHAR2(255) NOT NULL, Created DATE NOT NULL, CreatedBy NUMBER(10) NOT NULL, DeclarationDocType_ID NUMBER(10) NOT NULL, Description NVARCHAR2(255) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, IsSOTrx CHAR(1) DEFAULT 'N' CHECK (IsSOTrx IN ('Y','N')), LVE_WH_Type_ID NUMBER(10) NOT NULL, LVE_Withholding_ID NUMBER(10) NOT NULL, Name NVARCHAR2(60) NOT NULL, TaxUnitRate NUMBER DEFAULT NULL , Updated DATE NOT NULL, UpdatedBy NUMBER(10) NOT NULL, WithholdingDocType_ID NUMBER(10) NOT NULL, CONSTRAINT LVE_Withholding_Key PRIMARY KEY (LVE_Withholding_ID))
;

-- Aug 8, 2013 5:32:31 PM VET
-- LVE Withholding
ALTER TABLE C_BPartner ADD LVE_PersonType_ID NUMBER(10) DEFAULT NULL 
;

-- Aug 8, 2013 5:33:23 PM VET
-- LVE Withholding
ALTER TABLE C_Invoice ADD ControlNo NVARCHAR2(60) DEFAULT NULL 
;

-- Aug 8, 2013 5:33:27 PM VET
-- LVE Withholding
ALTER TABLE C_Invoice ADD LVE_WH_Concept_ID NUMBER(10) DEFAULT NULL 
;

-- Aug 8, 2013 5:33:44 PM VET
-- LVE Withholding
ALTER TABLE C_InvoiceLine MODIFY DocAffected_ID NUMBER(10) DEFAULT NULL 
;

-- Aug 8, 2013 5:33:47 PM VET
-- LVE Withholding
ALTER TABLE C_InvoiceLine ADD LVE_WH_Config_ID NUMBER(10) DEFAULT NULL 
;

-- Aug 8, 2013 5:34:08 PM VET
-- LVE Withholding
ALTER TABLE C_DocType ADD DocTypeDeclare NVARCHAR2(2) DEFAULT NULL 
;

