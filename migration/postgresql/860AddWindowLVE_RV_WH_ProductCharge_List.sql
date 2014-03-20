--DROP VIEW LVE_RV_WH_ProductCharge_List;
CREATE OR REPLACE VIEW LVE_RV_WH_ProductCharge_List AS 
SELECT 
	whconc.AD_Client_ID,
	whconc.AD_Org_ID,
	whconc.CreatedBy,
	whconc.Created,
	whconc.Updated,
	whconc.UpdatedBy,
	whconc.LVE_WH_ConceptGroup_ID,
	whconc.LVE_WH_Concept_ID,
	whconf.LVE_WH_Combination_ID,
	whconf.LVE_WH_Config_ID,
	pc.LVE_WC_ProductCharge_ID,
	p.M_Product_ID,
	c.C_Charge_ID,whcomb.LVE_PersonType_ID,
	whcomb.Aliquot,
	whcomb.TaxBaseRate,
	whcomb.Value,
	whconf.LVE_TaxUnit_ID,
	whconf.MaxValue,
	whconf.MinValue,
	whconf.SubTrahend
FROM  LVE_WH_Concept whconc 
INNER JOIN LVE_WH_Combination whcomb ON (whcomb.LVE_WH_Concept_ID = whconc.LVE_WH_Concept_ID)
INNER JOIN LVE_WH_Config whconf ON (whconf.LVE_WH_Combination_ID = whcomb.LVE_WH_Combination_ID)
INNER JOIN LVE_WC_ProductCharge pc ON (whconc.LVE_WH_Concept_ID = pc.LVE_WH_Concept_ID )
LEFT JOIN M_Product p ON (pc.M_Product_ID = p.M_Product_ID )
LEFT JOIN C_Charge c ON (pc.C_Charge_ID = c.C_Charge_ID)
--WHERE p.M_Product_ID = 1030989\
