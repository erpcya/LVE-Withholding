--DROP VIEW LVE_RV_Declaration 
Create Or Replace View LVE_RV_Declaration As
Select distinct 
	CI.ad_client_id,                     --Company ID
	CI.ad_org_id,                        --Org ID
	CI.C_Invoice_ID,                     --Invoice ID Document Declaration
	CIL.DocAffected_ID,                  --WithHolding Document ID
	OI.TaxID,                            --Document ID Organization
	CDTI.DocTypeDeclare,                 --Declared Type
	CDTI.Value ,                         --Bussines Partner Value
	CDTI.TaxID AS BCTaxID,               --Bussines Partner TaxID
	CDTI.DocumentNo,                     --DocumentNo 
	CDTI.ControlNo,                      --Control No
	CRR.GrandTotal,                      --Document Total
	CRR.TaxBaseAmt,                      --Base Amt
	CRR.LinenetAmt,                      --Retain Amt
	CRR.DocumentNo As AffectedDocumentNo,--Affected Document No
	CRR.WH_DocumentNo as WithHoldingNo ,      --Retention No
	CRR.Rate,                            --Rate
	CRR.TaxAmt,                          --Tax Amt
	CRR.TotalLines,                      --Total Lines
	CRR.Value As WithHoldingCod,           --Retention Cod
	CRR.Aliquot,                         --Aliquot Retention
	CDTI.C_BPartner_ID,                  --Bussiness Partner ID
	CDTI.Name,                           --Bussiness Partner Name
	CDTI.DateAcct,                       --Date Acct Document Retained
	--O.value AS RifOrg, --Invalid (No Org RiF)
	--CI.DateInvoiced,                     --Declaration Date
	CDTI.DateInvoiced,                     --Document Date Original
	CDTI.Exempt                         --Excempt
From 
--Org Info
AD_OrgInfo OI 
--Declaration Document Header
Inner Join C_Invoice CI On OI.AD_Org_ID = CI.AD_Org_ID
--Declaration Document Line
Inner Join C_InvoiceLine CIL On CI.C_Invoice_ID=CIL.C_Invoice_ID
--WithHolding Form
Inner Join LVE_RV_WithHolding CRR On CRR.C_Invoice_ID = CIL.DocAffected_ID
--Original Document
Left Join (Select CI.C_Invoice_ID, 
                  CDT.C_DocType_ID,
                  CDT.DocTypeDeclare,
                  CBP.Value,
                  CBP.TaxID,
                  CI.DocumentNo,
                  CI.ControlNo,
                  CI.C_BPartner_ID,
                  CBP.Name,
                  CI.DateAcct,
                  CIT.Exempt,
                  CIT.Taxable,
                  CIT.Tax,
                  CIT.Rate,
                  CI.DateInvoiced
           From C_Invoice CI 
           Inner Join C_DocType CDT  On  CI.C_DocType_ID = CDT.C_DocType_ID
           Inner Join C_BPartner CBP On CI.C_BPartner_ID = CBP.C_BPartner_ID
           Inner Join ( SELECT  LI.C_Invoice_ID, 
                                Sum(CASE WHEN LI.TaxAmt = 0 THEN LI.TaxbaseAmt ELSE 0 END) AS Exempt, 
                                Sum(CASE WHEN LI.TaxAmt <> 0 THEN LI.TaxBaseAmt ELSE 0 END) AS Taxable, 
                                Sum(CASE WHEN LI.taxamt <> 0 THEN LI.taxamt ELSE 0 END) AS Tax, 
                                Max(T.Rate) AS Rate
                        FROM C_InvoiceTax LI
                        Inner Join C_Tax T ON T.C_Tax_ID = LI.C_Tax_ID
                        GROUP BY LI.C_Invoice_ID) CIT ON CIT.C_Invoice_ID = CI.C_Invoice_ID
) CDTI on CDTI.C_Invoice_ID=CRR.DocAffected_ID
WHERE CI.DocStatus IN ('CO','CL')
	
;