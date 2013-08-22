-- Aug 6, 2013 4:12:17 PM VET
-- LVE Withholding
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,53521,TO_TIMESTAMP('2013-08-06 16:12:15','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','C_Invoice <-> C_Invoice (Withholding)',TO_TIMESTAMP('2013-08-06 16:12:15','YYYY-MM-DD HH24:MI:SS'),100,'T')
;

-- Aug 6, 2013 4:12:17 PM VET
-- LVE Withholding
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53521 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Aug 6, 2013 4:12:32 PM VET
-- LVE Withholding
UPDATE AD_Reference_Trl SET Name='Documento Por Pagar <-> Documento Por Pagar (Retencion)',Description='Busca las Retenciones de un Documento por Pagar y los Documentos Documentos por Pagar de una Retencion',Updated=TO_TIMESTAMP('2013-08-06 16:12:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53521 AND AD_Language='es_MX'
;

-- Aug 6, 2013 4:19:24 PM VET
-- LVE Withholding
INSERT INTO AD_Ref_Table (AD_Client_ID,AD_Display,AD_Key,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsValueDisplayed,OrderByClause,Updated,UpdatedBy,WhereClause) VALUES (0,3492,3484,0,53521,318,183,TO_TIMESTAMP('2013-08-06 16:19:24','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','DocumentNo',TO_TIMESTAMP('2013-08-06 16:19:24','YYYY-MM-DD HH24:MI:SS'),100,'
C_invoice_ID In 
(Select 
 retl.DocAffected_ID 
 From C_Invoice ret 
 Inner Join C_InvoiceLine retl On ret.C_Invoice_ID = retl.C_Invoice_ID
 Inner Join LVE_Withholding w On w.WithholdingDocType = ret.C_DocType_ID::bpchar
 Where ret.C_Invoice_ID=@C_Invoice_ID@
) 
Or
C_invoice_ID In 
(
Select 
cil.C_Invoice_ID 
From 
C_Invoice ci
Inner Join C_InvoiceLine cil On ci.C_Invoice_ID = cil.C_Invoice_ID 
 Inner Join LVE_Withholding w ON w.WithholdingDocType =ci.C_DocType_ID::bpchar
Where cil.DocAffected_ID=@C_Invoice_ID@
)')
;

-- Aug 6, 2013 4:20:30 PM VET
-- LVE Withholding
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53331,54003,TO_TIMESTAMP('2013-08-06 16:20:28','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Invoice/Withholding',TO_TIMESTAMP('2013-08-06 16:20:28','YYYY-MM-DD HH24:MI:SS'),100,'Invoice/Withholding')
;

-- Aug 6, 2013 4:20:30 PM VET
-- LVE Withholding
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54003 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Aug 6, 2013 4:20:35 PM VET
-- LVE Withholding
UPDATE AD_Ref_List_Trl SET Name='Factura/Retencion',Updated=TO_TIMESTAMP('2013-08-06 16:20:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54003 AND AD_Language='es_MX'
;

-- Aug 6, 2013 4:21:15 PM VET
-- LVE Withholding
INSERT INTO AD_RelationType (AD_Client_ID,AD_Org_ID,AD_Reference_Source_ID,AD_Reference_Target_ID,AD_RelationType_ID,Created,CreatedBy,IsActive,IsDirected,Name,Role_Source,Role_Target,Type,Updated,UpdatedBy) VALUES (0,0,53521,53521,50006,TO_TIMESTAMP('2013-08-06 16:21:09','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','Invoice <-> Withholding','Invoice/Withholding','Invoice/Withholding','I',TO_TIMESTAMP('2013-08-06 16:21:09','YYYY-MM-DD HH24:MI:SS'),100)
;

