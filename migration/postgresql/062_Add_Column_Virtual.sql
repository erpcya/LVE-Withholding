-- Apr 30, 2013 11:57:51 AM VET
-- LVE Retention
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,3000246,0,'InvoiceNO',TO_TIMESTAMP('2013-04-30 11:57:51','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','No. Invoice','No. Invoice',TO_TIMESTAMP('2013-04-30 11:57:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 11:57:51 AM VET
-- LVE Retention
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=3000246 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Apr 30, 2013 11:58:02 AM VET
-- LVE Retention
UPDATE AD_Element_Trl SET Name='No. Factura',PrintName='No. Factura',Updated=TO_TIMESTAMP('2013-04-30 11:58:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=3000246 AND AD_Language='es_MX'
;

-- Apr 30, 2013 11:59:09 AM VET
-- LVE Retention
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000445,3000246,0,22,3000217,'InvoiceNO','(CASE  WHEN  DocTypeDeclare = ''01''  THEN CUST_RV_Books.DocumentNO ELSE null END)',TO_TIMESTAMP('2013-04-30 11:59:08','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',14,'Y','Y','N','N','N','N','N','N','N','N','N','N','N','No. Invoice',0,TO_TIMESTAMP('2013-04-30 11:59:08','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Apr 30, 2013 11:59:09 AM VET
-- LVE Retention
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000445 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Apr 30, 2013 12:10:22 PM VET
-- LVE Retention
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,3000247,0,'CreditNote',TO_TIMESTAMP('2013-04-30 12:10:22','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Credit Note','Credit Note',TO_TIMESTAMP('2013-04-30 12:10:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 12:10:22 PM VET
-- LVE Retention
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=3000247 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Apr 30, 2013 12:10:31 PM VET
-- LVE Retention
UPDATE AD_Element_Trl SET Name='Nota de Credito',PrintName='Nota de Credito',Updated=TO_TIMESTAMP('2013-04-30 12:10:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=3000247 AND AD_Language='es_MX'
;

-- Apr 30, 2013 12:11:37 PM VET
-- LVE Retention
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000446,3000247,0,22,3000217,'CreditNote','(CASE WHEN  DocTypeDeclare = ''03''  THEN CUST_RV_Books.DocumentNO ELSE null END)',TO_TIMESTAMP('2013-04-30 12:11:36','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',14,'Y','Y','N','N','N','N','N','N','N','N','N','N','N','Credit Note',0,TO_TIMESTAMP('2013-04-30 12:11:36','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Apr 30, 2013 12:11:37 PM VET
-- LVE Retention
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000446 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Apr 30, 2013 12:12:17 PM VET
-- LVE Retention
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,3000248,0,'DeditNote',TO_TIMESTAMP('2013-04-30 12:12:17','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Dedit Note','Dedit Note',TO_TIMESTAMP('2013-04-30 12:12:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 12:12:17 PM VET
-- LVE Retention
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=3000248 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Apr 30, 2013 12:12:33 PM VET
-- LVE Retention
UPDATE AD_Element_Trl SET Name='Nota De Debito',PrintName='Nota De Debito',Updated=TO_TIMESTAMP('2013-04-30 12:12:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=3000248 AND AD_Language='es_MX'
;

-- Apr 30, 2013 12:14:48 PM VET
-- LVE Retention
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000447,3000248,0,22,3000217,'DeditNote','(CASE WHEN  DocTypeDeclare = ''02'' THEN CUST_RV_Books.DocumentNO ELSE null END)',TO_TIMESTAMP('2013-04-30 12:14:48','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',14,'Y','Y','N','N','N','N','N','N','N','N','N','N','N','Dedit Note',0,TO_TIMESTAMP('2013-04-30 12:14:48','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Apr 30, 2013 12:14:48 PM VET
-- LVE Retention
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000447 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Apr 30, 2013 12:15:28 PM VET
-- LVE Retention
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,3000249,0,'InvoiceAffected',TO_TIMESTAMP('2013-04-30 12:15:28','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Invoice Affected','Invoice Affected',TO_TIMESTAMP('2013-04-30 12:15:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 30, 2013 12:15:28 PM VET
-- LVE Retention
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=3000249 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Apr 30, 2013 12:15:37 PM VET
-- LVE Retention
UPDATE AD_Element_Trl SET Name='Factura Afectada',PrintName='Factura Afectada',Updated=TO_TIMESTAMP('2013-04-30 12:15:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=3000249 AND AD_Language='es_MX'
;

-- Apr 30, 2013 12:16:30 PM VET
-- LVE Retention
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000448,3000249,0,22,3000217,'InvoiceAffected','(CASE  WHEN  DocTypeDeclare = ''02'' OR DocTypeDeclare = ''03'' THEN (SELECT C_Invoice.DocumentNo FROM C_Invoice WHERE CUST_RV_Books.DocAffected_ID = C_Invoice.C_Invoice_ID) ELSE null END)',TO_TIMESTAMP('2013-04-30 12:16:30','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',14,'Y','Y','N','N','N','N','N','N','N','N','N','N','N','Invoice Affected',0,TO_TIMESTAMP('2013-04-30 12:16:30','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Apr 30, 2013 12:16:30 PM VET
-- LVE Retention
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000448 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

