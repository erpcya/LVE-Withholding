﻿ALTER TABLE LVE_WH_Combination ADD CONSTRAINT FK_WH_Combination_PersonType FOREIGN KEY (LVE_PersonType_ID)
REFERENCES LVE_PersonType (LVE_PersonType_ID)
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE LVE_WH_Combination ADD CONSTRAINT FK_WH_Combination_WHConcept FOREIGN KEY (LVE_WH_Concept_ID)
REFERENCES LVE_WH_Concept (LVE_WH_Concept_ID)
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE LVE_Withholding ADD CONSTRAINT FK_Withholding_Charge FOREIGN KEY (C_Charge_ID)
REFERENCES C_Charge (C_Charge_ID)
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE LVE_Withholding ADD CONSTRAINT FK_Withholding_WHType FOREIGN KEY (LVE_WH_Type_ID)
REFERENCES LVE_WH_Type (LVE_WH_Type_ID)
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE LVE_Withholding ADD CONSTRAINT FK_Withholding_WHConceptGroup FOREIGN KEY (LVE_WH_ConceptGroup_ID)
REFERENCES LVE_WH_ConceptGroup (LVE_WH_ConceptGroup_ID  )
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE LVE_Withholding ADD CONSTRAINT FK_Withholding_WHBeneficiary FOREIGN KEY (Beneficiary_ID)
REFERENCES C_BPartner (C_BPartner_ID)
ON UPDATE CASCADE
ON DELETE RESTRICT;


ALTER TABLE LVE_Withholding ADD CONSTRAINT FK_Withholding_Table FOREIGN KEY (AD_Table_ID)
REFERENCES AD_Tale (AD_Table_ID)
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE LVE_Withholding ADD CONSTRAINT FK_Withholding_Rule FOREIGN KEY (AD_Rule_ID)
REFERENCES AD_Rule (AD_Rule_ID)
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE LVE_WH_Concept ADD CONSTRAINT FK_WHConcept_WHConceptGroup FOREIGN KEY (LVE_WH_ConceptGroup_ID)
REFERENCES LVE_WH_ConceptGroup (LVE_WH_ConceptGroup_ID)
ON UPDATE CASCADE
ON DELETE RESTRICT;


ALTER TABLE LVE_WH_Config ADD CONSTRAINT FK_WHConfig_Rule FOREIGN KEY (AD_Rule_ID)
REFERENCES AD_Rule (AD_Rule_ID)
ON UPDATE CASCADE
ON DELETE RESTRICT;


ALTER TABLE LVE_WH_Config ADD CONSTRAINT FK_WHgConfig_TaxUnit FOREIGN KEY (LVE_TaxUnit_ID)
REFERENCES LVE_TaxUnit (LVE_TaxUnit_ID)
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE LVE_WH_Config ADD CONSTRAINT FK_WH_Config_WH_Conbination FOREIGN KEY (LVE_WH_Combination_ID)
REFERENCES LVE_WH_Combination (LVE_WH_Combination_ID)
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE LVE_WH_Config ADD CONSTRAINT FK_WH_Config_WH_Withholding FOREIGN KEY (LVE_Withholding_ID)
REFERENCES LVE_Withholding (LVE_Withholding_ID)
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE LVE_WH_Relation ADD CONSTRAINT FK_WithholdingRelation_BP_Group FOREIGN KEY (C_BP_Group_ID)
REFERENCES C_BP_Group (C_BP_Group_ID)
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE LVE_WH_Relation ADD CONSTRAINT FK_WithholdingRelation_BPartner FOREIGN KEY (C_BPartner_ID)
REFERENCES C_BPartner (C_BPartner_ID)
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE LVE_WH_Relation ADD CONSTRAINT FK_WHgRelation_DocType FOREIGN KEY (C_DocType_ID)
REFERENCES C_DocType (C_DocType_ID)
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE LVE_WH_Relation ADD CONSTRAINT FK_WHRelation_Withholding FOREIGN KEY (LVE_Withholding_ID)
REFERENCES LVE_Withholding (LVE_Withholding_ID)
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE LVE_WC_ProductCharge ADD CONSTRAINT FK_WC_ProductCharge_Charge FOREIGN KEY (C_Charge_ID)
REFERENCES C_Charge (C_Charge_ID)
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE LVE_WC_ProductCharge ADD CONSTRAINT FK_WC_ProductCharge_WithholdingConcept FOREIGN KEY (LVE_WH_Concept_ID)
REFERENCES LVE_WH_Concept (LVE_WH_Concept_ID)
ON UPDATE CASCADE
ON DELETE RESTRICT;


ALTER TABLE LVE_WC_ProductCharge ADD CONSTRAINT FK_WC_ProductCharge_Product FOREIGN KEY (M_Product_ID)
REFERENCES M_Product (M_Product_ID)
ON UPDATE CASCADE
ON DELETE RESTRICT;


ALTER TABLE C_Invoice ADD CONSTRAINT FK_Invoice_WH_Concept FOREIGN KEY (LVE_WH_Concept_ID)
REFERENCES LVE_WH_Concept (LVE_WH_Concept_ID)
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE C_InvoiceLine ADD CONSTRAINT FK_InvoiceLine_WHConfig FOREIGN KEY (LVE_WH_Config_ID)
REFERENCES LVE_WH_Config (LVE_WH_Config_ID)
ON UPDATE CASCADE
ON DELETE RESTRICT;

ALTER TABLE C_BPartner ADD CONSTRAINT FK_BPartner_PersonType FOREIGN KEY (LVE_PersonType_ID)
REFERENCES LVE_PersonType (LVE_PersonType_ID)
ON UPDATE CASCADE
ON DELETE RESTRICT;

CREATE UNIQUE INDEX UK_WHR_C_BP_Group ON LVE_WH_Relation(AD_Client_ID, C_BP_Group_ID, LVE_Withholding_ID);

CREATE UNIQUE INDEX UK_WHR_C_BPartner ON LVE_WH_Relation(AD_Client_ID, C_BPartner_ID, LVE_Withholding_ID);

CREATE UNIQUE INDEX UK_WHR_LVE_Withholding ON LVE_WH_Relation(AD_Client_ID, LVE_Withholding_ID, C_DocType_ID);

CREATE UNIQUE INDEX UK_WH_ConfigTaxUnit ON LVE_WH_Config(AD_Client_ID, LVE_Withholding_ID, LVE_WH_Combination_ID, LVE_TaxUnit_ID);