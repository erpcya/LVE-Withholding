CREATE OR REPLACE Function LVE_ReferencedDocuments(p_C_Invoice_ID Numeric)
RETURNS RECORD AS 
$$
Declare
result Record;
AllocLine Record;
v_DocumentNo Varchar;
v_Amt Numeric;
v_ID Numeric;
v_DateInvoiced TimesTamp;
Begin
For AllocLine In Select cal.C_AllocationHdr_ID 
		From 
		C_AllocationLine cal 
		Inner Join C_AllocationHdr cah On cal.C_AllocationHdr_ID=cah.C_AllocationHdr_ID
		Where cal.C_Invoice_ID=p_C_Invoice_ID And cah.DocStatus In('CO','CL')
Loop
	--Not Allocation invoice
	If Not Exists(Select 1 
			From C_AllocationLine cal 
			Inner Join C_Invoice ci On cal.C_Invoice_ID=ci.C_Invoice_ID
			Inner Join C_DocType dt On dt.C_DocType_ID=ci.C_DocType_ID
			Where cal.C_AllocationHdr_ID= AllocLine.C_AllocationHdr_ID 
			And Exists(Select 1 From LVE_Withholding WH Where WH.WithholdingDocType_ID=ci.C_DocTypeTarget_ID) --Don't WithHolding Dcuments
			) Then 
		v_Amt:=null;
		v_DocumentNo:=null;
		v_DateInvoiced:=NULL;
		Select Abs(cal.Amount),ci.DocumentNo,ci.C_Invoice_ID,ci.DateInvoiced 
		into v_Amt,v_DocumentNo,v_ID,v_DateInvoiced 
		From 
		C_AllocationLine cal 
		Inner Join C_invoice ci On cal.C_Invoice_ID = ci.C_Invoice_ID
		Inner Join C_DocType dt On dt.C_DocType_ID=ci.C_DocType_ID
		Where cal.C_AllocationHdr_ID= AllocLine.C_AllocationHdr_ID And --Equals to Allocation
		cal.C_Invoice_ID<>p_C_Invoice_ID  --Documents <> WithHolding
		And dt.DocTypeDeclare ='01'  --Only Document Invoice
		And Not Exists(Select 1 From LVE_Withholding WH Where WH.WithholdingDocType_ID=ci.C_DocTypeTarget_ID) --Don't WithHolding Dcuments
		Limit 1;
		if (v_Amt Is Not Null And v_DocumentNo Is Not Null) Then
			result := (Cast(v_Amt AS Numeric),Cast(v_DocumentNo AS Varchar(30)),Cast(v_ID As Numeric),CAST(v_DateInvoiced AS TimesTamp));
			Raise Notice 'DocumentNo % - Amt % DateInvoiced %', v_DocumentNo,v_Amt,v_DateInvoiced 
			;
		End If;
		
		
	End If;
End Loop;

Return result;
End;
$$
Language PLPGSQL;

