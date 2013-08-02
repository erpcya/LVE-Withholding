CREATE OR REPLACE VIEW LVE_RV_Withholding AS 
SELECT 	DISTINCT
	-- Invoice	
	i.AD_Client_ID, --ID Client
	i.AD_Org_ID, --ID Org
	i.DateInvoiced, --Date Invoiced
	i.ControlNo,--Control Number
	i.TotalLines, -- Amount Lines Not Tax of Invoice
	i.GrandTotal, -- Total Amount 
	-- Invoice Line
	il.C_Invoice_ID, -- Invoice ID from Invoice Line
	il.DocAffected_ID, -- Invoiced Affected
	--il.LineNetAmt, -- Line Amount Net
	il.Line / 10::NUMERIC AS Line, -- Number Line Invoice Line
	--Document Infor
	dt.Name, -- Document Name 
	-- Tax Info
	tax.Rate, -- Tax Rate
	tax.taxamt, -- Tax Amount
	tax.taxbaseamt, -- Tax Base Amount

	-- Invoice Affected
	iaffected.DocumentNo, --Document No Affected
	iaffected.Amount, -- Amount Invoice Affected

	-- WH_Conbination 
	whc.Aliquot, --Aliquot
	whc.value, -- Search Key Withholding Concept

	-- Withholding Config
	wc.Subtrahend,-- Subtrahend

	-- Withholding Type
	wt.value AS value_retentiongroup,  --Value Withholding Type
	wt.name AS name_retentiongroup --Name Withholding Type
	
FROM C_DocType dt
JOIN C_Invoice i ON i.C_DocType_ID = dt.C_DocType_ID
JOIN C_InvoiceLine il ON i.C_Invoice_ID = il.DocAffected_ID
JOIN LVE_WithholdingConfig wc ON wc.LVE_WithholdingConfig_ID = il.LVE_WithholdingConfig_ID
JOIN LVE_WH_Conbination whc ON whc.LVE_WH_Conbination_ID = wc.LVE_WH_Conbination_ID
JOIN LVE_WithholdingConcept wct ON wct.LVE_WithholdingConcept_ID = whc.LVE_WithholdingConcept_ID
JOIN LVE_Withholding w ON w.LVE_Withholding_ID = wct.LVE_Withholding_ID
JOIN LVE_WithholdingType wt ON wt.LVE_WithholdingType_ID = w.LVE_WithholdingType_ID
JOIN 
(
	SELECT
		it.C_Invoice_ID, --Invoice of Tax
		MAX(t.Rate) AS Rate, -- ID Max Tax
		SUM(it.TaxAmt) AS TaxAmt, -- Tax Amount
		SUM(
			CASE t.Rate 
				WHEN 0 THEN 0:: NUMERIC
				ELSE it.TaxBaseAmt
			END
		) AS TaxBaseAmt -- Amount base Tax
	FROM  C_InvoiceTax it 
	JOIN C_Tax t ON it.C_Tax_ID = t.C_Tax_ID 
	GROUP BY
		it.C_Invoice_ID
)tax ON tax.C_Invoice_ID = i.C_Invoice_ID
LEFT JOIN 
(
	SELECT 
		al.C_Invoice_ID AS Withholding_ID,
		al.C_Invoice_ID,
		i.DocumentNo, 
		calrel.Amount
	FROM C_AllocationHdr a 
	JOIN C_AllocationLine al ON a.C_AllocationHdr_ID = al.C_AllocationHdr_ID
	JOIN c_allocationline calrel ON a.c_allocationhdr_id = calrel.c_allocationhdr_id
	JOIN C_Invoice i ON i.C_Invoice_ID = calrel.C_Invoice_ID
	WHERE NOT 
		(
			EXISTS (
				SELECT 1
				FROM LVE_Withholding w
				WHERE 
					w.WithholdingDocType = i.C_DocType_ID :: CHARACTER
				)
		)
	
	
)iaffected ON iaffected.Withholding_ID = i.c_invoice_id AND iaffected.c_invoice_id <> i.c_invoice_id
