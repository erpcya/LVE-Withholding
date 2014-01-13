-- Aug 6, 2013 1:55:43 PM VET
-- LVE Withholding
INSERT INTO AD_Table (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Table_ID,CopyColumnsFromTable,Created,CreatedBy,EntityType,ImportTable,IsActive,IsCentrallyMaintained,IsChangeLog,IsDeleteable,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,UpdatedBy) VALUES ('3',0,0,53546,'N',TO_DATE('2013-08-06 13:55:37','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','N','Y','Y','N','N','N','N','Y',0,'LVE Declaration','L','LVE_RV_Declaration',TO_DATE('2013-08-06 13:55:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 6, 2013 1:55:44 PM VET
-- LVE Withholding
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=53546 AND NOT EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Table_ID=t.AD_Table_ID)
;

-- Aug 6, 2013 1:55:44 PM VET
-- LVE Withholding
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,53662,TO_DATE('2013-08-06 13:55:44','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table LVE_RV_Declaration',1,'Y','N','Y','Y','LVE_RV_Declaration','N',1000000,TO_DATE('2013-08-06 13:55:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 6, 2013 1:56:00 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66582,102,0,19,53546,'AD_Client_ID',TO_DATE('2013-08-06 13:55:59','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','ECA02',10,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','N','N','N','N','N','N','N','N','N','Client',TO_DATE('2013-08-06 13:55:59','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 6, 2013 1:56:00 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66582 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 6, 2013 1:56:01 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66583,113,0,19,53546,'AD_Org_ID',TO_DATE('2013-08-06 13:56:00','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02',10,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','N','N','N','N','N','N','N','N','N','Organization',TO_DATE('2013-08-06 13:56:00','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 6, 2013 1:56:01 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66583 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 6, 2013 1:56:02 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66584,1008,0,19,53546,'C_Invoice_ID',TO_DATE('2013-08-06 13:56:01','YYYY-MM-DD HH24:MI:SS'),100,'Invoice Identifier','ECA02',10,'The Invoice Document.','Y','N','N','N','N','N','N','N','N','N','Invoice',TO_DATE('2013-08-06 13:56:01','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 6, 2013 1:56:02 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66584 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 6, 2013 1:56:03 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66585,56067,0,19,53546,'DocAffected_ID',TO_DATE('2013-08-06 13:56:02','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','N','N','N','N','N','N','N','N','N','Doc Affected',TO_DATE('2013-08-06 13:56:02','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 6, 2013 1:56:03 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66585 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 6, 2013 1:56:03 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66586,590,0,10,53546,'TaxID',TO_DATE('2013-08-06 13:56:03','YYYY-MM-DD HH24:MI:SS'),100,'Tax Identification','ECA02',20,'The Tax ID field identifies the legal Identification number of this Entity.','Y','N','N','N','N','N','N','N','N','N','Tax ID',TO_DATE('2013-08-06 13:56:03','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 6, 2013 1:56:03 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66586 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 6, 2013 1:56:04 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66587,56093,0,10,53546,'DocTypeDeclare',TO_DATE('2013-08-06 13:56:03','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',2,'Y','N','N','N','N','N','N','N','N','N','Doc Type Declare',TO_DATE('2013-08-06 13:56:03','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 6, 2013 1:56:04 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66587 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 6, 2013 1:56:05 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66588,620,0,10,53546,'Value',TO_DATE('2013-08-06 13:56:04','YYYY-MM-DD HH24:MI:SS'),100,'Search key for the record in the format required - must be unique','ECA02',40,'A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','N','N','N','N','N','N','N','N','N','Search Key',TO_DATE('2013-08-06 13:56:04','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 6, 2013 1:56:05 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66588 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 6, 2013 1:56:05 PM VET
-- LVE Withholding
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56094,0,'bctaxid',TO_DATE('2013-08-06 13:56:05','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','bctaxid','bctaxid',TO_DATE('2013-08-06 13:56:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 6, 2013 1:56:05 PM VET
-- LVE Withholding
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56094 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Aug 6, 2013 1:56:06 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66589,56094,0,10,53546,'bctaxid',TO_DATE('2013-08-06 13:56:05','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',20,'Y','N','N','N','N','N','N','N','N','N','bctaxid',TO_DATE('2013-08-06 13:56:05','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 6, 2013 1:56:06 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66589 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 6, 2013 1:56:07 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66590,290,0,10,53546,'DocumentNo',TO_DATE('2013-08-06 13:56:06','YYYY-MM-DD HH24:MI:SS'),100,'Document sequence number of the document','ECA02',30,'The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','N','N','N','N','N','N','N','N','N','Document No',TO_DATE('2013-08-06 13:56:06','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 6, 2013 1:56:07 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66590 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 6, 2013 1:56:07 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66591,56068,0,10,53546,'ControlNo',TO_DATE('2013-08-06 13:56:07','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',60,'Y','N','N','N','N','N','N','N','N','N','Control No',TO_DATE('2013-08-06 13:56:07','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 6, 2013 1:56:07 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66591 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 6, 2013 1:56:08 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66592,187,0,19,53546,'C_BPartner_ID',TO_DATE('2013-08-06 13:56:07','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02',10,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','N','N','N','N','N','N','N','N','N','Business Partner ',TO_DATE('2013-08-06 13:56:07','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 6, 2013 1:56:08 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66592 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 6, 2013 1:56:09 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66593,469,0,10,53546,'Name',TO_DATE('2013-08-06 13:56:08','YYYY-MM-DD HH24:MI:SS'),100,'Alphanumeric identifier of the entity','ECA02',60,'The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Y','N','N','Y','N','N','N','N','N','N','Name',1,TO_DATE('2013-08-06 13:56:08','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 6, 2013 1:56:09 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66593 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 6, 2013 1:56:09 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66594,263,0,16,53546,'DateAcct',TO_DATE('2013-08-06 13:56:09','YYYY-MM-DD HH24:MI:SS'),100,'Accounting Date','ECA02',29,'The Accounting Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.','Y','N','N','N','N','N','N','N','N','N','Account Date',TO_DATE('2013-08-06 13:56:09','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 6, 2013 1:56:09 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66594 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 6, 2013 1:56:10 PM VET
-- LVE Withholding
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56095,0,'withholdingno',TO_DATE('2013-08-06 13:56:09','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','withholdingno','withholdingno',TO_DATE('2013-08-06 13:56:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 6, 2013 1:56:10 PM VET
-- LVE Withholding
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56095 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Aug 6, 2013 1:56:10 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66595,56095,0,10,53546,'withholdingno',TO_DATE('2013-08-06 13:56:09','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',30,'Y','N','N','N','N','N','N','N','N','N','withholdingno',TO_DATE('2013-08-06 13:56:09','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 6, 2013 1:56:10 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66595 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 6, 2013 1:56:11 PM VET
-- LVE Withholding
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56096,0,'riforg',TO_DATE('2013-08-06 13:56:10','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','riforg','riforg',TO_DATE('2013-08-06 13:56:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 6, 2013 1:56:11 PM VET
-- LVE Withholding
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56096 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Aug 6, 2013 1:56:11 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66596,56096,0,10,53546,'riforg',TO_DATE('2013-08-06 13:56:10','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',40,'Y','N','N','N','N','N','N','N','N','N','riforg',TO_DATE('2013-08-06 13:56:10','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 6, 2013 1:56:11 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66596 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 6, 2013 1:56:12 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66597,267,0,16,53546,'DateInvoiced',TO_DATE('2013-08-06 13:56:11','YYYY-MM-DD HH24:MI:SS'),100,'Date printed on Invoice','ECA02',29,'The Date Invoice indicates the date printed on the invoice.','Y','N','N','N','N','N','N','N','N','N','Date Invoiced',TO_DATE('2013-08-06 13:56:11','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 6, 2013 1:56:12 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66597 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 6, 2013 1:56:13 PM VET
-- LVE Withholding
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56097,0,'totalex',TO_DATE('2013-08-06 13:56:12','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','totalex','totalex',TO_DATE('2013-08-06 13:56:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 6, 2013 1:56:13 PM VET
-- LVE Withholding
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56097 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Aug 6, 2013 1:56:19 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66598,56097,0,22,53546,'totalex',TO_DATE('2013-08-06 13:56:12','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',131089,'Y','N','N','N','N','N','N','N','N','N','totalex',TO_DATE('2013-08-06 13:56:12','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 6, 2013 1:56:19 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66598 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 6, 2013 1:56:20 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66599,316,0,22,53546,'GrandTotal',TO_DATE('2013-08-06 13:56:19','YYYY-MM-DD HH24:MI:SS'),100,'Total amount of document','ECA02',131089,'The Grand Total displays the total amount including Tax and Freight in document currency','Y','N','N','N','N','N','N','N','N','N','Grand Total',TO_DATE('2013-08-06 13:56:19','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 6, 2013 1:56:20 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66599 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 6, 2013 1:56:20 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66600,1134,0,12,53546,'TaxBaseAmt',TO_DATE('2013-08-06 13:56:20','YYYY-MM-DD HH24:MI:SS'),100,'Base for calculating the tax amount','ECA02',131089,'The Tax Base Amount indicates the base amount used for calculating the tax amount.','Y','N','N','N','N','N','N','N','N','N','Tax base Amount',TO_DATE('2013-08-06 13:56:20','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 6, 2013 1:56:20 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66600 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 6, 2013 1:56:21 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66601,441,0,12,53546,'LineNetAmt',TO_DATE('2013-08-06 13:56:20','YYYY-MM-DD HH24:MI:SS'),100,'Line Extended Amount (Quantity * Actual Price) without Freight and Charges','ECA02',131089,'Indicates the extended line amount based on the quantity and the actual price.  Any additional charges or freight are not included.  The Amount may or may not include tax.  If the price list is inclusive tax, the line amount is the same as the line total.','Y','N','N','N','N','N','N','N','N','N','Line Amount',TO_DATE('2013-08-06 13:56:20','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 6, 2013 1:56:21 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66601 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 6, 2013 1:56:21 PM VET
-- LVE Withholding
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56098,0,'affecteddocumentno',TO_DATE('2013-08-06 13:56:21','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','affecteddocumentno','affecteddocumentno',TO_DATE('2013-08-06 13:56:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 6, 2013 1:56:21 PM VET
-- LVE Withholding
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56098 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Aug 6, 2013 1:56:22 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66602,56098,0,10,53546,'affecteddocumentno',TO_DATE('2013-08-06 13:56:21','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',30,'Y','N','N','N','N','N','N','N','N','N','affecteddocumentno',TO_DATE('2013-08-06 13:56:21','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 6, 2013 1:56:22 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66602 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 6, 2013 1:56:23 PM VET
-- LVE Withholding
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56099,0,'retentionno',TO_DATE('2013-08-06 13:56:22','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','retentionno','retentionno',TO_DATE('2013-08-06 13:56:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 6, 2013 1:56:23 PM VET
-- LVE Withholding
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56099 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Aug 6, 2013 1:56:23 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66603,56099,0,10,53546,'retentionno',TO_DATE('2013-08-06 13:56:22','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',30,'Y','N','N','N','N','N','N','N','N','N','retentionno',TO_DATE('2013-08-06 13:56:22','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 6, 2013 1:56:23 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66603 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 6, 2013 1:56:24 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66604,534,0,22,53546,'Rate',TO_DATE('2013-08-06 13:56:23','YYYY-MM-DD HH24:MI:SS'),100,'Rate or Tax or Exchange','ECA02',131089,'The Rate indicates the percentage to be multiplied by the source to arrive at the tax or exchange amount.','Y','N','N','N','N','N','N','N','N','N','Rate',TO_DATE('2013-08-06 13:56:23','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 6, 2013 1:56:24 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66604 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 6, 2013 1:56:25 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66605,1133,0,12,53546,'TaxAmt',TO_DATE('2013-08-06 13:56:24','YYYY-MM-DD HH24:MI:SS'),100,'Tax Amount for a document','ECA02',131089,'The Tax Amount displays the total tax amount for a document.','Y','N','N','N','N','N','N','N','N','N','Tax Amount',TO_DATE('2013-08-06 13:56:24','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 6, 2013 1:56:25 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66605 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 6, 2013 1:56:26 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66606,598,0,22,53546,'TotalLines',TO_DATE('2013-08-06 13:56:25','YYYY-MM-DD HH24:MI:SS'),100,'Total of all document lines','ECA02',131089,'The Total amount displays the total of all lines in document currency','Y','N','N','N','N','N','N','N','N','N','Total Lines',TO_DATE('2013-08-06 13:56:25','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 6, 2013 1:56:26 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66606 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 6, 2013 1:58:20 PM VET
-- LVE Withholding
UPDATE AD_Element SET ColumnName='AffectedDocumentNo', Name='No Document Affected', PrintName='No Document Affected',Updated=TO_DATE('2013-08-06 13:58:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56098
;

-- Aug 6, 2013 1:58:20 PM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56098
;

-- Aug 6, 2013 1:58:20 PM VET
-- LVE Withholding
UPDATE AD_Column SET ColumnName='AffectedDocumentNo', Name='No Document Affected', Description=NULL, Help=NULL WHERE AD_Element_ID=56098
;

-- Aug 6, 2013 1:58:20 PM VET
-- LVE Withholding
UPDATE AD_Process_Para SET ColumnName='AffectedDocumentNo', Name='No Document Affected', Description=NULL, Help=NULL, AD_Element_ID=56098 WHERE UPPER(ColumnName)='AFFECTEDDOCUMENTNO' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Aug 6, 2013 1:58:20 PM VET
-- LVE Withholding
UPDATE AD_Process_Para SET ColumnName='AffectedDocumentNo', Name='No Document Affected', Description=NULL, Help=NULL WHERE AD_Element_ID=56098 AND IsCentrallyMaintained='Y'
;

-- Aug 6, 2013 1:58:20 PM VET
-- LVE Withholding
UPDATE AD_Field SET Name='No Document Affected', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=56098) AND IsCentrallyMaintained='Y'
;

-- Aug 6, 2013 1:58:20 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem pi SET PrintName='No Document Affected', Name='No Document Affected' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=56098)
;

-- Aug 6, 2013 1:58:42 PM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='No. Doc. Afectado',PrintName='No. Doc. Afectado',Updated=TO_DATE('2013-08-06 13:58:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56098 AND AD_Language='es_MX'
;

-- Aug 6, 2013 2:09:04 PM VET
-- LVE Withholding
UPDATE AD_Element SET ColumnName='NoWithholding', Name='No Withholding', PrintName='No Withholding',Updated=TO_DATE('2013-08-06 14:09:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56099
;

-- Aug 6, 2013 2:09:04 PM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56099
;

-- Aug 6, 2013 2:09:04 PM VET
-- LVE Withholding
UPDATE AD_Column SET ColumnName='NoWithholding', Name='No Withholding', Description=NULL, Help=NULL WHERE AD_Element_ID=56099
;

-- Aug 6, 2013 2:09:04 PM VET
-- LVE Withholding
UPDATE AD_Process_Para SET ColumnName='NoWithholding', Name='No Withholding', Description=NULL, Help=NULL, AD_Element_ID=56099 WHERE UPPER(ColumnName)='NOWITHHOLDING' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Aug 6, 2013 2:09:04 PM VET
-- LVE Withholding
UPDATE AD_Process_Para SET ColumnName='NoWithholding', Name='No Withholding', Description=NULL, Help=NULL WHERE AD_Element_ID=56099 AND IsCentrallyMaintained='Y'
;

-- Aug 6, 2013 2:09:04 PM VET
-- LVE Withholding
UPDATE AD_Field SET Name='No Withholding', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=56099) AND IsCentrallyMaintained='Y'
;

-- Aug 6, 2013 2:09:04 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem pi SET PrintName='No Withholding', Name='No Withholding' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=56099)
;

-- Aug 6, 2013 2:09:17 PM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='No Retencion',PrintName='No Retencion',Updated=TO_DATE('2013-08-06 14:09:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56099 AND AD_Language='es_MX'
;

-- Aug 6, 2013 2:11:07 PM VET
-- LVE Withholding
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=66603
;

-- Aug 6, 2013 2:11:07 PM VET
-- LVE Withholding
DELETE FROM AD_Column WHERE AD_Column_ID=66603
;

-- Aug 6, 2013 2:11:13 PM VET
-- LVE Withholding
DELETE  FROM  AD_Element_Trl WHERE AD_Element_ID=56099
;

-- Aug 6, 2013 2:11:13 PM VET
-- LVE Withholding
DELETE FROM AD_Element WHERE AD_Element_ID=56099
;

-- Aug 6, 2013 2:11:49 PM VET
-- LVE Withholding
UPDATE AD_Element SET ColumnName='WithholdingNo', Name='Withholding No.', PrintName='Withholding No.',Updated=TO_DATE('2013-08-06 14:11:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56095
;

-- Aug 6, 2013 2:11:49 PM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56095
;

-- Aug 6, 2013 2:11:49 PM VET
-- LVE Withholding
UPDATE AD_Column SET ColumnName='WithholdingNo', Name='Withholding No.', Description=NULL, Help=NULL WHERE AD_Element_ID=56095
;

-- Aug 6, 2013 2:11:49 PM VET
-- LVE Withholding
UPDATE AD_Process_Para SET ColumnName='WithholdingNo', Name='Withholding No.', Description=NULL, Help=NULL, AD_Element_ID=56095 WHERE UPPER(ColumnName)='WITHHOLDINGNO' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Aug 6, 2013 2:11:49 PM VET
-- LVE Withholding
UPDATE AD_Process_Para SET ColumnName='WithholdingNo', Name='Withholding No.', Description=NULL, Help=NULL WHERE AD_Element_ID=56095 AND IsCentrallyMaintained='Y'
;

-- Aug 6, 2013 2:11:49 PM VET
-- LVE Withholding
UPDATE AD_Field SET Name='Withholding No.', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=56095) AND IsCentrallyMaintained='Y'
;

-- Aug 6, 2013 2:11:50 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem pi SET PrintName='Withholding No.', Name='Withholding No.' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=56095)
;

-- Aug 6, 2013 2:13:20 PM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='No. Retencion',PrintName='No. Retencion',Updated=TO_DATE('2013-08-06 14:13:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56095 AND AD_Language='es_MX'
;

-- Aug 6, 2013 2:15:04 PM VET
-- LVE Withholding
UPDATE AD_Element SET ColumnName='TotalEx', Name='Total Ex', PrintName='Total Ex',Updated=TO_DATE('2013-08-06 14:15:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56097
;

-- Aug 6, 2013 2:15:04 PM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56097
;

-- Aug 6, 2013 2:15:04 PM VET
-- LVE Withholding
UPDATE AD_Column SET ColumnName='TotalEx', Name='Total Ex', Description=NULL, Help=NULL WHERE AD_Element_ID=56097
;

-- Aug 6, 2013 2:15:04 PM VET
-- LVE Withholding
UPDATE AD_Process_Para SET ColumnName='TotalEx', Name='Total Ex', Description=NULL, Help=NULL, AD_Element_ID=56097 WHERE UPPER(ColumnName)='TOTALEX' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Aug 6, 2013 2:15:04 PM VET
-- LVE Withholding
UPDATE AD_Process_Para SET ColumnName='TotalEx', Name='Total Ex', Description=NULL, Help=NULL WHERE AD_Element_ID=56097 AND IsCentrallyMaintained='Y'
;

-- Aug 6, 2013 2:15:04 PM VET
-- LVE Withholding
UPDATE AD_Field SET Name='Total Ex', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=56097) AND IsCentrallyMaintained='Y'
;

-- Aug 6, 2013 2:15:04 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem pi SET PrintName='Total Ex', Name='Total Ex' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=56097)
;

-- Aug 6, 2013 2:15:13 PM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='Tot. Exe.',PrintName='Tot. Exe.',Updated=TO_DATE('2013-08-06 14:15:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56097 AND AD_Language='es_MX'
;

-- Aug 6, 2013 2:24:50 PM VET
-- LVE Withholding
UPDATE AD_Element SET ColumnName='BusinessTax', Name='Business Tax', PrintName='Business Tax',Updated=TO_DATE('2013-08-06 14:24:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56094
;

-- Aug 6, 2013 2:24:50 PM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56094
;

-- Aug 6, 2013 2:24:50 PM VET
-- LVE Withholding
UPDATE AD_Column SET ColumnName='BusinessTax', Name='Business Tax', Description=NULL, Help=NULL WHERE AD_Element_ID=56094
;

-- Aug 6, 2013 2:24:50 PM VET
-- LVE Withholding
UPDATE AD_Process_Para SET ColumnName='BusinessTax', Name='Business Tax', Description=NULL, Help=NULL, AD_Element_ID=56094 WHERE UPPER(ColumnName)='BUSINESSTAX' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Aug 6, 2013 2:24:50 PM VET
-- LVE Withholding
UPDATE AD_Process_Para SET ColumnName='BusinessTax', Name='Business Tax', Description=NULL, Help=NULL WHERE AD_Element_ID=56094 AND IsCentrallyMaintained='Y'
;

-- Aug 6, 2013 2:24:50 PM VET
-- LVE Withholding
UPDATE AD_Field SET Name='Business Tax', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=56094) AND IsCentrallyMaintained='Y'
;

-- Aug 6, 2013 2:24:50 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem pi SET PrintName='Business Tax', Name='Business Tax' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=56094)
;

-- Aug 6, 2013 2:26:16 PM VET
-- LVE Withholding
UPDATE AD_Element SET ColumnName='BusinessTaxID', Name='Business Tax ID', PrintName='Business Tax ID',Updated=TO_DATE('2013-08-06 14:26:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56094
;

-- Aug 6, 2013 2:26:16 PM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=56094
;

-- Aug 6, 2013 2:26:16 PM VET
-- LVE Withholding
UPDATE AD_Column SET ColumnName='BusinessTaxID', Name='Business Tax ID', Description=NULL, Help=NULL WHERE AD_Element_ID=56094
;

-- Aug 6, 2013 2:26:16 PM VET
-- LVE Withholding
UPDATE AD_Process_Para SET ColumnName='BusinessTaxID', Name='Business Tax ID', Description=NULL, Help=NULL, AD_Element_ID=56094 WHERE UPPER(ColumnName)='BUSINESSTAXID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Aug 6, 2013 2:26:16 PM VET
-- LVE Withholding
UPDATE AD_Process_Para SET ColumnName='BusinessTaxID', Name='Business Tax ID', Description=NULL, Help=NULL WHERE AD_Element_ID=56094 AND IsCentrallyMaintained='Y'
;

-- Aug 6, 2013 2:26:16 PM VET
-- LVE Withholding
UPDATE AD_Field SET Name='Business Tax ID', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=56094) AND IsCentrallyMaintained='Y'
;

-- Aug 6, 2013 2:26:16 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem pi SET PrintName='Business Tax ID', Name='Business Tax ID' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=56094)
;

-- Aug 6, 2013 2:27:36 PM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='Socio del Negocio Tax ID',PrintName='Socio del Negocio Tax ID',Updated=TO_DATE('2013-08-06 14:27:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56094 AND AD_Language='es_MX'
;

-- Aug 6, 2013 2:28:34 PM VET
-- LVE Withholding
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56100,0,'RecordNumber',TO_DATE('2013-08-06 14:28:30','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Record Number','Record Number',TO_DATE('2013-08-06 14:28:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 6, 2013 2:28:34 PM VET
-- LVE Withholding
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56100 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Aug 6, 2013 2:29:01 PM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='Número del Registro',PrintName='Número del Registro',Updated=TO_DATE('2013-08-06 14:29:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56100 AND AD_Language='es_MX'
;

-- Aug 6, 2013 2:30:07 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66607,56100,0,22,53546,'RecordNumber','(0)',TO_DATE('2013-08-06 14:29:45','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',14,'Y','Y','N','N','N','N','N','N','N','N','N','N','N','Record Number',0,TO_DATE('2013-08-06 14:29:45','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 6, 2013 2:30:07 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66607 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 6, 2013 2:30:59 PM VET
-- LVE Withholding
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56101,0,'TaxPeriod',TO_DATE('2013-08-06 14:30:51','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Tax Period','Tax Period',TO_DATE('2013-08-06 14:30:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 6, 2013 2:30:59 PM VET
-- LVE Withholding
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56101 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Aug 6, 2013 2:31:28 PM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='Período Fiscal',PrintName='Período Fiscal',Updated=TO_DATE('2013-08-06 14:31:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56101 AND AD_Language='es_MX'
;

-- Aug 6, 2013 2:32:31 PM VET
-- LVE Withholding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66608,56101,0,12,53546,'TaxPeriod',TO_DATE('2013-08-06 14:32:24','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',14,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Tax Period',0,TO_DATE('2013-08-06 14:32:24','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 6, 2013 2:32:31 PM VET
-- LVE Withholding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66608 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 6, 2013 2:33:08 PM VET
-- LVE Withholding
UPDATE AD_Column SET ColumnSQL='(to_Char(LVE_RV_Declaration.DateAcct, ''YYYYMM''))', IsUpdateable='N',Updated=TO_DATE('2013-08-06 14:33:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66608
;

