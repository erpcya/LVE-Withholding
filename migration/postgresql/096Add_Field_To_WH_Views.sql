-- Aug 20, 2013 12:00:35 AM VET
-- LVE TRetention
UPDATE AD_Column SET IsKey='Y', IsMandatory='Y', IsUpdateable='N',Updated=TO_TIMESTAMP('2013-08-20 00:00:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66805
;

-- Aug 20, 2013 12:00:41 AM VET
-- LVE TRetention
UPDATE AD_Column SET IsKey='Y', IsMandatory='Y', IsUpdateable='N',Updated=TO_TIMESTAMP('2013-08-20 00:00:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66803
;

-- Aug 20, 2013 12:00:44 AM VET
-- LVE TRetention
UPDATE AD_Column SET IsKey='Y', IsMandatory='Y', IsUpdateable='N',Updated=TO_TIMESTAMP('2013-08-20 00:00:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66804
;

-- Aug 20, 2013 12:00:47 AM VET
-- LVE TRetention
UPDATE AD_Column SET IsKey='Y', IsMandatory='Y', IsUpdateable='N',Updated=TO_TIMESTAMP('2013-08-20 00:00:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66806
;

-- Aug 20, 2013 12:01:13 AM VET
-- LVE TRetention
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66808,263,0,15,53556,'DateAcct',TO_TIMESTAMP('2013-08-20 00:01:12','YYYY-MM-DD HH24:MI:SS'),100,'Accounting Date','ECA02',7,'The Accounting Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.','Y','Y','N','N','N','N','N','N','N','N','N','N','N','Account Date',0,TO_TIMESTAMP('2013-08-20 00:01:12','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 20, 2013 12:01:13 AM VET
-- LVE TRetention
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66808 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 20, 2013 12:01:31 AM VET
-- LVE TRetention
UPDATE AD_Column SET IsKey='Y', IsMandatory='Y', IsUpdateable='N',Updated=TO_TIMESTAMP('2013-08-20 00:01:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66779
;

-- Aug 20, 2013 12:01:34 AM VET
-- LVE TRetention
UPDATE AD_Column SET IsKey='Y', IsMandatory='Y', IsUpdateable='N',Updated=TO_TIMESTAMP('2013-08-20 00:01:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66783
;

-- Aug 20, 2013 12:01:36 AM VET
-- LVE TRetention
UPDATE AD_Column SET IsKey='Y', IsMandatory='Y', IsUpdateable='N',Updated=TO_TIMESTAMP('2013-08-20 00:01:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66782
;

-- Aug 20, 2013 12:01:39 AM VET
-- LVE TRetention
UPDATE AD_Column SET IsKey='Y', IsMandatory='Y', IsUpdateable='N',Updated=TO_TIMESTAMP('2013-08-20 00:01:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66780
;

-- Aug 20, 2013 12:02:07 AM VET
-- LVE TRetention
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,66809,263,0,15,53555,'DateAcct',TO_TIMESTAMP('2013-08-20 00:02:06','YYYY-MM-DD HH24:MI:SS'),100,'Accounting Date','ECA02',7,'The Accounting Date indicates the date to be used on the General Ledger account entries generated from this document. It is also used for any currency conversion.','Y','Y','N','N','N','N','N','N','N','N','N','N','N','Account Date',0,TO_TIMESTAMP('2013-08-20 00:02:06','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Aug 20, 2013 12:02:07 AM VET
-- LVE TRetention
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=66809 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Aug 20, 2013 12:02:24 AM VET
-- LVE TRetention
UPDATE AD_Table SET Name='Invoices pending applied Withholding IVA',Updated=TO_TIMESTAMP('2013-08-20 00:02:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=53556
;

-- Aug 20, 2013 12:02:24 AM VET
-- LVE TRetention
UPDATE AD_Table_Trl SET IsTranslated='N' WHERE AD_Table_ID=53556
;

