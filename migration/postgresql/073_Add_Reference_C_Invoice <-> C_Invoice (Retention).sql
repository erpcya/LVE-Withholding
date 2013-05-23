-- 17-may-2013 16:48:15 VET
-- LVE Retention
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,Description,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,3000208,TO_TIMESTAMP('2013-05-17 16:48:06','YYYY-MM-DD HH24:MI:SS'),100,'Finds Invoices for a Retention And Retention for a Invoices','ECA02','Y','N','C_Invoice <-> C_Invoice (Retention)',TO_TIMESTAMP('2013-05-17 16:48:06','YYYY-MM-DD HH24:MI:SS'),100,'T')
;

-- 17-may-2013 16:48:15 VET
-- LVE Retention
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=3000208 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 17-may-2013 16:48:58 VET
-- LVE Retention
UPDATE AD_Reference_Trl SET Name='Documento Por Pagar <-> Documento Por Pagar (Retencion)',Description='Busca las Retenciones de un Documento por Pagar y los Documentos Documentos por Pagar de una Retencion',Updated=TO_TIMESTAMP('2013-05-17 16:48:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=3000208 AND AD_Language='es_VE'
;

-- 17-may-2013 16:49:47 VET
-- LVE Retention
INSERT INTO AD_Ref_Table (AD_Client_ID,AD_Display,AD_Key,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsValueDisplayed,OrderByClause,Updated,UpdatedBy,WhereClause) VALUES (0,3492,3484,0,3000208,318,183,TO_TIMESTAMP('2013-05-17 16:49:47','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','DocumentNo',TO_TIMESTAMP('2013-05-17 16:49:47','YYYY-MM-DD HH24:MI:SS'),100,'C_invoice_ID In 
(Select 
 retl.DocAffected_ID 
 From C_Invoice ret 
 Inner Join C_InvoiceLine retl On ret.C_Invoice_ID = retl.C_Invoice_ID
 Inner Join CUST_RetentionType rt On ret.C_DocType_ID = rt.C_DocType_ID
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
Inner Join CUST_RetentionType rt On ci.C_DocType_ID = rt.C_DocType_ID
Where cil.DocAffected_ID=@C_Invoice_ID@
)')
;

-- 17-may-2013 16:53:26 VET
-- LVE Retention
--INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,Description,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,3000209,TO_TIMESTAMP('2013-05-17 16:53:19','YYYY-MM-DD HH24:MI:SS'),100,'Finds Invoices for a Retention And Retention for a Invoices','ECA02','Y','N','C_Invoice <-> C_Invoice (Retention)',TO_TIMESTAMP('2013-05-17 16:53:19','YYYY-MM-DD HH24:MI:SS'),100,'T')
;

-- 17-may-2013 16:56:41 VET
-- LVE Retention
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53331,3000231,TO_TIMESTAMP('2013-05-17 16:56:33','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Invoice/Retention',TO_TIMESTAMP('2013-05-17 16:56:33','YYYY-MM-DD HH24:MI:SS'),100,'Invoice/Retention')
;

-- 17-may-2013 16:56:41 VET
-- LVE Retention
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=3000231 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 17-may-2013 16:57:11 VET
-- LVE Retention
UPDATE AD_Ref_List_Trl SET Name='Factura/Retencion',Updated=TO_TIMESTAMP('2013-05-17 16:57:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=3000231 AND AD_Language='es_VE'
;

-- 17-may-2013 16:58:25 VET
-- LVE Retention
INSERT INTO AD_RelationType (AD_Client_ID,AD_Org_ID,AD_Reference_Source_ID,AD_Reference_Target_ID,AD_RelationType_ID,Created,CreatedBy,IsActive,IsDirected,Name,Role_Source,Role_Target,Type,Updated,UpdatedBy) VALUES (0,0,3000208,3000208,3000200,TO_TIMESTAMP('2013-05-17 16:58:17','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','Invoice <-> Retention','Invoice/Retention','Invoice/Retention','I',TO_TIMESTAMP('2013-05-17 16:58:17','YYYY-MM-DD HH24:MI:SS'),100)
;
