-- Aug 9, 2013 6:15:14 AM VET
-- LVE Withholding
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,66613,0,52040,50052,50015,'WHU_AD_Client_ID','WHU.AD_Client_ID',TO_DATE('2013-08-09 06:15:12','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','ECA02','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Client',TO_DATE('2013-08-09 06:15:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 9, 2013 6:15:15 AM VET
-- LVE Withholding
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,66614,0,52041,50052,50015,'WHU_AD_Org_ID','WHU.AD_Org_ID',TO_DATE('2013-08-09 06:15:14','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Organization',TO_DATE('2013-08-09 06:15:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 9, 2013 6:15:16 AM VET
-- LVE Withholding
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,66625,0,52042,50052,50015,'WHU_C_BPartner_ID','WHU.C_BPartner_ID',TO_DATE('2013-08-09 06:15:15','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Business Partner ',TO_DATE('2013-08-09 06:15:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 9, 2013 6:15:17 AM VET
-- LVE Withholding
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,66626,0,52043,50052,50015,'WHU_C_BPartner_Location_ID','WHU.C_BPartner_Location_ID',TO_DATE('2013-08-09 06:15:16','YYYY-MM-DD HH24:MI:SS'),100,'Identifies the (ship to) address for this Business Partner','ECA02','The Partner address indicates the location of a Business Partner','Y','Partner Location',TO_DATE('2013-08-09 06:15:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 9, 2013 6:15:18 AM VET
-- LVE Withholding
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,66627,0,52044,50052,50015,'WHU_C_Currency_ID','WHU.C_Currency_ID',TO_DATE('2013-08-09 06:15:17','YYYY-MM-DD HH24:MI:SS'),100,'The Currency for this record','ECA02','Indicates the Currency to be used when processing or reporting on this record','Y','Currency',TO_DATE('2013-08-09 06:15:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 9, 2013 6:15:20 AM VET
-- LVE Withholding
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,66620,0,52045,50052,50015,'WHU_C_DocType_ID','WHU.C_DocType_ID',TO_DATE('2013-08-09 06:15:18','YYYY-MM-DD HH24:MI:SS'),100,'Document type or rules','ECA02','The Document Type determines document sequence and processing rules','Y','Document Type',TO_DATE('2013-08-09 06:15:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 9, 2013 6:15:21 AM VET
-- LVE Withholding
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,66621,0,52046,50052,50015,'WHU_C_DocTypeTarget_ID','WHU.C_DocTypeTarget_ID',TO_DATE('2013-08-09 06:15:20','YYYY-MM-DD HH24:MI:SS'),100,'Target document type for conversing documents','ECA02','You can convert document types (e.g. from Offer to Order or Invoice).  The conversion is then reflected in the current type.  This processing is initiated by selecting the appropriate Document Action.','Y','Target Document Type',TO_DATE('2013-08-09 06:15:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 9, 2013 6:15:22 AM VET
-- LVE Withholding
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,66615,0,52047,50052,50015,'WHU_C_Invoice_ID','WHU.C_Invoice_ID',TO_DATE('2013-08-09 06:15:21','YYYY-MM-DD HH24:MI:SS'),100,'Invoice Identifier','ECA02','The Invoice Document.','Y','Invoice',TO_DATE('2013-08-09 06:15:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 9, 2013 6:15:23 AM VET
-- LVE Withholding
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,66629,0,52048,50052,50015,'WHU_C_PaymentTerm_ID','WHU.C_PaymentTerm_ID',TO_DATE('2013-08-09 06:15:22','YYYY-MM-DD HH24:MI:SS'),100,'The terms of Payment (timing, discount)','ECA02','Payment Terms identify the method and timing of payment.','Y','Payment Term',TO_DATE('2013-08-09 06:15:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 9, 2013 6:15:24 AM VET
-- LVE Withholding
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,66624,0,52049,50052,50015,'WHU_DateAcct','WHU.DateAcct',TO_DATE('2013-08-09 06:15:23','YYYY-MM-DD HH24:MI:SS'),100,'Accounting Date','ECA02','The Accounting Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.','Y','Account Date',TO_DATE('2013-08-09 06:15:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 9, 2013 6:15:25 AM VET
-- LVE Withholding
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,66623,0,52050,50052,50015,'WHU_DateInvoiced','WHU.DateInvoiced',TO_DATE('2013-08-09 06:15:24','YYYY-MM-DD HH24:MI:SS'),100,'Date printed on Invoice','ECA02','The Date Invoice indicates the date printed on the invoice.','Y','Date Invoiced',TO_DATE('2013-08-09 06:15:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 9, 2013 6:15:26 AM VET
-- LVE Withholding
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,66619,0,52051,50052,50015,'WHU_DocAction','WHU.DocAction',TO_DATE('2013-08-09 06:15:25','YYYY-MM-DD HH24:MI:SS'),100,'The targeted status of the document','ECA02','You find the current status in the Document Status field. The options are listed in a popup','Y','Document Action',TO_DATE('2013-08-09 06:15:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 9, 2013 6:15:27 AM VET
-- LVE Withholding
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,66618,0,52052,50052,50015,'WHU_DocStatus','WHU.DocStatus',TO_DATE('2013-08-09 06:15:26','YYYY-MM-DD HH24:MI:SS'),100,'The current status of the document','ECA02','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Y','Document Status',TO_DATE('2013-08-09 06:15:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 9, 2013 6:15:28 AM VET
-- LVE Withholding
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,66616,0,52053,50052,50015,'WHU_DocumentNo','WHU.DocumentNo',TO_DATE('2013-08-09 06:15:27','YYYY-MM-DD HH24:MI:SS'),100,'Document sequence number of the document','ECA02','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','Document No',TO_DATE('2013-08-09 06:15:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 9, 2013 6:15:29 AM VET
-- LVE Withholding
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,66630,0,52054,50052,50015,'WHU_GrandTotal','WHU.GrandTotal',TO_DATE('2013-08-09 06:15:28','YYYY-MM-DD HH24:MI:SS'),100,'Total amount of document','ECA02','The Grand Total displays the total amount including Tax and Freight in document currency','Y','Grand Total',TO_DATE('2013-08-09 06:15:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 9, 2013 6:15:30 AM VET
-- LVE Withholding
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,66617,0,52055,50052,50015,'WHU_IsSOTrx','WHU.IsSOTrx',TO_DATE('2013-08-09 06:15:29','YYYY-MM-DD HH24:MI:SS'),100,'This is a Sales Transaction','ECA02','The Sales Transaction checkbox indicates if this item is a Sales Transaction.','Y','Sales Transaction',TO_DATE('2013-08-09 06:15:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 9, 2013 6:15:31 AM VET
-- LVE Withholding
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,66633,0,52056,50052,50015,'WHU_LVE_WH_Type_ID','WHU.LVE_WH_Type_ID',TO_DATE('2013-08-09 06:15:30','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Withholding Type',TO_DATE('2013-08-09 06:15:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 9, 2013 6:15:32 AM VET
-- LVE Withholding
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,66632,0,52057,50052,50015,'WHU_LVE_Withholding_ID','WHU.LVE_Withholding_ID',TO_DATE('2013-08-09 06:15:31','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Withholding',TO_DATE('2013-08-09 06:15:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 9, 2013 6:15:33 AM VET
-- LVE Withholding
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,66628,0,52058,50052,50015,'WHU_PaymentRule','WHU.PaymentRule',TO_DATE('2013-08-09 06:15:32','YYYY-MM-DD HH24:MI:SS'),100,'How you pay the invoice','ECA02','The Payment Rule indicates the method of invoice payment.','Y','Payment Rule',TO_DATE('2013-08-09 06:15:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 9, 2013 6:15:34 AM VET
-- LVE Withholding
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,66622,0,52059,50052,50015,'WHU_SalesRep_ID','WHU.SalesRep_ID',TO_DATE('2013-08-09 06:15:33','YYYY-MM-DD HH24:MI:SS'),100,'Sales Representative or Company Agent','ECA02','The Sales Representative indicates the Sales Rep for this Region.  Any Sales Rep must be a valid internal user.','Y','Sales Representative',TO_DATE('2013-08-09 06:15:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 9, 2013 6:15:35 AM VET
-- LVE Withholding
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,Updated,UpdatedBy) VALUES (0,66631,0,52060,50052,50015,'WHU_TotalLines','WHU.TotalLines',TO_DATE('2013-08-09 06:15:34','YYYY-MM-DD HH24:MI:SS'),100,'Total of all document lines','ECA02','The Total amount displays the total of all lines in document currency','Y','Total Lines',TO_DATE('2013-08-09 06:15:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 9, 2013 6:24:17 AM VET
-- LVE Withholding
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,Description,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,53433,'org.spin.process.WithholdingDeclare','N',TO_DATE('2013-08-09 06:24:16','YYYY-MM-DD HH24:MI:SS'),100,'Declare Withholding Pending ','ECA02','Y','N','N','N','N','Declare Withholding Pending ','Y',1,1,TO_DATE('2013-08-09 06:24:16','YYYY-MM-DD HH24:MI:SS'),100,'LVE_Declare_WH_Pending')
;

-- Aug 9, 2013 6:24:17 AM VET
-- LVE Withholding
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=53433 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- Aug 9, 2013 6:27:33 AM VET
-- LVE Withholding
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,267,0,53433,53953,15,'DateInvoiced',TO_DATE('2013-08-09 06:27:31','YYYY-MM-DD HH24:MI:SS'),100,'Date printed on Invoice','ECA02',7,'The Date Invoice indicates the date printed on the invoice.','Y','Y','Y','N','Date Invoiced',10,TO_DATE('2013-08-09 06:27:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 9, 2013 6:27:33 AM VET
-- LVE Withholding
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=53953 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Aug 9, 2013 6:30:06 AM VET
-- LVE Withholding
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,53522,TO_DATE('2013-08-09 06:30:05','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','LVE_WH_Declare_DocStatus',TO_DATE('2013-08-09 06:30:05','YYYY-MM-DD HH24:MI:SS'),100,'L')
;

-- Aug 9, 2013 6:30:07 AM VET
-- LVE Withholding
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=53522 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- Aug 9, 2013 6:31:15 AM VET
-- LVE Withholding
UPDATE AD_Reference SET Description='Document Status Declare Withholding  ', Help='Document Status Declare Withholding  ', VFormat='LL',Updated=TO_DATE('2013-08-09 06:31:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53522
;

-- Aug 9, 2013 6:31:15 AM VET
-- LVE Withholding
UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=53522
;

-- Aug 9, 2013 6:33:24 AM VET
-- LVE Withholding
UPDATE AD_Reference SET Description='Document Status Declaring Withholding  ', Help='Document Status Declaring Withholding  ', Name='LVE_WH_Declaring_DocStatus',Updated=TO_DATE('2013-08-09 06:33:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53522
;

-- Aug 9, 2013 6:33:24 AM VET
-- LVE Withholding
UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=53522
;

-- Aug 9, 2013 6:35:15 AM VET
-- LVE Withholding
UPDATE AD_Reference_Trl SET Name='LVE_WH_Declaración_DocStatus',Description='Estado de Documento Declaración de Retención',Help='Estado de Documento Declaración de Retención',Updated=TO_DATE('2013-08-09 06:35:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53522 AND AD_Language='es_MX'
;

-- Aug 9, 2013 6:35:29 AM VET
-- LVE Withholding
UPDATE AD_Reference_Trl SET Name='LVE_WH_Declaración_DocStatus',Updated=TO_DATE('2013-08-09 06:35:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53522 AND AD_Language='es_VE'
;

-- Aug 9, 2013 6:35:37 AM VET
-- LVE Withholding
UPDATE AD_Reference_Trl SET Description='Estado de Documento Declaración de Retención',Help='Estado de Documento Declaración de Retención',Updated=TO_DATE('2013-08-09 06:35:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53522 AND AD_Language='es_VE'
;

-- Aug 9, 2013 6:37:16 AM VET
-- LVE Withholding
UPDATE AD_Reference SET Description='Document Action Declaring Withholding  ', Help='Document Action Declaring Withholding  ', Name='LVE_WH_Declaring_DocAction',Updated=TO_DATE('2013-08-09 06:37:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53522
;

-- Aug 9, 2013 6:37:16 AM VET
-- LVE Withholding
UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=53522
;

-- Aug 9, 2013 6:37:42 AM VET
-- LVE Withholding
UPDATE AD_Reference_Trl SET Name='LVE_WH_Declaración_DocAction',Description='Acción de Documento Declaración de Retención',Help='Acción de Documento Declaración de Retención',Updated=TO_DATE('2013-08-09 06:37:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53522 AND AD_Language='es_MX'
;

-- Aug 9, 2013 6:38:52 AM VET
-- LVE Withholding
UPDATE AD_Reference SET Description='Document Status Declaring Withholding  ', Help='Document Status Declaring Withholding  ', Name='LVE_WH_Declaring_DocStatus',Updated=TO_DATE('2013-08-09 06:38:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53522
;

-- Aug 9, 2013 6:38:52 AM VET
-- LVE Withholding
UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=53522
;

-- Aug 9, 2013 6:39:43 AM VET
-- LVE Withholding
UPDATE AD_Reference_Trl SET Name='LVE_WH_Declaración_DocStatus',Description='Estado de Documento Declaración de Retención',Help='Estado de Documento Declaración de Retención',Updated=TO_DATE('2013-08-09 06:39:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=53522 AND AD_Language='es_MX'
;

-- Aug 9, 2013 6:40:04 AM VET
-- LVE Withholding
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53522,54004,TO_DATE('2013-08-09 06:40:03','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Drafted',TO_DATE('2013-08-09 06:40:03','YYYY-MM-DD HH24:MI:SS'),100,'DR')
;

-- Aug 9, 2013 6:40:04 AM VET
-- LVE Withholding
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54004 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Aug 9, 2013 6:40:10 AM VET
-- LVE Withholding
UPDATE AD_Ref_List_Trl SET Name='Borrador',Updated=TO_DATE('2013-08-09 06:40:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54004 AND AD_Language='es_MX'
;

-- Aug 9, 2013 6:40:18 AM VET
-- LVE Withholding
UPDATE AD_Ref_List_Trl SET Name='Borrador',Updated=TO_DATE('2013-08-09 06:40:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54004 AND AD_Language='es_VE'
;

-- Aug 9, 2013 6:40:31 AM VET
-- LVE Withholding
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53522,54005,TO_DATE('2013-08-09 06:40:30','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','Completed',TO_DATE('2013-08-09 06:40:30','YYYY-MM-DD HH24:MI:SS'),100,'CO')
;

-- Aug 9, 2013 6:40:31 AM VET
-- LVE Withholding
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=54005 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- Aug 9, 2013 6:40:43 AM VET
-- LVE Withholding
UPDATE AD_Ref_List_Trl SET Name='Completado',Updated=TO_DATE('2013-08-09 06:40:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54005 AND AD_Language='es_MX'
;

-- Aug 9, 2013 6:40:48 AM VET
-- LVE Withholding
UPDATE AD_Ref_List_Trl SET Name='Completado',Updated=TO_DATE('2013-08-09 06:40:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54005 AND AD_Language='es_VE'
;

-- Aug 9, 2013 6:40:55 AM VET
-- LVE Withholding
UPDATE AD_Ref_List SET EntityType='ECA02',Updated=TO_DATE('2013-08-09 06:40:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=54005
;

-- Aug 9, 2013 6:42:38 AM VET
-- LVE Withholding
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,289,0,53433,53954,17,53522,'DocStatus',TO_DATE('2013-08-09 06:42:37','YYYY-MM-DD HH24:MI:SS'),100,'The current status of the document','ECA02',2,'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Y','Y','N','N','Document Status',20,TO_DATE('2013-08-09 06:42:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 9, 2013 6:42:38 AM VET
-- LVE Withholding
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=53954 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- Aug 9, 2013 6:44:58 AM VET
-- LVE Withholding
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52175,'AD_Ref_List.Value IN (''DR'',''CO'')',TO_DATE('2013-08-09 06:44:57','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','LVE_WH_Declared_DocStatus','S',TO_DATE('2013-08-09 06:44:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 9, 2013 6:45:16 AM VET
-- LVE Withholding
UPDATE AD_Val_Rule SET Name='LVE_WH_Declaring_DocStatus',Updated=TO_DATE('2013-08-09 06:45:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=52175
;

-- Aug 9, 2013 6:45:25 AM VET
-- LVE Withholding
UPDATE AD_Process_Para SET AD_Reference_Value_ID=131, AD_Val_Rule_ID=52175,Updated=TO_DATE('2013-08-09 06:45:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=53954
;

-- Aug 9, 2013 6:45:31 AM VET
-- LVE Withholding
UPDATE AD_Process_Para SET IsMandatory='Y',Updated=TO_DATE('2013-08-09 06:45:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=53954
;

-- Aug 9, 2013 6:45:53 AM VET
-- LVE Withholding
UPDATE AD_Process_Para SET DefaultValue='CO',Updated=TO_DATE('2013-08-09 06:45:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=53954
;

-- Aug 9, 2013 6:46:29 AM VET
-- LVE Withholding
INSERT INTO AD_Browse (AccessLevel,AD_Browse_ID,AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_View_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsBetaFunctionality,Name,Processing,Updated,UpdatedBy,Value) VALUES ('3',50020,0,0,53433,50015,TO_DATE('2013-08-09 06:46:28','YYYY-MM-DD HH24:MI:SS'),100,'Declare Retentions','ECA02','Declare pending retentions','Y','N','Declare Retentions','N',TO_DATE('2013-08-09 06:46:28','YYYY-MM-DD HH24:MI:SS'),100,'DeclareRetentions')
;

-- Aug 9, 2013 6:46:29 AM VET
-- LVE Withholding
INSERT INTO AD_Browse_Trl (AD_Language,AD_Browse_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_ID=50020 AND NOT EXISTS (SELECT * FROM AD_Browse_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_ID=t.AD_Browse_ID)
;

-- Aug 9, 2013 6:46:45 AM VET
-- LVE Withholding
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53246,50020,0,102,0,19,52040,TO_DATE('2013-08-09 06:46:43','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','ECA02','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','N','N','N','N','N','N','Client',10,TO_DATE('2013-08-09 06:46:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 9, 2013 6:46:45 AM VET
-- LVE Withholding
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53246 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Aug 9, 2013 6:46:46 AM VET
-- LVE Withholding
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53247,50020,0,113,0,19,52041,TO_DATE('2013-08-09 06:46:45','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','N','N','N','N','N','N','Organization',11,TO_DATE('2013-08-09 06:46:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 9, 2013 6:46:46 AM VET
-- LVE Withholding
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53247 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Aug 9, 2013 6:46:48 AM VET
-- LVE Withholding
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53248,50020,0,187,0,19,52042,TO_DATE('2013-08-09 06:46:46','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','N','N','N','N','N','N','Business Partner ',12,TO_DATE('2013-08-09 06:46:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 9, 2013 6:46:48 AM VET
-- LVE Withholding
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53248 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Aug 9, 2013 6:46:50 AM VET
-- LVE Withholding
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53249,50020,0,189,0,19,52043,TO_DATE('2013-08-09 06:46:48','YYYY-MM-DD HH24:MI:SS'),100,'Identifies the (ship to) address for this Business Partner','ECA02','The Partner address indicates the location of a Business Partner','Y','N','N','N','N','N','N','Partner Location',13,TO_DATE('2013-08-09 06:46:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 9, 2013 6:46:50 AM VET
-- LVE Withholding
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53249 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Aug 9, 2013 6:46:51 AM VET
-- LVE Withholding
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53250,50020,0,193,0,19,52044,TO_DATE('2013-08-09 06:46:50','YYYY-MM-DD HH24:MI:SS'),100,'The Currency for this record','ECA02','Indicates the Currency to be used when processing or reporting on this record','Y','N','N','N','N','N','N','Currency',14,TO_DATE('2013-08-09 06:46:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 9, 2013 6:46:51 AM VET
-- LVE Withholding
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53250 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Aug 9, 2013 6:46:53 AM VET
-- LVE Withholding
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53251,50020,0,196,0,19,52045,TO_DATE('2013-08-09 06:46:51','YYYY-MM-DD HH24:MI:SS'),100,'Document type or rules','ECA02','The Document Type determines document sequence and processing rules','Y','N','N','N','N','N','N','Document Type',15,TO_DATE('2013-08-09 06:46:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 9, 2013 6:46:53 AM VET
-- LVE Withholding
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53251 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Aug 9, 2013 6:46:54 AM VET
-- LVE Withholding
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53252,50020,0,197,0,19,52046,TO_DATE('2013-08-09 06:46:53','YYYY-MM-DD HH24:MI:SS'),100,'Target document type for conversing documents','ECA02','You can convert document types (e.g. from Offer to Order or Invoice).  The conversion is then reflected in the current type.  This processing is initiated by selecting the appropriate Document Action.','Y','N','N','N','N','N','N','Target Document Type',16,TO_DATE('2013-08-09 06:46:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 9, 2013 6:46:54 AM VET
-- LVE Withholding
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53252 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Aug 9, 2013 6:46:56 AM VET
-- LVE Withholding
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53253,50020,0,1008,0,19,52047,TO_DATE('2013-08-09 06:46:54','YYYY-MM-DD HH24:MI:SS'),100,'Invoice Identifier','ECA02','The Invoice Document.','Y','N','N','N','N','N','N','Invoice',17,TO_DATE('2013-08-09 06:46:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 9, 2013 6:46:56 AM VET
-- LVE Withholding
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53253 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Aug 9, 2013 6:46:57 AM VET
-- LVE Withholding
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53254,50020,0,204,0,19,52048,TO_DATE('2013-08-09 06:46:56','YYYY-MM-DD HH24:MI:SS'),100,'The terms of Payment (timing, discount)','ECA02','Payment Terms identify the method and timing of payment.','Y','N','N','N','N','N','N','Payment Term',18,TO_DATE('2013-08-09 06:46:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 9, 2013 6:46:57 AM VET
-- LVE Withholding
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53254 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Aug 9, 2013 6:46:59 AM VET
-- LVE Withholding
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53255,50020,0,263,0,16,52049,TO_DATE('2013-08-09 06:46:57','YYYY-MM-DD HH24:MI:SS'),100,'Accounting Date','ECA02','The Accounting Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.','Y','N','N','N','N','N','N','Account Date',19,TO_DATE('2013-08-09 06:46:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 9, 2013 6:46:59 AM VET
-- LVE Withholding
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53255 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Aug 9, 2013 6:47:01 AM VET
-- LVE Withholding
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53256,50020,0,267,0,16,52050,TO_DATE('2013-08-09 06:46:59','YYYY-MM-DD HH24:MI:SS'),100,'Date printed on Invoice','ECA02','The Date Invoice indicates the date printed on the invoice.','Y','N','N','N','N','N','N','Date Invoiced',20,TO_DATE('2013-08-09 06:46:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 9, 2013 6:47:01 AM VET
-- LVE Withholding
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53256 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Aug 9, 2013 6:47:02 AM VET
-- LVE Withholding
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53257,50020,0,287,0,17,52051,TO_DATE('2013-08-09 06:47:01','YYYY-MM-DD HH24:MI:SS'),100,'The targeted status of the document','ECA02','You find the current status in the Document Status field. The options are listed in a popup','Y','N','N','N','N','N','N','Document Action',21,TO_DATE('2013-08-09 06:47:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 9, 2013 6:47:02 AM VET
-- LVE Withholding
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53257 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Aug 9, 2013 6:47:04 AM VET
-- LVE Withholding
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53258,50020,0,289,0,17,52052,TO_DATE('2013-08-09 06:47:02','YYYY-MM-DD HH24:MI:SS'),100,'The current status of the document','ECA02','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Y','N','N','N','N','N','N','Document Status',22,TO_DATE('2013-08-09 06:47:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 9, 2013 6:47:04 AM VET
-- LVE Withholding
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53258 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Aug 9, 2013 6:47:06 AM VET
-- LVE Withholding
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53259,50020,0,290,0,10,52053,TO_DATE('2013-08-09 06:47:04','YYYY-MM-DD HH24:MI:SS'),100,'Document sequence number of the document','ECA02','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','N','N','N','N','N','N','Document No',23,TO_DATE('2013-08-09 06:47:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 9, 2013 6:47:06 AM VET
-- LVE Withholding
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53259 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Aug 9, 2013 6:47:07 AM VET
-- LVE Withholding
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53260,50020,0,316,0,22,52054,TO_DATE('2013-08-09 06:47:06','YYYY-MM-DD HH24:MI:SS'),100,'Total amount of document','ECA02','The Grand Total displays the total amount including Tax and Freight in document currency','Y','N','N','N','N','N','N','Grand Total',24,TO_DATE('2013-08-09 06:47:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 9, 2013 6:47:07 AM VET
-- LVE Withholding
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53260 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Aug 9, 2013 6:47:09 AM VET
-- LVE Withholding
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53261,50020,0,1106,0,20,52055,TO_DATE('2013-08-09 06:47:07','YYYY-MM-DD HH24:MI:SS'),100,'This is a Sales Transaction','ECA02','The Sales Transaction checkbox indicates if this item is a Sales Transaction.','Y','N','N','N','N','N','N','Sales Transaction',25,TO_DATE('2013-08-09 06:47:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 9, 2013 6:47:09 AM VET
-- LVE Withholding
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53261 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Aug 9, 2013 6:47:11 AM VET
-- LVE Withholding
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53262,50020,0,56052,0,19,52056,TO_DATE('2013-08-09 06:47:09','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Withholding Type',26,TO_DATE('2013-08-09 06:47:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 9, 2013 6:47:11 AM VET
-- LVE Withholding
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53262 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Aug 9, 2013 6:47:12 AM VET
-- LVE Withholding
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53263,50020,0,56053,0,19,52057,TO_DATE('2013-08-09 06:47:11','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Withholding',27,TO_DATE('2013-08-09 06:47:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 9, 2013 6:47:12 AM VET
-- LVE Withholding
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53263 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Aug 9, 2013 6:47:15 AM VET
-- LVE Withholding
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53264,50020,0,1143,0,20,52058,TO_DATE('2013-08-09 06:47:12','YYYY-MM-DD HH24:MI:SS'),100,'How you pay the invoice','ECA02','The Payment Rule indicates the method of invoice payment.','Y','N','N','N','N','N','N','Payment Rule',28,TO_DATE('2013-08-09 06:47:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 9, 2013 6:47:15 AM VET
-- LVE Withholding
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53264 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Aug 9, 2013 6:47:17 AM VET
-- LVE Withholding
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53265,50020,0,1063,0,18,190,52059,TO_DATE('2013-08-09 06:47:15','YYYY-MM-DD HH24:MI:SS'),100,'Sales Representative or Company Agent','ECA02','The Sales Representative indicates the Sales Rep for this Region.  Any Sales Rep must be a valid internal user.','Y','N','N','N','N','N','N','Sales Representative',29,TO_DATE('2013-08-09 06:47:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 9, 2013 6:47:17 AM VET
-- LVE Withholding
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53265 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Aug 9, 2013 6:47:19 AM VET
-- LVE Withholding
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (53266,50020,0,598,0,22,52060,TO_DATE('2013-08-09 06:47:17','YYYY-MM-DD HH24:MI:SS'),100,'Total of all document lines','ECA02','The Total amount displays the total of all lines in document currency','Y','N','N','N','N','N','N','Total Lines',30,TO_DATE('2013-08-09 06:47:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 9, 2013 6:47:19 AM VET
-- LVE Withholding
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=53266 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Aug 9, 2013 6:47:53 AM VET
-- LVE Withholding
UPDATE AD_Browse_Trl SET Name='Declarar Retenciones',Description='Declarar Retenciones',Help='Declarar Retenciones Pendiente',Updated=TO_DATE('2013-08-09 06:47:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50020 AND AD_Language='es_MX'
;

-- Aug 9, 2013 6:48:05 AM VET
-- LVE Withholding
UPDATE AD_Browse_Trl SET Name='Declarar Retenciones',Description='Declarar Retenciones',Help='Declarar Retenciones Pendientes',Updated=TO_DATE('2013-08-09 06:48:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50020 AND AD_Language='es_VE'
;

-- Aug 9, 2013 6:50:20 AM VET
-- LVE Withholding
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-08-09 06:50:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53246
;

-- Aug 9, 2013 6:50:20 AM VET
-- LVE Withholding
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-08-09 06:50:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53247
;

-- Aug 9, 2013 6:50:20 AM VET
-- LVE Withholding
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-08-09 06:50:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53250
;

-- Aug 9, 2013 6:50:20 AM VET
-- LVE Withholding
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-08-09 06:50:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53252
;

-- Aug 9, 2013 6:50:20 AM VET
-- LVE Withholding
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-08-09 06:50:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53254
;

-- Aug 9, 2013 6:50:20 AM VET
-- LVE Withholding
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-08-09 06:50:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53257
;

-- Aug 9, 2013 6:50:20 AM VET
-- LVE Withholding
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-08-09 06:50:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53258
;

-- Aug 9, 2013 6:50:20 AM VET
-- LVE Withholding
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-08-09 06:50:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53261
;

-- Aug 9, 2013 6:50:20 AM VET
-- LVE Withholding
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-08-09 06:50:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53264
;

-- Aug 9, 2013 6:50:21 AM VET
-- LVE Withholding
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-08-09 06:50:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53265
;

-- Aug 9, 2013 6:50:21 AM VET
-- LVE Withholding
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-08-09 06:50:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53266
;

-- Aug 9, 2013 6:50:21 AM VET
-- LVE Withholding
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=10,Updated=TO_DATE('2013-08-09 06:50:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53253
;

-- Aug 9, 2013 6:50:21 AM VET
-- LVE Withholding
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=20,Updated=TO_DATE('2013-08-09 06:50:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53248
;

-- Aug 9, 2013 6:50:21 AM VET
-- LVE Withholding
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=30,Updated=TO_DATE('2013-08-09 06:50:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53249
;

-- Aug 9, 2013 6:50:21 AM VET
-- LVE Withholding
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_DATE('2013-08-09 06:50:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53259
;

-- Aug 9, 2013 6:50:21 AM VET
-- LVE Withholding
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_DATE('2013-08-09 06:50:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53262
;

-- Aug 9, 2013 6:50:21 AM VET
-- LVE Withholding
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_DATE('2013-08-09 06:50:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53263
;

-- Aug 9, 2013 6:50:21 AM VET
-- LVE Withholding
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_DATE('2013-08-09 06:50:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53260
;

-- Aug 9, 2013 6:50:22 AM VET
-- LVE Withholding
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_DATE('2013-08-09 06:50:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53255
;

-- Aug 9, 2013 6:50:22 AM VET
-- LVE Withholding
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_DATE('2013-08-09 06:50:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53256
;

-- Aug 9, 2013 6:50:22 AM VET
-- LVE Withholding
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_DATE('2013-08-09 06:50:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53251
;

-- Aug 9, 2013 6:52:13 AM VET
-- LVE Withholding
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_DATE('2013-08-09 06:52:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53251
;

-- Aug 9, 2013 6:52:13 AM VET
-- LVE Withholding
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_DATE('2013-08-09 06:52:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53255
;

-- Aug 9, 2013 6:52:13 AM VET
-- LVE Withholding
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_DATE('2013-08-09 06:52:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53262
;

-- Aug 9, 2013 6:52:13 AM VET
-- LVE Withholding
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_DATE('2013-08-09 06:52:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53263
;

-- Aug 9, 2013 6:52:13 AM VET
-- LVE Withholding
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_DATE('2013-08-09 06:52:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53256
;

-- Aug 9, 2013 6:52:37 AM VET
-- LVE Withholding
UPDATE AD_Browse_Field SET IsOrderBy='Y', SortNo=10,Updated=TO_DATE('2013-08-09 06:52:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53255
;

-- Aug 9, 2013 6:52:37 AM VET
-- LVE Withholding
UPDATE AD_Browse_Field SET IsOrderBy='Y', SortNo=20,Updated=TO_DATE('2013-08-09 06:52:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53248
;

-- Aug 9, 2013 6:52:37 AM VET
-- LVE Withholding
UPDATE AD_Browse_Field SET IsOrderBy='Y', SortNo=30,Updated=TO_DATE('2013-08-09 06:52:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53259
;

-- Aug 9, 2013 6:52:55 AM VET
-- LVE Withholding
UPDATE AD_Browse_Field SET IsIdentifier='Y', IsKey='Y',Updated=TO_DATE('2013-08-09 06:52:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53253
;

-- Aug 9, 2013 6:53:24 AM VET
-- LVE Withholding
UPDATE AD_Browse_Field SET IsQueryCriteria='Y',Updated=TO_DATE('2013-08-09 06:53:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53248
;

-- Aug 9, 2013 6:53:57 AM VET
-- LVE Withholding
UPDATE AD_Browse_Field SET IsQueryCriteria='Y',Updated=TO_DATE('2013-08-09 06:53:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53251
;

-- Aug 9, 2013 6:54:21 AM VET
-- LVE Withholding
UPDATE AD_Browse_Field SET IsQueryCriteria='Y', IsRange='Y',Updated=TO_DATE('2013-08-09 06:54:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53255
;

-- Aug 9, 2013 6:54:38 AM VET
-- LVE Withholding
UPDATE AD_Browse_Field SET IsDisplayed='N', IsMandatory='Y', IsQueryCriteria='Y',Updated=TO_DATE('2013-08-09 06:54:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53262
;

-- Aug 9, 2013 6:54:43 AM VET
-- LVE Withholding
UPDATE AD_Browse_Field SET IsDisplayed='N', IsQueryCriteria='Y',Updated=TO_DATE('2013-08-09 06:54:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53263
;

-- Aug 9, 2013 6:54:59 AM VET
-- LVE Withholding
UPDATE AD_Browse_Field SET IsQueryCriteria='Y',Updated=TO_DATE('2013-08-09 06:54:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53256
;

-- Aug 9, 2013 6:55:11 AM VET
-- LVE Withholding
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-08-09 06:55:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53262
;

-- Aug 9, 2013 6:55:11 AM VET
-- LVE Withholding
UPDATE AD_Browse_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_DATE('2013-08-09 06:55:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53263
;

-- Aug 9, 2013 6:55:11 AM VET
-- LVE Withholding
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_DATE('2013-08-09 06:55:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53256
;

-- Aug 9, 2013 6:55:11 AM VET
-- LVE Withholding
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_DATE('2013-08-09 06:55:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53255
;

-- Aug 9, 2013 6:55:11 AM VET
-- LVE Withholding
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_DATE('2013-08-09 06:55:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53260
;

-- Aug 9, 2013 6:56:06 AM VET
-- LVE Withholding
INSERT INTO AD_Menu (Action,AD_Browse_ID,AD_Client_ID,AD_Menu_ID,AD_Org_ID,Created,CreatedBy,Description,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('S',50020,0,53585,0,TO_DATE('2013-08-09 06:56:05','YYYY-MM-DD HH24:MI:SS'),100,'Declare Retentions','ECA02','Y','Y','N','N','N','Declare Retentions',TO_DATE('2013-08-09 06:56:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 9, 2013 6:56:06 AM VET
-- LVE Withholding
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=53585 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- Aug 9, 2013 6:56:07 AM VET
-- LVE Withholding
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID,AD_Tree_ID,Created,CreatedBy,IsActive,Node_ID,Parent_ID,SeqNo,Updated,UpdatedBy) VALUES (0,0,10,TO_DATE('2013-08-09 06:56:06','YYYY-MM-DD HH24:MI:SS'),100,'Y',53585,0,999,TO_DATE('2013-08-09 06:56:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 9, 2013 6:56:10 AM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=0,Updated=TO_DATE('2013-08-09 06:56:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53585
;

-- Aug 9, 2013 6:56:10 AM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=1,Updated=TO_DATE('2013-08-09 06:56:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53584
;

-- Aug 9, 2013 6:56:10 AM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=2,Updated=TO_DATE('2013-08-09 06:56:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53583
;

-- Aug 9, 2013 6:56:10 AM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=3,Updated=TO_DATE('2013-08-09 06:56:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53582
;

-- Aug 9, 2013 6:56:10 AM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=4,Updated=TO_DATE('2013-08-09 06:56:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53579
;

-- Aug 9, 2013 6:56:10 AM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=5,Updated=TO_DATE('2013-08-09 06:56:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53578
;

-- Aug 9, 2013 6:56:10 AM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=6,Updated=TO_DATE('2013-08-09 06:56:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53577
;

-- Aug 9, 2013 6:56:10 AM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=7,Updated=TO_DATE('2013-08-09 06:56:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53574
;

-- Aug 9, 2013 6:56:10 AM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=8,Updated=TO_DATE('2013-08-09 06:56:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53573
;

-- Aug 9, 2013 6:56:16 AM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=4,Updated=TO_DATE('2013-08-09 06:56:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53585
;

-- Aug 9, 2013 6:56:16 AM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=5,Updated=TO_DATE('2013-08-09 06:56:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53579
;

-- Aug 9, 2013 6:56:16 AM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=6,Updated=TO_DATE('2013-08-09 06:56:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53578
;

-- Aug 9, 2013 6:56:16 AM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=7,Updated=TO_DATE('2013-08-09 06:56:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53577
;

-- Aug 9, 2013 6:56:16 AM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=8,Updated=TO_DATE('2013-08-09 06:56:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53574
;

-- Aug 9, 2013 6:56:17 AM VET
-- LVE Withholding
UPDATE AD_TreeNodeMM SET Parent_ID=53572, SeqNo=9,Updated=TO_DATE('2013-08-09 06:56:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tree_ID=10 AND Node_ID=53573
;

-- Aug 9, 2013 6:56:57 AM VET
-- LVE Withholding
UPDATE AD_Browse SET Description='Declare Withholding', Name='Declare Withholding', Value='DeclareWithholding',Updated=TO_DATE('2013-08-09 06:56:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50020
;

-- Aug 9, 2013 6:56:57 AM VET
-- LVE Withholding
UPDATE AD_Browse_Trl SET IsTranslated='N' WHERE AD_Browse_ID=50020
;

-- Aug 9, 2013 6:57:42 AM VET
-- LVE Withholding
UPDATE AD_Browse SET Description='Declare Withholdings', Name='Declare Withholdings', Value='DeclareWithholdings',Updated=TO_DATE('2013-08-09 06:57:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_ID=50020
;

-- Aug 9, 2013 6:57:42 AM VET
-- LVE Withholding
UPDATE AD_Browse_Trl SET IsTranslated='N' WHERE AD_Browse_ID=50020
;

-- Aug 9, 2013 6:58:04 AM VET
-- LVE Withholding
UPDATE AD_Menu SET Description='Declare Withholdings', Name='Declare Withholdings',Updated=TO_DATE('2013-08-09 06:58:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53585
;

-- Aug 9, 2013 6:58:04 AM VET
-- LVE Withholding
UPDATE AD_Menu_Trl SET IsTranslated='N' WHERE AD_Menu_ID=53585
;

-- Aug 9, 2013 6:58:24 AM VET
-- LVE Withholding
UPDATE AD_Menu_Trl SET Name='Declarar Retenciones',Description='Declarar Retenciones',Updated=TO_DATE('2013-08-09 06:58:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53585 AND AD_Language='es_MX'
;

-- Aug 9, 2013 6:58:30 AM VET
-- LVE Withholding
UPDATE AD_Menu_Trl SET Name='Declarar Retenciones',Description='Declarar Retenciones',Updated=TO_DATE('2013-08-09 06:58:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53585 AND AD_Language='es_VE'
;

-- Aug 9, 2013 9:18:36 AM VET
-- LVE Withholding
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,Description,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,52176,'LVE_WH_Type_ID=@LVE_WH_Type_ID@',TO_DATE('2013-08-09 09:18:31','YYYY-MM-DD HH24:MI:SS'),100,'Restrict Withholding for Withholding Type','ECA02','Y','WithHolding_WH_Type','S',TO_DATE('2013-08-09 09:18:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 9, 2013 9:19:06 AM VET
-- LVE Withholding
UPDATE AD_Browse_Field SET AD_Val_Rule_ID=52176,Updated=TO_DATE('2013-08-09 09:19:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53263
;

-- Aug 9, 2013 9:31:07 AM VET
-- LVE Withholding
UPDATE AD_Browse_Field SET IsQueryCriteria='N',Updated=TO_DATE('2013-08-09 09:31:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53263
;

-- Aug 9, 2013 9:35:33 AM VET
-- LVE Withholding
UPDATE AD_Column SET AD_Reference_ID=15,Updated=TO_DATE('2013-08-09 09:35:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66624
;

-- Aug 9, 2013 9:35:42 AM VET
-- LVE Withholding
UPDATE AD_Column SET AD_Reference_ID=15,Updated=TO_DATE('2013-08-09 09:35:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66623
;

-- Aug 9, 2013 9:54:34 AM VET
-- LVE Withholding
UPDATE AD_Browse_Field SET AD_Reference_ID=15,Updated=TO_DATE('2013-08-09 09:54:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53256
;

-- Aug 9, 2013 9:54:50 AM VET
-- LVE Withholding
UPDATE AD_Browse_Field SET AD_Reference_ID=15,Updated=TO_DATE('2013-08-09 09:54:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=53255
;

