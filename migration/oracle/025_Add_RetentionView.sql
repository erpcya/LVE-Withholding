Create Or Replace View CUST_RV_Retention As
Select  Distinct
	ci.AD_Client_ID,/*Company ID*/
	ci.AD_Org_ID,/*Org ID*/
	cil.C_Invoice_ID ,/*Root Document(Document Retention ID)*/ 
	ci.C_Invoice_ID As DocAffected_ID , /*Document Retain*/
	ci.DateInvoiced ,/*Date Documentno*/
	ci.ControlNo, /*Control No*/
	cdt.Name, /*Document Type Name*/
	ctax.Rate,/*Aliquot Invoice*/
	ctax.TaxAmt,/*Tax Amt*/
	ctax.TaxBaseAmt, /*Base Amt*/
	ci.TotalLines,/*Total Lines exclude tax*/
	ci.GrandTotal,/*Total Document*/
	cil.LineNetAmt, /*Line Net (Retention Amt)*/
	ciaffected.DocumentNo, /* DocumentNo Affeected*/
	ciaffected.Amount, /*Amount Affected*/
	crc.Aliquot,/*Aliquot Retention*/
	crc.Subtrahend, /*Subtrahend*/
	/*crt.Name As Name_RetentionType,Name Retention Type*/
	crg.Value As Value_RetentionGroup,/*Value Retention Group*/
	crg.Name As Name_RetentionGroup, /*Name Retention Group*/
	(cil.Line/10) AS Line,
	ccpc.value
From 
C_DocType cdt
Inner Join C_Invoice ci On ci.C_DocType_ID=cdt.C_DocType_ID
Inner Join C_InvoiceLine cil On ci.C_Invoice_ID = cil.DocAffected_ID
inner Join CUST_CR_PT_Combination ccpc On ccpc.CUST_CR_PT_Combination_ID=cil.CUST_CR_PT_Combination_ID
Inner Join CUST_RetentionConfig crc On ccpc.CUST_RetentionConfig_ID=crc.CUST_RetentionConfig_ID
Inner Join C_Invoice cir On cir.C_Invoice_ID = cil.C_Invoice_ID
Inner Join CUST_RetentionType crt On cir.C_DocType_ID = crt .C_DocType_ID
Inner Join CUST_RetentionGroup crg On crt.CUST_RetentionGroup_ID=crg.CUST_RetentionGroup_ID 
Inner Join 
	(Select citax.C_Invoice_ID,
		Max(ctax.Rate) Rate,
		Sum(TaxAmt) As TaxAmt,
		Sum(Case ctax.Rate When 0 Then 0 Else TaxBaseAmt End) As TaxBaseAmt 
	From 
		C_InvoiceTax citax 
		Inner Join C_Tax ctax On citax.C_Tax_ID=ctax.C_Tax_ID
		Group By citax.C_Invoice_ID) ctax On ctax.C_Invoice_ID = ci.C_Invoice_ID
Left Join 
	(Select cal.C_Invoice_ID As Retention_ID,
		calrel.C_Invoice_ID,
		ci.DocumentNo,
		calrel.Amount 
	From C_AllocationHdr cah 
	Inner Join C_AllocationLine cal on cah.C_AllocationHdr_ID= cal.C_AllocationHdr_ID
	Inner Join C_AllocationLine calrel on cah.C_AllocationHdr_ID= calrel.C_AllocationHdr_ID
	Inner Join C_Invoice ci On ci.C_Invoice_ID = calrel.C_Invoice_ID
	Where Not Exists (Select 1 From CUST_RetentionType Where C_DocType_ID = ci.C_DocType_ID )) ciaffected On ciaffected.Retention_ID = ci.C_Invoice_ID And ciaffected.C_Invoice_ID <>ci.C_Invoice_ID; 
