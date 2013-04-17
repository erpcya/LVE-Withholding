-- Apr 13, 2013 1:21:52 PM VET
-- LVE Retention
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,3000226,0,'CUST_TransactionType',TO_TIMESTAMP('2013-04-13 13:21:50','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Type Transaction','Type Transaction',TO_TIMESTAMP('2013-04-13 13:21:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 13, 2013 1:21:52 PM VET
-- LVE Retention
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=3000226 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Apr 13, 2013 1:22:02 PM VET
-- LVE Retention
UPDATE AD_Element_Trl SET Name='Tipo de Transaccion',PrintName='Tipo de Transaccion',Updated=TO_TIMESTAMP('2013-04-13 13:22:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=3000226 AND AD_Language='es_MX'
;

-- Apr 13, 2013 1:22:43 PM VET
-- LVE Retention
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000313,3000226,0,10,3000213,'CUST_TransactionType','(''1-reg'')',TO_TIMESTAMP('2013-04-13 13:22:42','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',7,'Y','Y','N','N','N','N','N','N','N','N','N','N','N','Type Transaction',0,TO_TIMESTAMP('2013-04-13 13:22:42','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Apr 13, 2013 1:22:43 PM VET
-- LVE Retention
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000313 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

