-- Apr 12, 2013 3:07:43 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Table SET IsDeleteable='Y',Updated=TO_DATE('2013-04-12 15:07:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=3000208
;

-- Apr 12, 2013 4:29:52 PM VET
-- LVE-Retention
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000268,620,0,10,3000208,'Value',TO_DATE('2013-04-12 16:29:51','YYYY-MM-DD HH24:MI:SS'),100,'Search key for the record in the format required - must be unique','ECA02',60,'A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','Y','N','N','N','Y','N','N','N','Y','N','N','Y','Search Key',3,TO_DATE('2013-04-12 16:29:51','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Apr 12, 2013 4:44:56 PM VET
-- LVE-Retention
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000288,620,0,10,3000208,'Value',TO_DATE('2013-04-12 16:44:55','YYYY-MM-DD HH24:MI:SS'),100,'Search key for the record in the format required - must be unique','ECA02',60,'A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','Y','N','N','N','Y','N','N','N','Y','N','N','Y','Search Key',3,TO_DATE('2013-04-12 16:44:55','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Apr 12, 2013 4:44:56 PM VET
-- LVE-Retention
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000288 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Apr 12, 2013 4:46:40 PM VET
-- LVE-Retention
UPDATE AD_Field SET AD_Column_ID=3000288, Description='Search key for the record in the format required - must be unique', Help='A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).', Name='Search Key',Updated=TO_DATE('2013-04-12 16:46:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000245
;

-- Apr 12, 2013 4:52:33 PM VET
-- LVE-Retention
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,3000223,0,'CUST_RetentionGroup_ID',TO_DATE('2013-04-12 16:52:32','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Retention Group','Retention Group',TO_DATE('2013-04-12 16:52:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 12, 2013 4:52:33 PM VET
-- LVE-Retention
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=3000223 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Apr 12, 2013 4:55:18 PM VET
-- LVE-Retention
UPDATE AD_Element_Trl SET Name='Grupo de Retención',PrintName='Grupo de Retención',Updated=TO_DATE('2013-04-12 16:55:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=3000223 AND AD_Language='es_MX'
;

-- Apr 12, 2013 4:56:23 PM VET
-- LVE-Retention
UPDATE AD_Column SET AD_Element_ID=3000223, ColumnName='CUST_RetentionGroup_ID', Description=NULL, Help=NULL, IsUpdateable='N', Name='Retention Group',Updated=TO_DATE('2013-04-12 16:56:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=3000263
;

-- Apr 12, 2013 4:56:23 PM VET
-- LVE-Retention
UPDATE AD_Field SET Name='Retention Group', Description=NULL, Help=NULL WHERE AD_Column_ID=3000263 AND IsCentrallyMaintained='Y'
;

-- Apr 12, 2013 5:27:58 PM VET
-- LVE-Retention
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000263,3000259,0,3000203,TO_DATE('2013-04-12 17:27:56','YYYY-MM-DD HH24:MI:SS'),100,22,'ECA02','Y','Y','N','N','N','N','N','N','Retention Group',TO_DATE('2013-04-12 17:27:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 12, 2013 5:27:58 PM VET
-- LVE-Retention
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000259 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Apr 12, 2013 6:05:21 PM VET
-- RRHH LVE
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000265,3000260,0,3000000,TO_DATE('2013-04-12 18:05:20','YYYY-MM-DD HH24:MI:SS'),100,10,'ECA02','Y','Y','Y','N','N','N','N','N','Retention Group',TO_DATE('2013-04-12 18:05:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 12, 2013 6:05:21 PM VET
-- RRHH LVE
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000260 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Apr 12, 2013 6:05:47 PM VET
-- RRHH LVE
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_DATE('2013-04-12 18:05:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000260
;

-- Apr 12, 2013 6:05:47 PM VET
-- RRHH LVE
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_DATE('2013-04-12 18:05:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000095
;

-- Apr 12, 2013 6:05:47 PM VET
-- RRHH LVE
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_DATE('2013-04-12 18:05:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000097
;

-- Apr 12, 2013 6:05:55 PM VET
-- RRHH LVE
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-04-12 18:05:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000260
;

-- Apr 12, 2013 6:33:52 PM VET
-- RRHH LVE
UPDATE AD_Column SET IsUpdateable='Y',Updated=TO_DATE('2013-04-12 18:33:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=3000265
;

-- Apr 12, 2013 6:57:20 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET IsParent='N', IsUpdateable='Y',Updated=TO_DATE('2013-04-12 18:57:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=3000265
;

-- Mar 21, 2013 6:07:30 PM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
Create Or Replace View CUST_RV_RetentionsDeclare As 
Select 
	Distinct
	CI.AD_Client_ID,
	CI.AD_ORG_ID,
	CI.C_Invoice_ID,
	CI.DocumentNo,
	CI.IsSoTrx,
	CI.DocStatus,
	CI.DocAction,
	CI.C_DocType_ID,
	CI.C_DocTypeTarget_ID,
	CI.SalesRep_ID,
	CI.DateInvoiced,
	CI.DateAcct,
	CI.C_BPartner_ID,
	CI.C_BPartner_Location_ID,
	CI.C_Currency_ID,
	CI.PaymentRule,
	CI.C_PaymentTerm_ID,
	CI.GrandTotal,
	CI.TotalLines,
	CRT.CUST_RetentionType_ID,
	CRT.CUST_RetentionGroup_ID
From 
C_Invoice CI 
Inner Join C_InvoiceLine CIL On CIL.C_Invoice_ID = CI.C_Invoice_ID
Inner Join C_DocType CDT On CI.C_DocType_ID = CDT.C_DocType_ID 
Inner Join CUST_RetentionType CRT On CRT.C_DocType_ID = CDT.C_DocType_ID 
Where CI.DocStatus IN('CO','CL') And
Not Exists (Select 1 From 
		C_invoice CIS Inner Join 
		C_InvoiceLine CILS On CIS.C_Invoice_ID = CILS.C_Invoice_ID
		Where CILS.DocAffected_ID = CI.C_Invoice_ID And CIS.DocStatus IN('CO','CL','DR')
		);
