CREATE OR REPLACE VIEW LVE_RV_WH_List AS 
 SELECT 
	whconc.AD_Client_ID,  
	whconc.AD_Org_ID,
	whconc.Created,  
	whconc.CreatedBy, 
	whconc.IsActive,  
	whconc.Updated,  
	whconc.UpdatedBy,
	whconf.LVE_TaxUnit_ID,
	whconf.LVE_Withholding_ID,	
	whconf.MaxValue,  
	whconf.MinValue,	  
	whconf.Subtrahend,
	whconf.AD_Rule_ID,
	whconf.LVE_WH_Combination_ID,
	whcomb.Value,
	whcomb.Aliquot,
	whcomb.TaxBaseRate,
	whcomb.LVE_PersonType_ID,
	whcomb.IsManual,	
	W.AD_Table_ID,  
	W.C_Charge_ID,   
	W.Beneficiary_ID,  
	W.DeclarationDocType_ID,  
	w.WithholdingDocType_ID,
	w.TaxUnitRate,  
	w.SeqNo,
	tu.TaxAmt,
	tu.ValidFrom,
	t.AuthorizedOfficer_ID,	
	whconc.LVE_WH_ConceptGroup_ID,  
	whconc.LVE_WH_Concept_ID, 
	whconf.LVE_WH_Config_ID,  
	w.LVE_WH_Type_ID,
	w.IsSOTrx,
	w.name
FROM  LVE_WH_Concept whconc 
LEFT JOIN LVE_WH_Combination whcomb ON (whcomb.LVE_WH_Concept_ID = whconc.LVE_WH_Concept_ID)
LEFT JOIN LVE_WH_Config whconf ON (whconf.LVE_WH_Combination_ID = whcomb.LVE_WH_Combination_ID)
LEFT JOIN LVE_TaxUnit tu ON (tu.LVE_TaxUnit_ID = whconf.LVE_TaxUnit_ID)
LEFT JOIN LVE_Withholding w ON (w.LVE_Withholding_ID = whconf.LVE_Withholding_ID)
LEFT JOIN LVE_WH_Type t ON (w.LVE_WH_Type_ID = t.LVE_WH_Type_ID)
LEFT JOIN LVE_PersonType pt ON (pt.LVE_PersonType_ID = whcomb.LVE_PersonType_ID)