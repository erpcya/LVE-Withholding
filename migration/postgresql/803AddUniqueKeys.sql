Create Unique Index UK_LVE_Withholding  On LVE_Withholding(LVE_WH_Type_ID,WithHoldingDocType_ID);

DROP INDEX uk_lve_withholding;


CREATE UNIQUE INDEX UK_LVE_Withholding
  ON LVE_Withholding
  (LVE_WH_Type_ID,WithHoldingDocType_ID,C_Charge_ID);
