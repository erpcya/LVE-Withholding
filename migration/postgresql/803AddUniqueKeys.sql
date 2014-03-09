Create Unique Index UK_LVE_Withholding  On LVE_Withholding(LVE_WH_Type_ID,WithHoldingDocType_ID);

DROP INDEX uk_lve_withholding;


CREATE UNIQUE INDEX UK_LVE_Withholding
  ON LVE_Withholding
  (LVE_WH_Type_ID,WithHoldingDocType_ID,C_Charge_ID);

  CREATE INDEX c_allocationline_c_allocationhdr
 ON c_allocationline
 USING btree
 (c_allocationhdr_id);
 
 CREATE UNIQUE INDEX UK_LVE_TaxUnit ON LVE_TaxUnit (Name);
 
 
--DROP INDEX UK_WHR_C_BPartner;
CREATE UNIQUE INDEX UK_WHR_C_BPartner
  ON LVE_WH_Relation
  USING BTREE
  (AD_Client_ID, C_BPartner_ID, LVE_Withholding_ID,ValidFrom);


-- DROP INDEX UK_WHR_C_BP_Group;

CREATE UNIQUE INDEX UK_WHR_C_BP_Group
  ON LVE_WH_Relation
  USING BTREE
  (AD_Client_ID, C_BP_Group_ID, LVE_Withholding_ID);

-- DROP INDEX UK_WHR_lve_withholding;

CREATE UNIQUE INDEX UK_WHR_LVE_Withholding
  ON LVE_WH_Relation
  USING BTREE
  (AD_Client_ID, LVE_Withholding_ID, C_DocType_ID);
