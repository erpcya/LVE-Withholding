--View for Smart Browse - Declaration of Retentions
Create Or Replace View LVE_RV_WH_UnDeclared As 
Select 
	Distinct
	CI.AD_Client_ID,
	CI.AD_ORG_ID,
	CI.C_Invoice_ID,
	CI.DocumentNo,
	CI.IsSoTrx,
	CI.DocStatus,
	CI.DocAction,
	CI.C_DocType_ID,
	CI.C_DocTypeTarget_ID,
	CI.SalesRep_ID,
	CI.DateInvoiced,
	CI.DateAcct,
	CI.C_BPartner_ID,
	CI.C_BPartner_Location_ID,
	CI.C_Currency_ID,
	CI.PaymentRule,
	CI.C_PaymentTerm_ID,
	CI.GrandTotal,
	CI.TotalLines,
	WH.LVE_WithHolding_ID,
	WHT.LVE_WH_Type_ID
From 
C_Invoice CI 
Inner Join C_InvoiceLine CIL On CIL.C_Invoice_ID = CI.C_Invoice_ID
Inner Join C_DocType CDT On CI.C_DocType_ID = CDT.C_DocType_ID 
Inner Join LVE_WithHolding WH On WH.WithHoldingDocType_ID = CDT.C_DocType_ID 
Inner Join LVE_WH_Type WHT On WHT.LVE_WH_Type_ID = WH.LVE_WH_Type_ID
Where 
--WithHolding Completed
CI.DocStatus IN('CO','CL') 

And
--Not in Declaration 
Not Exists (Select 1 From 
		C_invoice CIS 
		Inner Join C_InvoiceLine CILS On CIS.C_Invoice_ID = CILS.C_Invoice_ID
		Inner Join LVE_Withholding WHS On WHS.DeclarationDocType_ID=CIS.C_DocType_ID
		Where CILS.DocAffected_ID = CI.C_Invoice_ID And CIS.DocStatus IN('CO','CL','DR')
		)
And
--In WithHolding Document 
Exists (Select 1 From 
		C_invoice CIS 
		Inner Join C_InvoiceLine CILS On CIS.C_Invoice_ID = CILS.C_Invoice_ID
		Inner Join LVE_Withholding WHS On WHS.WithHoldingDocType_ID=CIS.C_DocType_ID
		Where CIS.C_Invoice_ID=CI.C_Invoice_ID  And 
		      CILS.DocAffected_ID Is Not Null And 
		      CIS.DocStatus IN('CO','CL')
	);