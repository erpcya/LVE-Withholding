UPDATE adempiere.LVE_Withholding SET AD_Client_ID = 1000000;
UPDATE adempiere.C_DocType SET AD_Client_ID = 1000000, AD_Org_ID = 0 WHERE C_DocType_ID IN (1000000,1000001,1000002,1000003);
UPDATE adempiere.LVE_WH_Type SET AD_Client_ID = 1000000,AD_Org_ID = 0 ;
UPDATE adempiere.LVE_WH_Config SET AD_Client_ID = 1000000,AD_Org_ID = 0 ;
UPDATE adempiere.LVE_WH_Combination SET AD_Client_ID = 1000000,AD_Org_ID = 0 ;
UPDATE adempiere.LVE_WH_ConceptGroup SET AD_Client_ID = 1000000,AD_Org_ID = 0 ;
UPDATE adempiere.LVE_WH_Concept SET AD_Client_ID = 1000000,AD_Org_ID = 0 ;
UPDATE adempiere.LVE_TaxUnit SET AD_Client_ID = 1000000,AD_Org_ID = 0 ;
UPDATE adempiere.LVE_PersonType SET AD_Client_ID = 1000000,AD_Org_ID = 0 ;
UPDATE adempiere.LVE_WH_Relation SET AD_Client_ID = 1000000,AD_Org_ID = 0 ;

UPDATE adempiere.C_Charge SET AD_Client_ID = 1000000,AD_Org_ID = 0 WHERE C_Charge_ID IN (1000000,1000001,1000002,1000003);

UPDATE adempiere.AD_Sequence SET AD_Client_ID = 1000000 ,AD_Org_ID = 0 WHERE AD_Sequence_ID IN (1000015,1000013,1000014,1000027,1000028);

UPDATE adempiere.C_DocType SET AD_Client_ID = 1000000 ,AD_Org_ID = 0 WHERE C_DocType_ID IN (1000000,1000001,1000002,1000004,1000005,123);

--UPDATE AD_PRintFormatItem SET ImageURL = 'org/compiere/images/AdempiereHR.png' WHERE ImageURL IS NOT NULL;