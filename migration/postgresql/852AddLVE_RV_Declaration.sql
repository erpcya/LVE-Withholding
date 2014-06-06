--DROP VIEW LVE_RV_Declaration 
/*Create Or Replace View LVE_RV_Declaration As
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
	CDTI.DateInvoiced,                     --Document Date Original
	CDTI.Exempt,                         --Excempt
	CRR.WHBaseAmt,			     --WH Base Amt
	CRR.ReferenceNO
From 
--Org Info
AD_OrgInfo OI 
--Declaration Document Header
Inner Join RV_C_Invoice CI On OI.AD_Org_ID = CI.AD_Org_ID
--Declaration Document Line
Inner Join C_InvoiceLine CIL On CI.C_Invoice_ID=CIL.C_Invoice_ID
--WithHolding Form
Inner Join LVE_RV_WithHolding CRR On CRR.C_Invoice_ID = CIL.DocAffected_ID
--Original Document
left Join (
	Select CI.C_Invoice_ID, 
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
WHERE 
	CI.DocStatus IN ('CO','CL')
	--AND CI.C_Invoice_ID = 1070328

;
*/

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
	-- Tu tenias esta linea para mostrar los documentos afectados
	-- Edgar pidio que cuando la linea fuera una factura mostrara un cero 
	-- de lo contrario mostrara el documento que esta siendo afectado por una nota 
	-- de crédito o débito
	--CRR.DocumentNo ::VARCHAR(30) As AffectedDocumentNo,--Affected Document No
	CASE WHEN CDTI.DocTypeDeclare <> '01' THEN 
	CRR.DocumentNo 
	ELSE 
		'0' 
	END::VARCHAR(30) As AffectedDocumentNo,--Affected Document No
	-- Yo hice eso no se si este bien 
		
	CRR.WH_DocumentNo as WithHoldingNo ,      --Retention No
	CRR.Rate,                            --Rate
	CRR.TaxAmt,                          --Tax Amt
	CRR.TotalLines,                      --Total Lines
	CRR.Value As WithHoldingCod,           --Retention Cod
	CRR.Aliquot,                         --Aliquot Retention
	CDTI.C_BPartner_ID,                  --Bussiness Partner ID
	CDTI.Name,                           --Bussiness Partner Name
	CDTI.DateAcct,                       --Date Acct Document Retained
	CDTI.DateInvoiced,                     --Document Date Original
	CDTI.Exempt,                         --Excempt
	CRR.WHBaseAmt,			     --WH Base Amt
	CRR.ReferenceNO
