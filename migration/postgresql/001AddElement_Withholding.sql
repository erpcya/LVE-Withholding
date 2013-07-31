-- Jul 30, 2013 7:58:18 AM VET
-- LVE Withholding
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56052,0,'LVE_WithholdingType_ID',TO_TIMESTAMP('2013-07-30 07:58:17','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Withholding Type','Withholding Type',TO_TIMESTAMP('2013-07-30 07:58:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 30, 2013 7:58:18 AM VET
-- LVE Withholding
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56052 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Jul 30, 2013 8:00:23 AM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='Tipo de Retencion',PrintName='Tipo de Retencion',Updated=TO_TIMESTAMP('2013-07-30 08:00:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56052 AND AD_Language='es_MX'
;

-- Jul 30, 2013 8:00:44 AM VET
-- LVE Withholding
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56053,0,'LVE_Withholding_ID',TO_TIMESTAMP('2013-07-30 08:00:44','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Withholding','Withholding',TO_TIMESTAMP('2013-07-30 08:00:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 30, 2013 8:00:44 AM VET
-- LVE Withholding
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56053 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Jul 30, 2013 8:00:52 AM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='Retencion',PrintName='Retencion',Updated=TO_TIMESTAMP('2013-07-30 08:00:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56053 AND AD_Language='es_MX'
;

-- Jul 30, 2013 8:01:31 AM VET
-- LVE Withholding
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56054,0,'WithholdingDocType',TO_TIMESTAMP('2013-07-30 08:01:31','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Withholding Doc Type','Withholding Doc Type',TO_TIMESTAMP('2013-07-30 08:01:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 30, 2013 8:01:31 AM VET
-- LVE Withholding
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56054 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Jul 30, 2013 8:02:04 AM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='Tipo de Documento de Retencion',PrintName='Tipo de Documento de Retencion',Updated=TO_TIMESTAMP('2013-07-30 08:02:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56054 AND AD_Language='es_MX'
;

-- Jul 30, 2013 8:02:55 AM VET
-- LVE Withholding
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56055,0,'DeclarationDocType',TO_TIMESTAMP('2013-07-30 08:02:54','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Declaration Doc Type','Declaration Doc Type',TO_TIMESTAMP('2013-07-30 08:02:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 30, 2013 8:02:55 AM VET
-- LVE Withholding
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56055 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Jul 30, 2013 8:03:11 AM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='Tipo de Documento de Declaracion',PrintName='Tipo de Documento de Declaracion',Updated=TO_TIMESTAMP('2013-07-30 08:03:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56055 AND AD_Language='es_MX'
;

-- Jul 30, 2013 8:03:45 AM VET
-- LVE Withholding
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56056,0,'TaxUnitRate',TO_TIMESTAMP('2013-07-30 08:03:44','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Tax Unit Rate','Tax Unit Rate',TO_TIMESTAMP('2013-07-30 08:03:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 30, 2013 8:03:45 AM VET
-- LVE Withholding
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56056 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Jul 30, 2013 8:04:20 AM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='Unidad de Cambio del Impuesto',PrintName='Unidad de Cambio del Impuesto',Updated=TO_TIMESTAMP('2013-07-30 08:04:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56056 AND AD_Language='es_MX'
;

-- Jul 30, 2013 8:05:44 AM VET
-- LVE Withholding
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56057,0,'LVE_WithholdingConcept_ID',TO_TIMESTAMP('2013-07-30 08:05:43','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Withholding Concept','Withholding Concept',TO_TIMESTAMP('2013-07-30 08:05:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 30, 2013 8:05:44 AM VET
-- LVE Withholding
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56057 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Jul 30, 2013 8:06:07 AM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='Concepto Retención',PrintName='Concepto Retención',Updated=TO_TIMESTAMP('2013-07-30 08:06:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56057 AND AD_Language='es_MX'
;

-- Jul 30, 2013 8:07:45 AM VET
-- LVE Withholding
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56058,0,'LVE_WH_Conbination_ID',TO_TIMESTAMP('2013-07-30 08:07:44','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','WH Conbination','WH Conbination',TO_TIMESTAMP('2013-07-30 08:07:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 30, 2013 8:07:45 AM VET
-- LVE Withholding
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56058 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Jul 30, 2013 8:08:07 AM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='WH Conbinación',PrintName='WH Conbinación',Updated=TO_TIMESTAMP('2013-07-30 08:08:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56058 AND AD_Language='es_MX'
;

-- Jul 30, 2013 8:11:34 AM VET
-- LVE Withholding
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56059,0,'LVE_PersonType_ID',TO_TIMESTAMP('2013-07-30 08:11:33','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Person Type','Person Type',TO_TIMESTAMP('2013-07-30 08:11:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 30, 2013 8:11:34 AM VET
-- LVE Withholding
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56059 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Jul 30, 2013 8:11:57 AM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='Tipo de Persona',PrintName='Tipo de Persona',Updated=TO_TIMESTAMP('2013-07-30 08:11:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56059 AND AD_Language='es_MX'
;

-- Jul 30, 2013 8:12:53 AM VET
-- LVE Withholding
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56060,0,'Aliquot',TO_TIMESTAMP('2013-07-30 08:12:52','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Aliquot','Aliquot',TO_TIMESTAMP('2013-07-30 08:12:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 30, 2013 8:12:53 AM VET
-- LVE Withholding
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56060 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Jul 30, 2013 8:13:09 AM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='Alícuota',PrintName='Alícuota',Updated=TO_TIMESTAMP('2013-07-30 08:13:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56060 AND AD_Language='es_MX'
;

-- Jul 30, 2013 8:13:52 AM VET
-- LVE Withholding
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56061,0,'LVE_WC_ProductCharge_ID',TO_TIMESTAMP('2013-07-30 08:13:52','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','WC Product Charge','WC Product Charge',TO_TIMESTAMP('2013-07-30 08:13:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 30, 2013 8:13:52 AM VET
-- LVE Withholding
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56061 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Jul 30, 2013 8:14:47 AM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='WC Producto, Cargo',PrintName='WC Producto, Cargo',Updated=TO_TIMESTAMP('2013-07-30 08:14:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56061 AND AD_Language='es_MX'
;

-- Jul 30, 2013 8:16:25 AM VET
-- LVE Withholding
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56062,0,'LVE_WithholdingRelation_ID',TO_TIMESTAMP('2013-07-30 08:16:24','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Withholding Relation','Withholding Relation',TO_TIMESTAMP('2013-07-30 08:16:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 30, 2013 8:16:25 AM VET
-- LVE Withholding
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56062 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Jul 30, 2013 8:22:09 AM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='Relación Retención',PrintName='Relación Retención',Updated=TO_TIMESTAMP('2013-07-30 08:22:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56062 AND AD_Language='es_MX'
;

-- Jul 30, 2013 8:23:53 AM VET
-- LVE Withholding
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56063,0,'LVE_WithholdingConfig_ID',TO_TIMESTAMP('2013-07-30 08:23:53','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Withholding Config','Withholding Config',TO_TIMESTAMP('2013-07-30 08:23:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 30, 2013 8:23:53 AM VET
-- LVE Withholding
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56063 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Jul 30, 2013 8:24:02 AM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='Configurar Retencion',PrintName='Configurar Retencion',Updated=TO_TIMESTAMP('2013-07-30 08:24:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56063 AND AD_Language='es_MX'
;

-- Jul 30, 2013 8:24:50 AM VET
-- LVE Withholding
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56064,0,'LVE_TaxUnit_ID',TO_TIMESTAMP('2013-07-30 08:24:49','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Tax Unit','Tax Unit',TO_TIMESTAMP('2013-07-30 08:24:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 30, 2013 8:24:50 AM VET
-- LVE Withholding
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56064 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Jul 30, 2013 8:25:11 AM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='Unidad Tributaria',PrintName='Unidad Tributaria',Updated=TO_TIMESTAMP('2013-07-30 08:25:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56064 AND AD_Language='es_MX'
;

-- Jul 30, 2013 8:25:57 AM VET
-- LVE Withholding
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56065,0,'Subtrahend',TO_TIMESTAMP('2013-07-30 08:25:56','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Subtrahend','Subtrahend',TO_TIMESTAMP('2013-07-30 08:25:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 30, 2013 8:25:57 AM VET
-- LVE Withholding
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56065 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Jul 30, 2013 8:26:01 AM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='Sustraendo',PrintName='Sustraendo',Updated=TO_TIMESTAMP('2013-07-30 08:26:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56065 AND AD_Language='es_MX'
;

-- Jul 30, 2013 8:27:07 AM VET
-- LVE Withholding
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,56066,0,'MinimalAmt',TO_TIMESTAMP('2013-07-30 08:27:07','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Minimal Amt','Minimal Amt',TO_TIMESTAMP('2013-07-30 08:27:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jul 30, 2013 8:27:07 AM VET
-- LVE Withholding
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=56066 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Jul 30, 2013 8:27:36 AM VET
-- LVE Withholding
UPDATE AD_Element_Trl SET Name='Monto Minimo',PrintName='Monto Minimo',Updated=TO_TIMESTAMP('2013-07-30 08:27:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=56066 AND AD_Language='es_MX'
;

