--DROP INDEX UK_LVE_Withholding;
CREATE UNIQUE INDEX UK_LVE_Withholding  ON LVE_Withholding (LVE_WH_Type_ID,WithHoldingDocType_ID,C_Charge_ID);

--DROP INDEX IDX_C_AllocationLine_C_AllocationHDR;
CREATE INDEX IDX_C_AllocationLine_C_AllocationHDR ON C_AllocationLine USING btree (C_AllocationHDR_ID);

--DROP INDEX  UK_LVE_TaxUnit;
CREATE UNIQUE INDEX UK_LVE_TaxUnit ON LVE_TaxUnit (Name);
 
--DROP INDEX UK_WHR_C_BPartner;
CREATE UNIQUE INDEX UK_WHR_C_BPartner ON LVE_WH_Relation USING BTREE (AD_Client_ID, C_BPartner_ID, LVE_Withholding_ID,ValidFrom);

-- DROP INDEX UK_WHR_C_BP_Group;
CREATE UNIQUE INDEX UK_WHR_C_BP_Group ON LVE_WH_Relation USING BTREE (AD_Client_ID, C_BP_Group_ID, LVE_Withholding_ID);

-- DROP INDEX UK_WHR_lve_withholding;
CREATE UNIQUE INDEX UK_WHR_LVE_Withholding ON LVE_WH_Relation USING BTREE (AD_Client_ID, LVE_Withholding_ID, C_DocType_ID);
-- DROP INDEX UK_WH_ConfigTaxUnit;
CREATE UNIQUE INDEX UK_WH_ConfigTaxUnit ON LVE_WH_Config(AD_Client_ID, LVE_Withholding_ID, LVE_WH_Combination_ID, LVE_TaxUnit_ID);
