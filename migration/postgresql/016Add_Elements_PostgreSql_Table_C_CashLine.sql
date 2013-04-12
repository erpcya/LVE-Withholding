-- 10/04/2013 05:06:12 PM VET
-- LVE Retention
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000236,1005,0,19,142,410,'C_Activity_ID',TO_TIMESTAMP('2013-04-10 17:06:11','YYYY-MM-DD HH24:MI:SS'),100,'Business Activity','ECA02',22,'Activities indicate tasks that are performed and used to utilize Activity based Costing','Y','Y','Y','N','N','N','N','N','N','N','N','N','Y','Activity',0,TO_TIMESTAMP('2013-04-10 17:06:11','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 10/04/2013 05:06:12 PM VET
-- LVE Retention
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000236 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 10/04/2013 05:07:07 PM VET
-- LVE Retention
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000237,835,0,19,410,'C_Bank_ID',TO_TIMESTAMP('2013-04-10 17:07:06','YYYY-MM-DD HH24:MI:SS'),100,'Bank','ECA02',22,'The Bank is a unique identifier of a Bank for this Organization or for a Business Partner with whom this Organization transacts.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Bank',0,TO_TIMESTAMP('2013-04-10 17:07:06','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 10/04/2013 05:07:07 PM VET
-- LVE Retention
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000237 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 10/04/2013 05:08:08 PM VET
-- LVE Retention
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000238,187,0,30,410,230,'C_BPartner_ID',TO_TIMESTAMP('2013-04-10 17:08:07','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02',22,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','N','N','N','N','N','N','N','N','N','N','N','Business Partner ',0,TO_TIMESTAMP('2013-04-10 17:08:07','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 10/04/2013 05:08:08 PM VET
-- LVE Retention
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000238 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 10/04/2013 05:08:35 PM VET
-- LVE Retention
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000239,213,0,19,410,'C_Tax_ID',TO_TIMESTAMP('2013-04-10 17:08:35','YYYY-MM-DD HH24:MI:SS'),100,'Tax identifier','ECA02',22,'The Tax indicates the type of tax used in document line.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Tax',0,TO_TIMESTAMP('2013-04-10 17:08:35','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 10/04/2013 05:08:35 PM VET
-- LVE Retention
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000239 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 10/04/2013 05:11:14 PM VET
-- LVE Retention
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000240,840,0,10,410,'AccountNo',TO_TIMESTAMP('2013-04-10 17:11:14','YYYY-MM-DD HH24:MI:SS'),100,'Account Number','ECA02',20,'The Account Number indicates the Number assigned to this bank account. ','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Account No',0,TO_TIMESTAMP('2013-04-10 17:11:14','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 10/04/2013 05:11:14 PM VET
-- LVE Retention
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000240 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 10/04/2013 05:12:54 PM VET
-- LVE Retention
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,Callout,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000241,1818,0,20,410,'org.erpca.model.CalloutCashJournal.WriteOff','IsOverUnderPayment',TO_TIMESTAMP('2013-04-10 17:12:54','YYYY-MM-DD HH24:MI:SS'),100,'Over-Payment (unallocated) or Under-Payment (partial payment)','ECA02',1,'Overpayments (negative) are unallocated amounts and allow you to receive money for more than the particular invoice. 
Underpayments (positive) is a partial payment for the invoice. You do not write off the unpaid amount.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Over/Under Payment',0,TO_TIMESTAMP('2013-04-10 17:12:54','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 10/04/2013 05:12:54 PM VET
-- LVE Retention
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000241 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 10/04/2013 05:13:53 PM VET
-- LVE Retention
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000242,1389,0,10,410,'CheckNo',TO_TIMESTAMP('2013-04-10 17:13:52','YYYY-MM-DD HH24:MI:SS'),100,'Check Number','ECA02',20,'The Check Number indicates the number on the check.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Check No',0,TO_TIMESTAMP('2013-04-10 17:13:52','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 10/04/2013 05:13:53 PM VET
-- LVE Retention
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000242 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 10/04/2013 05:19:48 PM VET
-- LVE Retention
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000243,540,0,10,410,'ReferenceNo',TO_TIMESTAMP('2013-04-10 17:19:48','YYYY-MM-DD HH24:MI:SS'),100,'Your customer or vendor number at the Business Partner''s site','ECA02',40,'The reference number can be printed on orders and invoices to allow your business partner to faster identify your records.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Reference No',0,TO_TIMESTAMP('2013-04-10 17:19:48','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 10/04/2013 05:19:48 PM VET
-- LVE Retention
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000243 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 10/04/2013 05:21:34 PM VET
-- LVE Retention
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,3000218,0,'AffectsBook',TO_TIMESTAMP('2013-04-10 17:21:34','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Affects Book','Affects Book',TO_TIMESTAMP('2013-04-10 17:21:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/04/2013 05:21:34 PM VET
-- LVE Retention
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=3000218 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 10/04/2013 05:21:44 PM VET
-- LVE Retention
UPDATE AD_Element_Trl SET Name='Afecta Libro',PrintName='Afecta Libro',Updated=TO_TIMESTAMP('2013-04-10 17:21:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=3000218 AND AD_Language='es_VE'
;

-- 10/04/2013 05:23:49 PM VET
-- LVE Retention
UPDATE AD_Element SET Description='Determine if it affects the buying and selling books',Updated=TO_TIMESTAMP('2013-04-10 17:23:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=3000218
;

-- 10/04/2013 05:23:49 PM VET
-- LVE Retention
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=3000218
;

-- 10/04/2013 05:23:49 PM VET
-- LVE Retention
UPDATE AD_Column SET ColumnName='AffectsBook', Name='Affects Book', Description='Determine if it affects the buying and selling books', Help=NULL WHERE AD_Element_ID=3000218
;

-- 10/04/2013 05:23:49 PM VET
-- LVE Retention
UPDATE AD_Process_Para SET ColumnName='AffectsBook', Name='Affects Book', Description='Determine if it affects the buying and selling books', Help=NULL, AD_Element_ID=3000218 WHERE UPPER(ColumnName)='AFFECTSBOOK' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 10/04/2013 05:23:49 PM VET
-- LVE Retention
UPDATE AD_Process_Para SET ColumnName='AffectsBook', Name='Affects Book', Description='Determine if it affects the buying and selling books', Help=NULL WHERE AD_Element_ID=3000218 AND IsCentrallyMaintained='Y'
;

-- 10/04/2013 05:23:49 PM VET
-- LVE Retention
UPDATE AD_Field SET Name='Affects Book', Description='Determine if it affects the buying and selling books', Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=3000218) AND IsCentrallyMaintained='Y'
;

-- 10/04/2013 05:23:56 PM VET
-- LVE Retention
UPDATE AD_Element_Trl SET Description='Determina si afecta los libros de compra y venta',Updated=TO_TIMESTAMP('2013-04-10 17:23:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=3000218 AND AD_Language='es_VE'
;

-- 10/04/2013 05:24:04 PM VET
-- LVE Retention
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,ReadOnlyLogic,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000244,3000218,0,20,410,'AffectsBook',TO_TIMESTAMP('2013-04-10 17:24:03','YYYY-MM-DD HH24:MI:SS'),100,'Determine if it affects the buying and selling books','ECA02',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Affects Book','''Y''',0,TO_TIMESTAMP('2013-04-10 17:24:03','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 10/04/2013 05:24:04 PM VET
-- LVE Retention
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000244 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 10/04/2013 05:24:21 PM VET
-- LVE Retention
UPDATE AD_Column SET DefaultValue='''Y''', ReadOnlyLogic=NULL,Updated=TO_TIMESTAMP('2013-04-10 17:24:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=3000244
;

-- 10/04/2013 05:28:37 PM VET
-- LVE Retention
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000245,265,0,15,410,'DateDoc',TO_TIMESTAMP('2013-04-10 17:28:36','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document','ECA02',7,'The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Document Date',0,TO_TIMESTAMP('2013-04-10 17:28:36','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 10/04/2013 05:28:37 PM VET
-- LVE Retention
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000245 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 10/04/2013 05:30:18 PM VET
-- LVE Retention
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000246,53498,0,12,410,'A_Base_Amount',TO_TIMESTAMP('2013-04-10 17:30:17','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',22,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Base Amount',0,TO_TIMESTAMP('2013-04-10 17:30:17','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 10/04/2013 05:30:18 PM VET
-- LVE Retention
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000246 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

--ControlNo
-- Apr 11, 2013 10:07:55 AM VET
-- LVE Retention
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000247,3000216,0,10,410,'ControlNo',TO_TIMESTAMP('2013-04-11 10:07:54','YYYY-MM-DD HH24:MI:SS'),100,'Control No for Physical Record','ECA02',15,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Control No',0,TO_TIMESTAMP('2013-04-11 10:07:54','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Apr 11, 2013 10:07:55 AM VET
-- LVE Retention
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000247 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

--Columna Virtual

-- Apr 11, 2013 10:09:40 AM VET
-- LVE Retention
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000248,1133,0,12,410,'TaxAmt','Case When C_CashLine.C_Tax_ID Is Null Then 0 Else (Select C_CashLine.XXMontoBase * (C_Tax.Rate / 100)  From C_Tax Where C_Tax.C_Tax_ID=C_CashLine.C_Tax_ID) End',TO_TIMESTAMP('2013-04-11 10:09:40','YYYY-MM-DD HH24:MI:SS'),100,'Tax Amount for a document','ECA02',22,'The Tax Amount displays the total tax amount for a document.','Y','Y','N','N','N','N','N','N','N','N','N','N','N','Tax Amount',0,TO_TIMESTAMP('2013-04-11 10:09:40','YYYY-MM-DD HH24:MI:SS'),100,0)
;


-- Apr 11, 2013 10:09:40 AM VET
-- LVE Retention
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000248 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Apr 11, 2013 10:10:48 AM VET
-- LVE Retention
UPDATE AD_Column SET ColumnSQL='Case When C_CashLine.C_Tax_ID Is Null Then 0 Else (Select C_CashLine.A_Base_Amount * (C_Tax.Rate / 100)  From C_Tax Where C_Tax.C_Tax_ID=C_CashLine.C_Tax_ID) End',Updated=TO_TIMESTAMP('2013-04-11 10:10:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=3000248
;
-- Apr 11, 2013 10:44:01 AM VET
-- LVE Retention
UPDATE AD_Column SET Callout='org.erpca.model.CalloutCashJournal.amounts', SeqNo=3,Updated=TO_TIMESTAMP('2013-04-11 10:44:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=5297
;

-- Apr 11, 2013 10:44:50 AM VET
-- LVE Retention
UPDATE AD_Column SET Callout='org.erpca.model.CalloutCashJournal.docType',Updated=TO_TIMESTAMP('2013-04-11 10:44:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=5294
;

