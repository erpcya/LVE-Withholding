-- Aug 17, 2013 11:04:25 AM VET
-- LVE Retention
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=68076
;

-- Aug 17, 2013 11:04:25 AM VET
-- LVE Retention
DELETE FROM AD_Field WHERE AD_Field_ID=68076
;

-- Aug 17, 2013 11:04:46 AM VET
-- LVE Retention
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=66401
;

-- Aug 17, 2013 11:04:46 AM VET
-- LVE Retention
DELETE FROM AD_Column WHERE AD_Column_ID=66401
;

-- Aug 17, 2013 4:36:58 PM VET
-- LVE WithHolding
INSERT INTO AD_Table (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Table_ID,CopyColumnsFromTable,Created,CreatedBy,EntityType,ImportTable,IsActive,IsCentrallyMaintained,IsChangeLog,IsDeleteable,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,UpdatedBy) VALUES ('3',0,0,53555,'N',TO_DATE('2013-08-17 16:36:55','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','N','Y','Y','N','N','N','N','Y',0,'WithHolding ISLR View','L','LVE_RV_WithHolding_ISLR',TO_DATE('2013-08-17 16:36:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 17, 2013 4:36:58 PM VET
-- LVE WithHolding
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=53555 AND NOT EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Table_ID=t.AD_Table_ID)
;

-- Aug 17, 2013 4:36:59 PM VET
-- LVE WithHolding
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,53681,TO_DATE('2013-08-17 16:36:58','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table LVE_RV_WithHolding_ISLR',1,'Y','N','Y','Y','LVE_RV_WithHolding_ISLR','N',1000000,TO_DATE('2013-08-17 16:36:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 17, 2013 4:37:09 PM VET
-- LVE WithHolding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66779,187,0,19,53555,'C_BPartner_ID',TO_DATE('2013-08-17 16:37:08','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02',10,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','N','N','N','N','N','N','N','N','N','Business Partner ',TO_DATE('2013-08-17 16:37:08','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 17, 2013 4:37:09 PM VET
-- LVE WithHolding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66779 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 17, 2013 4:37:10 PM VET
-- LVE WithHolding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66780,56053,0,19,53555,'LVE_Withholding_ID',TO_DATE('2013-08-17 16:37:09','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','N','N','N','N','N','N','N','N','N','Withholding',TO_DATE('2013-08-17 16:37:09','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 17, 2013 4:37:10 PM VET
-- LVE WithHolding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66780 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 17, 2013 4:37:10 PM VET
-- LVE WithHolding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66781,56058,0,19,53555,'LVE_WH_Combination_ID',TO_DATE('2013-08-17 16:37:10','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','N','N','N','N','N','N','N','N','N','Withholding Combination',TO_DATE('2013-08-17 16:37:10','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 17, 2013 4:37:10 PM VET
-- LVE WithHolding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66781 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 17, 2013 4:37:11 PM VET
-- LVE WithHolding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66782,56063,0,19,53555,'LVE_WH_Config_ID',TO_DATE('2013-08-17 16:37:10','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','N','N','N','N','N','N','N','N','N','Withholding Config',TO_DATE('2013-08-17 16:37:10','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 17, 2013 4:37:11 PM VET
-- LVE WithHolding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66782 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 17, 2013 4:37:11 PM VET
-- LVE WithHolding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66783,1008,0,19,53555,'C_Invoice_ID',TO_DATE('2013-08-17 16:37:11','YYYY-MM-DD HH24:MI:SS'),100,'Invoice Identifier','ECA02',10,'The Invoice Document.','Y','N','N','N','N','N','N','N','N','N','Invoice',TO_DATE('2013-08-17 16:37:11','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 17, 2013 4:37:11 PM VET
-- LVE WithHolding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66783 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 17, 2013 4:37:12 PM VET
-- LVE WithHolding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66784,968,0,19,53555,'C_Charge_ID',TO_DATE('2013-08-17 16:37:11','YYYY-MM-DD HH24:MI:SS'),100,'Additional document charges','ECA02',10,'The Charge indicates a type of Charge (Handling, Shipping, Restocking)','Y','N','N','N','N','N','N','N','N','N','Charge',TO_DATE('2013-08-17 16:37:11','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 17, 2013 4:37:12 PM VET
-- LVE WithHolding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66784 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 17, 2013 4:37:12 PM VET
-- LVE WithHolding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66785,56054,0,19,53555,'WithholdingDocType_ID',TO_DATE('2013-08-17 16:37:12','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','N','N','N','N','N','N','N','N','N','Withholding Doc Type',TO_DATE('2013-08-17 16:37:12','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 17, 2013 4:37:12 PM VET
-- LVE WithHolding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66785 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 17, 2013 4:37:13 PM VET
-- LVE WithHolding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66786,598,0,22,53555,'TotalLines',TO_DATE('2013-08-17 16:37:12','YYYY-MM-DD HH24:MI:SS'),100,'Total of all document lines','ECA02',131089,'The Total amount displays the total of all lines in document currency','Y','N','N','N','N','N','N','N','N','N','Total Lines',TO_DATE('2013-08-17 16:37:12','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 17, 2013 4:37:13 PM VET
-- LVE WithHolding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66786 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 17, 2013 4:37:14 PM VET
-- LVE WithHolding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66787,56120,0,22,53555,'TaxBaseRate',TO_DATE('2013-08-17 16:37:13','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',131089,'Y','N','N','N','N','N','N','N','N','N','Tax Base Rate',TO_DATE('2013-08-17 16:37:13','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 17, 2013 4:37:14 PM VET
-- LVE WithHolding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66787 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 17, 2013 4:37:14 PM VET
-- LVE WithHolding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66788,56060,0,22,53555,'Aliquot',TO_DATE('2013-08-17 16:37:14','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',131089,'Y','N','N','N','N','N','N','N','N','N','Aliquot',TO_DATE('2013-08-17 16:37:14','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 17, 2013 4:37:14 PM VET
-- LVE WithHolding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66788 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 17, 2013 4:37:15 PM VET
-- LVE WithHolding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66789,53400,0,22,53555,'MinValue',TO_DATE('2013-08-17 16:37:14','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',131089,'Y','N','N','N','N','N','N','N','N','N','Min Value',TO_DATE('2013-08-17 16:37:14','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 17, 2013 4:37:15 PM VET
-- LVE WithHolding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66789 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 17, 2013 4:37:15 PM VET
-- LVE WithHolding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66790,56065,0,22,53555,'Subtrahend',TO_DATE('2013-08-17 16:37:15','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',131089,'Y','N','N','N','N','N','N','N','N','N','Subtrahend',TO_DATE('2013-08-17 16:37:15','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 17, 2013 4:37:15 PM VET
-- LVE WithHolding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66790 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 17, 2013 4:37:16 PM VET
-- LVE WithHolding
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56122,0,'multiplierinv',TO_DATE('2013-08-17 16:37:15','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','multiplierinv','multiplierinv',TO_DATE('2013-08-17 16:37:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 17, 2013 4:37:16 PM VET
-- LVE WithHolding
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56122 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Aug 17, 2013 4:37:17 PM VET
-- LVE WithHolding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66791,56122,0,11,53555,'multiplierinv',TO_DATE('2013-08-17 16:37:15','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','N','N','N','N','N','N','N','N','N','multiplierinv',TO_DATE('2013-08-17 16:37:15','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 17, 2013 4:37:17 PM VET
-- LVE WithHolding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66791 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 17, 2013 4:37:19 PM VET
-- LVE WithHolding
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56123,0,'multiplierret',TO_DATE('2013-08-17 16:37:17','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','multiplierret','multiplierret',TO_DATE('2013-08-17 16:37:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 17, 2013 4:37:19 PM VET
-- LVE WithHolding
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56123 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Aug 17, 2013 4:37:19 PM VET
-- LVE WithHolding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66792,56123,0,11,53555,'multiplierret',TO_DATE('2013-08-17 16:37:17','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','N','N','N','N','N','N','N','N','N','multiplierret',TO_DATE('2013-08-17 16:37:17','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 17, 2013 4:37:19 PM VET
-- LVE WithHolding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66792 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 17, 2013 4:37:20 PM VET
-- LVE WithHolding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66793,263,0,16,53555,'DateAcct',TO_DATE('2013-08-17 16:37:19','YYYY-MM-DD HH24:MI:SS'),100,'Accounting Date','ECA02',29,'The Accounting Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.','Y','N','N','N','N','N','N','N','N','N','Account Date',TO_DATE('2013-08-17 16:37:19','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 17, 2013 4:37:20 PM VET
-- LVE WithHolding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66793 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 17, 2013 4:37:21 PM VET
-- LVE WithHolding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66794,56052,0,19,53555,'LVE_WH_Type_ID',TO_DATE('2013-08-17 16:37:20','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','N','N','N','N','N','N','N','N','N','Withholding Type',TO_DATE('2013-08-17 16:37:20','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 17, 2013 4:37:21 PM VET
-- LVE WithHolding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66794 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 17, 2013 4:37:22 PM VET
-- LVE WithHolding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66795,102,0,19,53555,'AD_Client_ID',TO_DATE('2013-08-17 16:37:21','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','ECA02',10,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','N','N','N','N','N','N','N','N','N','Client',TO_DATE('2013-08-17 16:37:21','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 17, 2013 4:37:22 PM VET
-- LVE WithHolding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66795 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 17, 2013 4:37:23 PM VET
-- LVE WithHolding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66796,113,0,19,53555,'AD_Org_ID',TO_DATE('2013-08-17 16:37:22','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02',10,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','N','N','N','N','N','N','N','N','N','Organization',TO_DATE('2013-08-17 16:37:22','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 17, 2013 4:37:23 PM VET
-- LVE WithHolding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66796 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 17, 2013 4:37:24 PM VET
-- LVE WithHolding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66797,53332,0,19,53555,'AD_Rule_ID',TO_DATE('2013-08-17 16:37:23','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','N','N','N','N','N','N','N','N','N','Rule',TO_DATE('2013-08-17 16:37:23','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 17, 2013 4:37:24 PM VET
-- LVE WithHolding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66797 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 17, 2013 4:40:46 PM VET
-- LVE WithHolding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66798,1133,0,12,53555,'TaxAmt',TO_DATE('2013-08-17 16:40:44','YYYY-MM-DD HH24:MI:SS'),100,'Tax Amount for a document','ECA02',10,'The Tax Amount displays the total tax amount for a document.','Y','N','N','N','N','N','N','N','N','N','Tax Amount',TO_DATE('2013-08-17 16:40:44','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 17, 2013 4:40:46 PM VET
-- LVE WithHolding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66798 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 17, 2013 4:40:47 PM VET
-- LVE WithHolding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66799,53399,0,22,53555,'MaxValue',TO_DATE('2013-08-17 16:40:46','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',131089,'Y','N','N','N','N','N','N','N','N','N','Max Value',TO_DATE('2013-08-17 16:40:46','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 17, 2013 4:40:47 PM VET
-- LVE WithHolding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66799 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 19, 2013 12:18:03 AM VET
-- LVE WithHolding
DELETE  FROM  AD_Element_Trl WHERE AD_Element_ID=56122
;

-- Aug 19, 2013 12:18:03 AM VET
-- LVE WithHolding
DELETE FROM AD_Element WHERE AD_Element_ID=56122
;

-- Aug 19, 2013 12:18:19 AM VET
-- LVE WithHolding
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=66791
;

-- Aug 19, 2013 12:18:19 AM VET
-- LVE WithHolding
DELETE FROM AD_Column WHERE AD_Column_ID=66791
;

-- Aug 19, 2013 12:18:23 AM VET
-- LVE WithHolding
DELETE  FROM  AD_Element_Trl WHERE AD_Element_ID=56122
;

-- Aug 19, 2013 12:18:23 AM VET
-- LVE WithHolding
DELETE FROM AD_Element WHERE AD_Element_ID=56122
;

-- Aug 19, 2013 12:18:37 AM VET
-- LVE WithHolding
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=66792
;

-- Aug 19, 2013 12:18:37 AM VET
-- LVE WithHolding
DELETE FROM AD_Column WHERE AD_Column_ID=66792
;

-- Aug 19, 2013 12:18:40 AM VET
-- LVE WithHolding
DELETE  FROM  AD_Element_Trl WHERE AD_Element_ID=56123
;

-- Aug 19, 2013 12:18:40 AM VET
-- LVE WithHolding
DELETE FROM AD_Element WHERE AD_Element_ID=56123
;

-- Aug 19, 2013 12:19:01 AM VET
-- LVE WithHolding
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=66799
;

-- Aug 19, 2013 12:19:01 AM VET
-- LVE WithHolding
DELETE FROM AD_Column WHERE AD_Column_ID=66799
;

-- Aug 19, 2013 12:19:01 AM VET
-- LVE WithHolding
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=66789
;

-- Aug 19, 2013 12:19:01 AM VET
-- LVE WithHolding
DELETE FROM AD_Column WHERE AD_Column_ID=66789
;

-- Aug 19, 2013 12:19:01 AM VET
-- LVE WithHolding
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=66790
;

-- Aug 19, 2013 12:19:01 AM VET
-- LVE WithHolding
DELETE FROM AD_Column WHERE AD_Column_ID=66790
;

-- Aug 19, 2013 12:19:01 AM VET
-- LVE WithHolding
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=66798
;

-- Aug 19, 2013 12:19:01 AM VET
-- LVE WithHolding
DELETE FROM AD_Column WHERE AD_Column_ID=66798
;

-- Aug 19, 2013 12:19:01 AM VET
-- LVE WithHolding
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=66787
;

-- Aug 19, 2013 12:19:01 AM VET
-- LVE WithHolding
DELETE FROM AD_Column WHERE AD_Column_ID=66787
;

-- Aug 19, 2013 12:19:01 AM VET
-- LVE WithHolding
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=66786
;

-- Aug 19, 2013 12:19:02 AM VET
-- LVE WithHolding
DELETE FROM AD_Column WHERE AD_Column_ID=66786
;

-- Aug 19, 2013 12:19:02 AM VET
-- LVE WithHolding
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=66785
;

-- Aug 19, 2013 12:19:02 AM VET
-- LVE WithHolding
DELETE FROM AD_Column WHERE AD_Column_ID=66785
;

-- Aug 19, 2013 12:19:28 AM VET
-- LVE WithHolding
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=66797
;

-- Aug 19, 2013 12:19:28 AM VET
-- LVE WithHolding
DELETE FROM AD_Column WHERE AD_Column_ID=66797
;

-- Aug 19, 2013 12:19:31 AM VET
-- LVE WithHolding
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=66788
;

-- Aug 19, 2013 12:19:31 AM VET
-- LVE WithHolding
DELETE FROM AD_Column WHERE AD_Column_ID=66788
;

-- Aug 19, 2013 12:20:04 AM VET
-- LVE WithHolding
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=66784
;

-- Aug 19, 2013 12:20:04 AM VET
-- LVE WithHolding
DELETE FROM AD_Column WHERE AD_Column_ID=66784
;

-- Aug 19, 2013 12:20:18 AM VET
-- LVE WithHolding
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=66781
;

-- Aug 19, 2013 12:20:18 AM VET
-- LVE WithHolding
DELETE FROM AD_Column WHERE AD_Column_ID=66781
;

-- Aug 19, 2013 12:20:21 AM VET
-- LVE WithHolding
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=66793
;

-- Aug 19, 2013 12:20:21 AM VET
-- LVE WithHolding
DELETE FROM AD_Column WHERE AD_Column_ID=66793
;

-- Aug 19, 2013 12:20:37 AM VET
-- LVE WithHolding
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=66794
;

-- Aug 19, 2013 12:20:37 AM VET
-- LVE WithHolding
DELETE FROM AD_Column WHERE AD_Column_ID=66794
;

-- Aug 19, 2013 12:25:22 AM VET
-- LVE WithHolding
UPDATE AD_Table SET TableName='LVE_RV_WH_ISLR',Updated=TO_DATE('2013-08-19 00:25:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53555
;

-- Aug 19, 2013 12:25:25 AM VET
-- LVE WithHolding
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,53682,TO_DATE('2013-08-19 00:25:22','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table LVE_RV_WH_ISLR',1,'Y','N','Y','Y','LVE_RV_WH_ISLR','N',1000000,TO_DATE('2013-08-19 00:25:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 19, 2013 12:25:41 AM VET
-- LVE WithHolding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66800,56072,0,12,53555,'WithholdingAmt',TO_DATE('2013-08-19 00:25:41','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',131089,'Y','N','N','N','N','N','N','N','N','N','Withholding Amt',TO_DATE('2013-08-19 00:25:41','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 19, 2013 12:25:41 AM VET
-- LVE WithHolding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66800 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 19, 2013 12:32:45 AM VET
-- LVE WithHolding
INSERT INTO AD_Table (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Table_ID,CopyColumnsFromTable,Created,CreatedBy,EntityType,ImportTable,IsActive,IsCentrallyMaintained,IsChangeLog,IsDeleteable,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,UpdatedBy) VALUES ('4',0,0,53556,'N',TO_DATE('2013-08-19 00:32:45','YYYY-MM-DD HH24:MI:SS'),100,'U','N','Y','Y','N','Y','N','N','N',0,'View Invoices pending applied Withholding IVA','L','LVE_RV_WH_IVA',TO_DATE('2013-08-19 00:32:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 19, 2013 12:32:45 AM VET
-- LVE WithHolding
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=53556 AND NOT EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Table_ID=t.AD_Table_ID)
;

-- Aug 19, 2013 12:32:46 AM VET
-- LVE WithHolding
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,53683,TO_DATE('2013-08-19 00:32:45','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table LVE_RV_WH_IVA',1,'Y','N','Y','Y','LVE_RV_WH_IVA','N',1000000,TO_DATE('2013-08-19 00:32:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Aug 19, 2013 12:33:00 AM VET
-- LVE WithHolding
UPDATE AD_Table SET AccessLevel='3', EntityType='ECA02', IsDeleteable='N', IsView='Y',Updated=TO_DATE('2013-08-19 00:33:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53556
;

-- Aug 19, 2013 12:33:30 AM VET
-- LVE WithHolding
UPDATE AD_Table SET Name='View Invoices pending applied Withholding IVA',Updated=TO_DATE('2013-08-19 00:33:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53555
;

-- Aug 19, 2013 12:33:30 AM VET
-- LVE WithHolding
UPDATE AD_Table_Trl SET IsTranslated='N' WHERE AD_Table_ID=53555
;

-- Aug 19, 2013 12:34:06 AM VET
-- LVE WithHolding
UPDATE AD_Table SET Name='View Invoices pending applied Withholding ISLR',Updated=TO_DATE('2013-08-19 00:34:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53555
;

-- Aug 19, 2013 12:34:06 AM VET
-- LVE WithHolding
UPDATE AD_Table_Trl SET IsTranslated='N' WHERE AD_Table_ID=53555
;

-- Aug 19, 2013 12:34:40 AM VET
-- LVE WithHolding
UPDATE AD_Table_Trl SET Name='Vista de Facturas pendientes por aplicar retenciones de ISLR',Updated=TO_DATE('2013-08-19 00:34:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53555 AND AD_Language='es_MX'
;

-- Aug 19, 2013 12:34:53 AM VET
-- LVE WithHolding
UPDATE AD_Table_Trl SET Name='Facturas pendientes por aplicar retenciones de ISLR',Updated=TO_DATE('2013-08-19 00:34:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53555 AND AD_Language='es_MX'
;

-- Aug 19, 2013 12:35:00 AM VET
-- LVE WithHolding
UPDATE AD_Table SET Name='Invoices pending applied Withholding ISLR',Updated=TO_DATE('2013-08-19 00:35:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53555
;

-- Aug 19, 2013 12:35:00 AM VET
-- LVE WithHolding
UPDATE AD_Table_Trl SET IsTranslated='N' WHERE AD_Table_ID=53555
;

-- Aug 19, 2013 12:35:36 AM VET
-- LVE WithHolding
UPDATE AD_Table_Trl SET Name='Facturas pendientes por apicar retencion de IVA',Updated=TO_DATE('2013-08-19 00:35:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53556 AND AD_Language='es_MX'
;

-- Aug 19, 2013 12:35:52 AM VET
-- LVE WithHolding
UPDATE AD_Table_Trl SET Name='Facturas pendientes por aplicar retenciones de IVA',Updated=TO_DATE('2013-08-19 00:35:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53556 AND AD_Language='es_MX'
;

-- Aug 19, 2013 12:36:12 AM VET
-- LVE WithHolding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66801,102,0,19,53556,'AD_Client_ID',TO_DATE('2013-08-19 00:36:11','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','ECA02',10,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','N','N','N','N','N','N','N','N','N','Client',TO_DATE('2013-08-19 00:36:11','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 19, 2013 12:36:12 AM VET
-- LVE WithHolding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66801 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 19, 2013 12:36:12 AM VET
-- LVE WithHolding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66802,113,0,19,53556,'AD_Org_ID',TO_DATE('2013-08-19 00:36:12','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','ECA02',10,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','N','N','N','N','N','N','N','N','N','Organization',TO_DATE('2013-08-19 00:36:12','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 19, 2013 12:36:12 AM VET
-- LVE WithHolding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66802 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 19, 2013 12:36:13 AM VET
-- LVE WithHolding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66803,1008,0,19,53556,'C_Invoice_ID',TO_DATE('2013-08-19 00:36:12','YYYY-MM-DD HH24:MI:SS'),100,'Invoice Identifier','ECA02',10,'The Invoice Document.','Y','N','N','N','N','N','N','N','N','N','Invoice',TO_DATE('2013-08-19 00:36:12','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 19, 2013 12:36:13 AM VET
-- LVE WithHolding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66803 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 19, 2013 12:36:13 AM VET
-- LVE WithHolding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66804,56063,0,19,53556,'LVE_WH_Config_ID',TO_DATE('2013-08-19 00:36:13','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','N','N','N','N','N','N','N','N','N','Withholding Config',TO_DATE('2013-08-19 00:36:13','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 19, 2013 12:36:13 AM VET
-- LVE WithHolding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66804 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 19, 2013 12:36:14 AM VET
-- LVE WithHolding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66805,187,0,19,53556,'C_BPartner_ID',TO_DATE('2013-08-19 00:36:13','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','ECA02',10,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','N','N','N','N','N','N','N','N','N','Business Partner ',TO_DATE('2013-08-19 00:36:13','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 19, 2013 12:36:14 AM VET
-- LVE WithHolding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66805 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 19, 2013 12:36:14 AM VET
-- LVE WithHolding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66806,56053,0,19,53556,'LVE_Withholding_ID',TO_DATE('2013-08-19 00:36:14','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','N','N','N','N','N','N','N','N','N','Withholding',TO_DATE('2013-08-19 00:36:14','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 19, 2013 12:36:14 AM VET
-- LVE WithHolding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66806 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 19, 2013 12:36:15 AM VET
-- LVE WithHolding
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,66807,56072,0,12,53556,'WithholdingAmt',TO_DATE('2013-08-19 00:36:14','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',131089,'Y','N','N','N','N','N','N','N','N','N','Withholding Amt',TO_DATE('2013-08-19 00:36:14','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 19, 2013 12:36:15 AM VET
-- LVE WithHolding
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66807 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

