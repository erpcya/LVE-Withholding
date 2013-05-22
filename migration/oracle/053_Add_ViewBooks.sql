Create Or Replace View CUST_RV_Books As 
Select 
	ci.AD_Client_ID,/*Client ID*/
	ci.AD_Org_ID,/*Org ID*/
	ci.C_Invoice_ID,/*Invoice ID*/
	cdt.C_DocType_ID,/*DocType ID*/
	cdt.DocTypeDeclare,/*DocType Declared*/
	ci.DateInvoiced,/*Date invoiced*/
	ci.DateAcct,/*Date Acct*/
	ci.ControlNo,/*Control No*/
	ci.DocumentNo,/*Document No*/
	cbp.Name,/*Business Partner Name */
	cbp.Value,/*Business Partner Value*/
	cbp.TaxID,/*Business Partner Tax ID*/
	ci.GrandTotal,/*Net With Tax*/
	ctax.Exempt,/*Exempt*/
	ctax.TaxBaseAmt,/*Base Amt*/
	ctax.Rate,/*Tax Rate*/
	ctax.TaxAmt,/*Tax Amt*/
	ciaffected.DocAffected_ID,/*Affected ID*/
	ret.DocumentNo As RetDocumentNo, /* Retention Document No*/
	ret.LineNetAmt, /*Retention Amt*/
	ci.DocStatus,/*Document Status*/
	ci.DocAction,/*Document Action*/
	ci.IsSOTrx /*Is SO trx*/
From 
C_DocType cdt
Inner Join C_Invoice ci On cdt.C_DocType_ID=ci.C_DocType_ID
Inner Join C_BPartner cbp On ci.C_BPartner_ID=cbp.C_BPartner_ID
Inner Join 
	(Select citax.C_Invoice_ID,
		Max(ctax.Rate) Rate,
		Sum(TaxAmt) As TaxAmt,
		Sum(Case ctax.Rate When 0 Then 0 Else TaxBaseAmt End) As TaxBaseAmt,
		Sum(Case ctax.Rate When 0 Then TaxBaseAmt Else 0 End) As Exempt 
	From 
		C_InvoiceTax citax 
		Inner Join C_Tax ctax On citax.C_Tax_ID=ctax.C_Tax_ID
		Group By citax.C_Invoice_ID) ctax On ctax.C_Invoice_ID = ci.C_Invoice_ID
Left Join 
	(Select Distinct cal.C_Invoice_ID,
		calrel.C_Invoice_ID DocAffected_ID,
		ci.DocumentNo,
		calrel.Amount 
	From C_AllocationHdr cah 
	Inner Join C_AllocationLine cal on cah.C_AllocationHdr_ID= cal.C_AllocationHdr_ID
	Inner Join C_AllocationLine calrel on cah.C_AllocationHdr_ID= calrel.C_AllocationHdr_ID
	Inner Join C_Invoice ci On ci.C_Invoice_ID = calrel.C_Invoice_ID
	Where Not Exists (Select 1 From CUST_RetentionType Where C_DocType_ID = ci.C_DocType_ID )) ciaffected On ciaffected.C_Invoice_ID = ci.C_Invoice_ID And ciaffected.DocAffected_ID <>ci.C_Invoice_ID
Left Join (Select Distinct
		clret.DocAffected_ID,
		cret.DocumentNo,
		clret.LineNetAmt
	   From 
	   C_Invoice cret
	   Inner Join C_InvoiceLine clret On cret.C_Invoice_ID = clret.C_Invoice_ID
	   Inner Join CUST_RetentionType crt On crt.C_DocType_ID=cret.C_DocType_ID
	   Inner Join CUST_RetentionGroup crg On crg.CUST_RetentionGroup_ID=crt.CUST_RetentionGroup_ID
	   Where cret.DocStatus In ('CL','CO') And crg.Value='IVA'
		) ret On ret.DocAffected_ID=ci.C_Invoice_ID
Where cdt.AffectsBook ='Y';
