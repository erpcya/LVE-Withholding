-- Apr 29, 2013 10:23:30 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Browse_Field SET AD_Reference_ID=15,Updated=TO_DATE('2013-04-29 10:23:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000011
;

-- Apr 29, 2013 10:23:38 AM VET
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Browse_Field SET AD_Reference_ID=15,Updated=TO_DATE('2013-04-29 10:23:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000010
;

-- Apr 29, 2013 10:36:02 AM VET
-- RETENTION LVE
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,3000416,3000219,0,19,3000006,'CUST_RetentionGroup_ID',TO_DATE('2013-04-29 10:36:01','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','N','N','N','N','N','N','N','N','N','Retention Group',TO_DATE('2013-04-29 10:36:01','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Apr 29, 2013 10:36:02 AM VET
-- RETENTION LVE
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000416 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;


-- Apr 29, 2013 10:43:41 AM VET
-- RETENTION LVE
INSERT INTO AD_View_Column (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_View_Column_ID,AD_View_Definition_ID,AD_View_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,3000265,0,3000221,3000000,3000000,'CRD_CUST_RetentionGroup_ID','CRD.CUST_RetentionGroup_ID',TO_DATE('2013-04-29 10:43:40','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Retention Group',TO_DATE('2013-04-29 10:43:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 29, 2013 10:44:36 AM VET
-- RETENTION LVE
INSERT INTO AD_Browse_Field (AD_Browse_Field_ID,AD_Browse_ID,AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_View_Column_ID,Created,CreatedBy,EntityType,IsActive,IsDisplayed,IsIdentifier,IsKey,IsMandatory,IsQueryCriteria,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (3000200,3000000,0,3000219,0,19,3000221,TO_DATE('2013-04-29 10:44:35','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','N','N','N','N','N','N','Retention Group',10,TO_DATE('2013-04-29 10:44:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 29, 2013 10:44:36 AM VET
-- RETENTION LVE
INSERT INTO AD_Browse_Field_Trl (AD_Language,AD_Browse_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Browse_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Browse_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Browse_Field_ID=3000200 AND NOT EXISTS (SELECT * FROM AD_Browse_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Browse_Field_ID=t.AD_Browse_Field_ID)
;

-- Apr 29, 2013 10:45:22 AM VET
-- RETENTION LVE
UPDATE AD_Browse_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_DATE('2013-04-29 10:45:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000200
;

-- Apr 29, 2013 10:46:39 AM VET
-- RETENTION LVE
UPDATE AD_Browse_Field SET IsMandatory='N',Updated=TO_DATE('2013-04-29 10:46:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000009
;

-- Apr 29, 2013 10:46:56 AM VET
-- RETENTION LVE
UPDATE AD_Browse_Field SET SeqNo=5,Updated=TO_DATE('2013-04-29 10:46:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000009
;

-- Apr 29, 2013 10:46:59 AM VET
-- RETENTION LVE
UPDATE AD_Browse_Field SET SeqNo=0,Updated=TO_DATE('2013-04-29 10:46:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000200
;

-- Apr 29, 2013 10:47:13 AM VET
-- RETENTION LVE
UPDATE AD_Browse_Field SET IsDisplayed='N',Updated=TO_DATE('2013-04-29 10:47:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000200
;

-- Apr 29, 2013 10:47:20 AM VET
-- RETENTION LVE
UPDATE AD_Browse_Field SET IsQueryCriteria='Y',Updated=TO_DATE('2013-04-29 10:47:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000200
;

-- Apr 29, 2013 10:47:30 AM VET
-- RETENTION LVE
UPDATE AD_Browse_Field SET IsMandatory='Y',Updated=TO_DATE('2013-04-29 10:47:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Browse_Field_ID=3000200
;