From 
--Org Info
AD_OrgInfo OI 
--Declaration Document Header
Inner Join RV_C_Invoice CI On OI.AD_Org_ID = CI.AD_Org_ID
--Declaration Document Line
Inner Join C_InvoiceLine CIL On CI.C_Invoice_ID=CIL.C_Invoice_ID
--WithHolding Form
Inner Join LVE_RV_WithHolding CRR On CRR.C_Invoice_ID = CIL.DocAffected_ID
--Original Document
left Join (
	Select CI.C_Invoice_ID, 
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
WHERE 
	CI.DocStatus IN ('CO','CL')

UNION

SELECT 
i.AD_Client_ID,					--Company ID
i.AD_Org_ID,					--Org ID
NULL::Numeric(10,0) AS C_Invoice_ID,				--Invoice ID Document Declaration
NULL::Numeric(10,0) AS DocAffected_ID,				--WithHolding Document ID
oi.TaxID,					--Document ID Organization
dt.DocTypeDeclare,				--Declared Type
bp.Value,					--Bussines Partner Value
bp.TaxID AS BCTaxID,				--Bussines Partner TaxID
i.DocumentNo,					--DocumentNo
i.ControlNo,					--Control No
i.GrandTotal,					--Document Total
ctax.TaxBaseAmt,				--Base Amt
0::Numeric LineNetAmt,				--Retain Amt

NULL ::Varchar(30) As AffectedDocumentNo,		--Affected Document No
Null::Varchar(30) As WithHoldingNo,			--Retention No
ctax.Rate,					--Rate
ctax.TaxAmt,					--Tax Amt
i.TotalLines,					--Total Lines
wcp.WithHoldingCod,				--Retention Cod
wcp.Aliquot,					--Aliquot Retention
i.C_BPartner_ID,				--Bussiness Partner ID
bp.Name,					--Bussiness Partner Name
i.DateAcct,					--Date Acct Document Retained
i.DateInvoiced,					--Document Date Original
ctax.Exempt,					--Excempt
cilbwh.WHBaseAmt,				--WH Base Amt
Null::Varchar(60) As ReferenceNO

FROM 
C_Invoice i
INNER JOIN AD_OrgInfo oi ON oi.AD_Org_ID = i.AD_Org_ID
INNER JOIN C_DocType dt ON i.C_DocType_ID = dt.C_DocType_ID
INNER JOIN C_BPartner bp On bp.C_BPartner_ID = i.C_BPartner_ID
INNER JOIN ( SELECT citax.c_invoice_id, max(ctax.rate) AS rate, 
    sum(citax.taxamt) AS taxamt, 
    sum(
        CASE ctax.rate
            WHEN 0 THEN 0::numeric
            ELSE citax.taxbaseamt
        END) AS taxbaseamt, 
    sum(
        CASE ctax.rate
            WHEN 0 THEN citax.taxbaseamt
            ELSE 0::numeric
        END) AS exempt
   FROM c_invoicetax citax
   JOIN c_tax ctax ON citax.c_tax_id = ctax.c_tax_id
  GROUP BY citax.c_invoice_id) ctax ON ctax.c_invoice_id = i.c_invoice_id
LEFT JOIN ( SELECT cil.c_invoice_id, sum(cil.linenetamt) AS whbaseamt, 
    sum(cil.taxamt) AS whtaxamt
   FROM c_invoiceline cil
   JOIN lve_wc_productcharge wcpch ON cil.m_product_id = wcpch.m_product_id OR cil.c_charge_id = wcpch.c_charge_id
  WHERE wcpch.isactive = 'Y'::bpchar
  GROUP BY cil.c_invoice_id) cilbwh ON cilbwh.c_invoice_id = i.c_invoice_id
--WH Concept
LEFT JOIN 
(
SELECT tu.LVE_TaxUnit_ID,wcb.LVE_WH_Combination_ID,wch.LVE_WH_Config_ID,wcb.Value AS WithHoldingCod,wr.C_DocType_ID,wcb.Aliquot,wc.LVE_WH_Concept_ID,wcb.LVE_PersonType_ID,pc.M_Product_ID,pc.C_Charge_ID,wht.Value,i.C_Invoice_ID
FROM 
LVE_WH_Concept wc
INNER JOIN LVE_WC_ProductCharge pc ON pc.LVE_WH_Concept_ID =wc.LVE_WH_Concept_ID
INNER JOIN LVE_WH_Combination wcb ON wc.LVE_WH_Concept_ID = wcb.LVE_WH_Concept_ID
INNER JOIN LVE_WH_Config wch ON wcb.LVE_WH_Combination_ID = wch.LVE_WH_Combination_ID
INNER JOIN LVE_TaxUnit tu ON tu.LVE_TaxUnit_ID = wch.LVE_TaxUnit_ID
INNER JOIN LVE_WH_Relation wr ON wr.LVE_WithHolding_ID = wch.LVE_WithHolding_ID
INNER JOIN LVE_WithHolding wh ON  wr.LVE_WithHolding_ID = wh.LVE_WithHolding_ID
INNER JOIN LVE_WH_Type wht ON wht.LVE_WH_Type_ID = wh.LVE_WH_Type_ID
INNER JOIN C_InvoiceLine il ON il.M_Product_ID = pc.M_Product_ID OR il.C_Charge_ID = pc.C_Charge_ID
INNER JOIN C_Invoice i ON i.C_Invoice_ID = il.C_Invoice_ID AND i.C_DocType_ID = wr.C_DocType_ID
WHERE 
wr.C_DocType_ID IS NOT NULL AND wht.Value = 'RISLR'
) wcp
ON wcp.C_Invoice_ID = i.C_Invoice_ID AND wcp.C_DocType_ID = i.C_DocType_ID AND wcp.LVE_PersonType_ID = bp.LVE_PersonType_ID

WHERE 
--Invoice Line Have a Product or Charge in Config
EXISTS 
(SELECT 1 FROM 
C_InvoiceLine ils 
INNER JOIN LVE_WC_ProductCharge pcs ON ils.M_Product_ID = pcs.M_Product_ID OR ils.C_Charge_ID = pcs.C_Charge_ID
INNER JOIN LVE_WH_Combination wcbs ON pcs.LVE_WH_Concept_ID = wcbs.LVE_WH_Concept_ID
INNER JOIN LVE_WH_Config wchs ON wcbs.LVE_WH_Combination_ID = wchs.LVE_WH_Combination_ID
INNER JOIN LVE_TaxUnit tus ON tus.LVE_TaxUnit_ID = wchs.LVE_TaxUnit_ID
INNER JOIN LVE_WH_Relation wrs ON wrs.LVE_WithHolding_ID = wchs.LVE_WithHolding_ID
INNER JOIN LVE_WithHolding whs ON  wrs.LVE_WithHolding_ID = whs.LVE_WithHolding_ID
INNER JOIN LVE_WH_Type whts ON whts.LVE_WH_Type_ID = whs.LVE_WH_Type_ID
INNER JOIN C_Invoice ins ON ins.C_Invoice_ID = ils.C_Invoice_ID AND ins.C_DocType_ID = wrs.C_DocType_ID
WHERE whts.Value = 'RISLR' AND ils.DocAffected_ID = i.C_Invoice_ID
)

--Document No Retained
AND NOT EXISTS(SELECT 1 FROM 
		C_invoiceLine ils 
		INNER JOIN LVE_WH_Config whc ON ils.LVE_WH_Config_ID = whc.LVE_WH_Config_ID
		INNER JOIN LVE_WithHolding wh ON whc.LVE_WithHolding_ID = wh.LVE_WithHolding_ID
		INNER JOIN LVE_WH_Type wht ON wht.LVE_WH_Type_ID = wh.LVE_WH_Type_ID
		WHERE ils.DocAffected_ID = i.C_Invoice_ID AND wht.Value = 'RISLR')

--Tax Unit Active With Document
AND wcp.LVE_TaxUnit_ID = (SELECT tu.LVE_TaxUnit_ID FROM LVE_TaxUnit tu WHERE tu.IsActive = 'Y' AND tu.ValidFrom <= i.DateAcct ORDER BY tu.ValidFrom DESC LIMIT 1)


UNION

SELECT 
i.AD_Client_ID,					--Company ID
i.AD_Org_ID,					--Org ID
NULL::Numeric(10,0) AS C_Invoice_ID,				--Invoice ID Document Declaration
NULL::Numeric(10,0) AS DocAffected_ID,				--WithHolding Document ID
oi.TaxID,					--Document ID Organization
dt.DocTypeDeclare,				--Declared Type
bp.Value,					--Bussines Partner Value
bp.TaxID AS BCTaxID,				--Bussines Partner TaxID
i.DocumentNo,					--DocumentNo
i.ControlNo,					--Control No
i.GrandTotal,					--Document Total
ctax.TaxBaseAmt,				--Base Amt
0::Numeric LineNetAmt,				--Retain Amt

NULL ::Varchar(30) As AffectedDocumentNo,		--Affected Document No
Null::Varchar(30) As WithHoldingNo,			--Retention No
ctax.Rate,					--Rate
ctax.TaxAmt,					--Tax Amt
i.TotalLines,					--Total Lines
wc.WithHoldingCod,				--Retention Cod
wc.Aliquot,					--Aliquot Retention
i.C_BPartner_ID,				--Bussiness Partner ID
bp.Name,					--Bussiness Partner Name
i.DateAcct,					--Date Acct Document Retained
i.DateInvoiced,					--Document Date Original
ctax.Exempt,					--Excempt
cilbwh.WHBaseAmt,				--WH Base Amt
Null::Varchar(60) As ReferenceNO

FROM 

C_Invoice i
INNER JOIN AD_OrgInfo oi ON oi.AD_Org_ID = i.AD_Org_ID
INNER JOIN C_DocType dt ON i.C_DocType_ID = dt.C_DocType_ID
INNER JOIN C_BPartner bp On bp.C_BPartner_ID = i.C_BPartner_ID
INNER JOIN ( SELECT citax.c_invoice_id, max(ctax.rate) AS rate, 
    sum(citax.taxamt) AS taxamt, 
    sum(
        CASE ctax.rate
            WHEN 0 THEN 0::numeric
            ELSE citax.taxbaseamt
        END) AS taxbaseamt, 
    sum(
        CASE ctax.rate
            WHEN 0 THEN citax.taxbaseamt
            ELSE 0::numeric
        END) AS exempt
   FROM c_invoicetax citax
   JOIN c_tax ctax ON citax.c_tax_id = ctax.c_tax_id
  GROUP BY citax.c_invoice_id) ctax ON ctax.c_invoice_id = i.c_invoice_id
LEFT JOIN ( SELECT cil.c_invoice_id, sum(cil.linenetamt) AS whbaseamt, 
    sum(cil.taxamt) AS whtaxamt
   FROM c_invoiceline cil
   JOIN lve_wc_productcharge wcpch ON cil.m_product_id = wcpch.m_product_id OR cil.c_charge_id = wcpch.c_charge_id
  WHERE wcpch.isactive = 'Y'::bpchar
  GROUP BY cil.c_invoice_id) cilbwh ON cilbwh.c_invoice_id = i.c_invoice_id
--WH Concepts
LEFT JOIN (SELECT tu.LVE_TaxUnit_ID,wcb.LVE_WH_Combination_ID,wch.LVE_WH_Config_ID,wcb.Value AS WithHoldingCod,wr.C_DocType_ID,wcb.Aliquot,wc.LVE_WH_Concept_ID,wcb.LVE_PersonType_ID
FROM 
LVE_WH_Concept wc
INNER JOIN LVE_WH_Combination wcb ON wc.LVE_WH_Concept_ID = wcb.LVE_WH_Concept_ID
INNER JOIN LVE_WH_Config wch ON wcb.LVE_WH_Combination_ID = wch.LVE_WH_Combination_ID
INNER JOIN LVE_TaxUnit tu ON tu.LVE_TaxUnit_ID = wch.LVE_TaxUnit_ID
INNER JOIN LVE_WH_Relation wr ON wr.LVE_WithHolding_ID = wch.LVE_WithHolding_ID
WHERE wr.C_DocType_ID IS NOT NULL) wc ON wc.LVE_WH_Concept_ID = i.LVE_WH_Concept_ID AND wc.C_DocType_ID = i.C_DocType_ID AND wc.LVE_PersonType_ID = bp.LVE_PersonType_ID

WHERE 
(
--Concept Is Not Null
i.LVE_WH_Concept_ID IS NOT NULL 

AND 

--Document No Retained
NOT EXISTS(SELECT 1 FROM 
		C_invoiceLine ils 
		INNER JOIN LVE_WH_Config whc ON ils.LVE_WH_Config_ID = whc.LVE_WH_Config_ID
		INNER JOIN LVE_WithHolding wh ON whc.LVE_WithHolding_ID = wh.LVE_WithHolding_ID
		INNER JOIN LVE_WH_Type wht ON wht.LVE_WH_Type_ID = wh.LVE_WH_Type_ID
		WHERE ils.DocAffected_ID = i.C_Invoice_ID AND wht.Value = 'RISLR')
)
AND 
--Tax Unit Active With Document
wc.LVE_TaxUnit_ID = (SELECT tu.LVE_TaxUnit_ID FROM LVE_TaxUnit tu WHERE tu.IsActive = 'Y' AND tu.ValidFrom <= i.DateAcct ORDER BY tu.ValidFrom DESC LIMIT 1)

;
