-- 17/04/2013 03:50:22 PM VET
-- LVE Retention
ALTER TABLE CUST_CR_PT_Combination ADD COLUMN Value VARCHAR(60) DEFAULT NULL 
;

-- 17/04/2013 03:50:16 PM VET
-- LVE Retention
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000322,620,0,10,3000003,'Value',TO_TIMESTAMP('2013-04-17 15:50:15','YYYY-MM-DD HH24:MI:SS'),100,'Search key for the record in the format required - must be unique','ECA02',60,'A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','Y','N','N','N','Y','N','N','N','Y','N','N','Y','Search Key',4,TO_TIMESTAMP('2013-04-17 15:50:15','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 17/04/2013 03:50:16 PM VET
-- LVE Retention
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000322 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 17/04/2013 03:50:47 PM VET
-- LVE Retention
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000322,3000265,0,3000005,TO_TIMESTAMP('2013-04-17 15:50:46','YYYY-MM-DD HH24:MI:SS'),100,'Search key for the record in the format required - must be unique',60,'ECA02','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','Y','Y','N','N','N','N','N','Search Key',TO_TIMESTAMP('2013-04-17 15:50:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 17/04/2013 03:50:47 PM VET
-- LVE Retention
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000265 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 17/04/2013 03:50:59 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30,Updated=TO_TIMESTAMP('2013-04-17 15:50:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000265
;

-- 17/04/2013 03:50:59 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_TIMESTAMP('2013-04-17 15:50:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000042
;

-- 17/04/2013 03:50:59 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_TIMESTAMP('2013-04-17 15:50:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000045
;

-- 17/04/2013 03:50:59 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_TIMESTAMP('2013-04-17 15:50:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000046
;

-- 17/04/2013 03:50:59 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_TIMESTAMP('2013-04-17 15:50:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000040
;

-- 17/04/2013 03:53:25 PM VET
-- LVE Retention
UPDATE CUST_CR_PT_Combination SET Value='053',Updated=TO_TIMESTAMP('2013-04-17 15:53:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE CUST_CR_PT_Combination_ID=1000000
;

-- 17/04/2013 03:55:04 PM VET
-- LVE Retention
UPDATE CUST_CR_PT_Combination SET Value='071',Updated=TO_TIMESTAMP('2013-04-17 15:55:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE CUST_CR_PT_Combination_ID=1000001
;

-- 17/04/2013 03:56:54 PM VET
-- LVE Retention
UPDATE CUST_CR_PT_Combination SET Value='055',Updated=TO_TIMESTAMP('2013-04-17 15:56:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE CUST_CR_PT_Combination_ID=1000002
;

-- 17/04/2013 03:57:22 PM VET
-- LVE Retention
UPDATE CUST_CR_PT_Combination SET Value='072',Updated=TO_TIMESTAMP('2013-04-17 15:57:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE CUST_CR_PT_Combination_ID=1000009
;

-- 17/04/2013 03:57:41 PM VET
-- LVE Retention
UPDATE CUST_CR_PT_Combination SET Value='086',Updated=TO_TIMESTAMP('2013-04-17 15:57:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE CUST_CR_PT_Combination_ID=1000013
;

-- 17/04/2013 03:57:58 PM VET
-- LVE Retention
UPDATE CUST_CR_PT_Combination SET Value='004',Updated=TO_TIMESTAMP('2013-04-17 15:57:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE CUST_CR_PT_Combination_ID=1000014
;

-- 17/04/2013 03:58:15 PM VET
-- LVE Retention
UPDATE CUST_CR_PT_Combination SET Value='021',Updated=TO_TIMESTAMP('2013-04-17 15:58:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE CUST_CR_PT_Combination_ID=1000015
;

-- 17/04/2013 03:58:31 PM VET
-- LVE Retention
UPDATE CUST_CR_PT_Combination SET Value='027',Updated=TO_TIMESTAMP('2013-04-17 15:58:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE CUST_CR_PT_Combination_ID=1000017
;

-- 17/04/2013 03:59:01 PM VET
-- LVE Retention
UPDATE CUST_CR_PT_Combination SET Value='059',Updated=TO_TIMESTAMP('2013-04-17 15:59:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE CUST_CR_PT_Combination_ID=1000018
;

-- 17/04/2013 03:59:14 PM VET
-- LVE Retention
UPDATE CUST_CR_PT_Combination SET Value='063',Updated=TO_TIMESTAMP('2013-04-17 15:59:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE CUST_CR_PT_Combination_ID=1000019
;

-- 17/04/2013 03:59:31 PM VET
-- LVE Retention
UPDATE CUST_CR_PT_Combination SET Value='074',Updated=TO_TIMESTAMP('2013-04-17 15:59:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE CUST_CR_PT_Combination_ID=1000021
;

-- 17/04/2013 03:59:44 PM VET
-- LVE Retention
UPDATE CUST_CR_PT_Combination SET Value='081',Updated=TO_TIMESTAMP('2013-04-17 15:59:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE CUST_CR_PT_Combination_ID=1000022
;

-- 17/04/2013 04:00:37 PM VET
-- LVE Retention
UPDATE CUST_CR_PT_Combination SET Value='084',Updated=TO_TIMESTAMP('2013-04-17 16:00:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE CUST_CR_PT_Combination_ID=1000024
;

-- 17/04/2013 04:01:23 PM VET
-- LVE Retention
UPDATE CUST_CR_PT_Combination SET Value='024',Updated=TO_TIMESTAMP('2013-04-17 16:01:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE CUST_CR_PT_Combination_ID=1000036
;

-- 17/04/2013 04:01:39 PM VET
-- LVE Retention
UPDATE CUST_CR_PT_Combination SET Value='021',Updated=TO_TIMESTAMP('2013-04-17 16:01:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE CUST_CR_PT_Combination_ID=1000016
;

-- 17/04/2013 04:01:50 PM VET
-- LVE Retention
UPDATE CUST_CR_PT_Combination SET Value='064',Updated=TO_TIMESTAMP('2013-04-17 16:01:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE CUST_CR_PT_Combination_ID=1000020
;

-- 17/04/2013 04:02:01 PM VET
-- LVE Retention
UPDATE CUST_CR_PT_Combination SET Value='082',Updated=TO_TIMESTAMP('2013-04-17 16:02:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE CUST_CR_PT_Combination_ID=1000023
;

-- 17/04/2013 04:02:12 PM VET
-- LVE Retention
UPDATE CUST_CR_PT_Combination SET Value='085',Updated=TO_TIMESTAMP('2013-04-17 16:02:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE CUST_CR_PT_Combination_ID=1000025
;

-- 17/04/2013 04:02:35 PM VET
-- LVE Retention
UPDATE CUST_CR_PT_Combination SET Value='019',Updated=TO_TIMESTAMP('2013-04-17 16:02:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE CUST_CR_PT_Combination_ID=1000028
;

-- 17/04/2013 04:03:32 PM VET
-- LVE Retention
UPDATE CUST_CR_PT_Combination SET Value='080',Updated=TO_TIMESTAMP('2013-04-17 16:03:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE CUST_CR_PT_Combination_ID=1000035
;

-- 17/04/2013 04:04:30 PM VET
-- LVE Retention
UPDATE CUST_CR_PT_Combination SET Value='036',Updated=TO_TIMESTAMP('2013-04-17 16:04:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE CUST_CR_PT_Combination_ID=1000030
;

-- 17/04/2013 04:07:32 PM VET
-- LVE Retention
UPDATE CUST_CR_PT_Combination SET Value='020',Updated=TO_TIMESTAMP('2013-04-17 16:07:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE CUST_CR_PT_Combination_ID=1000015
;

-- 17/04/2013 04:08:50 PM VET
-- LVE Retention
UPDATE AD_UserQuery SET UpdatedBy=100,Updated=TO_TIMESTAMP('2013-04-17 16:08:50','YYYY-MM-DD HH24:MI:SS') WHERE AD_UserQuery_ID=3000201
;

-- 17/04/2013 04:09:54 PM VET
-- LVE Retention
UPDATE AD_UserQuery SET UpdatedBy=100,Updated=TO_TIMESTAMP('2013-04-17 16:09:54','YYYY-MM-DD HH24:MI:SS') WHERE AD_UserQuery_ID=3000201
;

-- 17/04/2013 04:10:28 PM VET
-- LVE Retention
UPDATE CUST_CR_PT_Combination SET Value='001',Updated=TO_TIMESTAMP('2013-04-17 16:10:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE CUST_CR_PT_Combination_ID=1000026
;

-- 17/04/2013 04:10:34 PM VET
-- LVE Retention
UPDATE CUST_CR_PT_Combination SET Value='003',Updated=TO_TIMESTAMP('2013-04-17 16:10:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE CUST_CR_PT_Combination_ID=1000027
;

-- 17/04/2013 04:16:43 PM VET
-- LVE Retention
UPDATE CUST_CR_PT_Combination SET Value='054',Updated=TO_TIMESTAMP('2013-04-17 16:16:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE CUST_CR_PT_Combination_ID=1000031
;

-- 17/04/2013 04:17:58 PM VET
-- LVE Retention
UPDATE CUST_CR_PT_Combination SET Value=NULL,Updated=TO_TIMESTAMP('2013-04-17 16:17:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE CUST_CR_PT_Combination_ID=1000031
;

-- 17/04/2013 04:19:04 PM VET
-- LVE Retention
UPDATE CUST_CR_PT_Combination SET Value='054',Updated=TO_TIMESTAMP('2013-04-17 16:19:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE CUST_CR_PT_Combination_ID=1000031
;

-- 17/04/2013 04:21:11 PM VET
-- LVE Retention
UPDATE CUST_CR_PT_Combination SET Value=NULL,Updated=TO_TIMESTAMP('2013-04-17 16:21:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE CUST_CR_PT_Combination_ID=1000031
;

-- 17/04/2013 04:21:21 PM VET
-- LVE Retention
UPDATE CUST_CR_PT_Combination SET Value='054',Updated=TO_TIMESTAMP('2013-04-17 16:21:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE CUST_CR_PT_Combination_ID=1000032
;

-- 17/04/2013 04:21:38 PM VET
-- LVE Retention
UPDATE CUST_CR_PT_Combination SET Value='058',Updated=TO_TIMESTAMP('2013-04-17 16:21:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE CUST_CR_PT_Combination_ID=1000033
;

-- 17/04/2013 04:21:49 PM VET
-- LVE Retention
UPDATE CUST_CR_PT_Combination SET Value='062',Updated=TO_TIMESTAMP('2013-04-17 16:21:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE CUST_CR_PT_Combination_ID=1000034
;

-- 17/04/2013 04:28:41 PM VET
-- LVE Retention
DELETE FROM CUST_CR_PT_Combination WHERE CUST_CR_PT_Combination_ID=1000031
;

-- 17/04/2013 04:30:15 PM VET
-- LVE Retention
INSERT INTO CUST_CR_PT_Combination (AD_Client_ID,AD_Org_ID,Created,CreatedBy,CUST_ConceptRetention_ID,CUST_CR_PT_Combination_ID,CUST_PersonType_ID,CUST_RetentionConfig_ID,IsActive,Updated,UpdatedBy,Value) VALUES (1000002,1000002,TO_TIMESTAMP('2013-04-17 16:30:15','YYYY-MM-DD HH24:MI:SS'),100,1000005,3000200,1000001,1000002,'Y',TO_TIMESTAMP('2013-04-17 16:30:15','YYYY-MM-DD HH24:MI:SS'),100,'038')
;

-- 17/04/2013 04:31:00 PM VET
-- LVE Retention
UPDATE AD_UserQuery SET UpdatedBy=100,Updated=TO_TIMESTAMP('2013-04-17 16:31:00','YYYY-MM-DD HH24:MI:SS') WHERE AD_UserQuery_ID=3000201
;

-- 17/04/2013 04:31:51 PM VET
-- LVE Retention
UPDATE CUST_CR_PT_Combination SET Value='002',Updated=TO_TIMESTAMP('2013-04-17 16:31:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE CUST_CR_PT_Combination_ID=1000003
;

-- 17/04/2013 04:32:07 PM VET
-- LVE Retention
UPDATE CUST_CR_PT_Combination SET Value='018',Updated=TO_TIMESTAMP('2013-04-17 16:32:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE CUST_CR_PT_Combination_ID=1000004
;

-- 17/04/2013 04:32:14 PM VET
-- LVE Retention
UPDATE CUST_CR_PT_Combination SET Value='025',Updated=TO_TIMESTAMP('2013-04-17 16:32:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE CUST_CR_PT_Combination_ID=1000005
;

-- 17/04/2013 04:32:19 PM VET
-- LVE Retention
UPDATE CUST_CR_PT_Combination SET Value='026',Updated=TO_TIMESTAMP('2013-04-17 16:32:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE CUST_CR_PT_Combination_ID=1000006
;

-- 17/04/2013 04:32:27 PM VET
-- LVE Retention
UPDATE CUST_CR_PT_Combination SET Value='053',Updated=TO_TIMESTAMP('2013-04-17 16:32:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE CUST_CR_PT_Combination_ID=1000007
;

-- 17/04/2013 04:32:36 PM VET
-- LVE Retention
UPDATE CUST_CR_PT_Combination SET Value='057',Updated=TO_TIMESTAMP('2013-04-17 16:32:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE CUST_CR_PT_Combination_ID=1000008
;

-- 17/04/2013 04:34:01 PM VET
-- LVE Retention
UPDATE CUST_CR_PT_Combination SET Value='026',Updated=TO_TIMESTAMP('2013-04-17 16:34:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE CUST_CR_PT_Combination_ID=1000029
;

-- 17/04/2013 04:34:31 PM VET
-- LVE Retention
UPDATE CUST_CR_PT_Combination SET Value='057',Updated=TO_TIMESTAMP('2013-04-17 16:34:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE CUST_CR_PT_Combination_ID=1000006
;

-- 17/04/2013 04:34:55 PM VET
-- LVE Retention
UPDATE CUST_CR_PT_Combination SET Value='061',Updated=TO_TIMESTAMP('2013-04-17 16:34:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE CUST_CR_PT_Combination_ID=1000007
;

-- 17/04/2013 04:35:12 PM VET
-- LVE Retention
UPDATE CUST_CR_PT_Combination SET Value='065',Updated=TO_TIMESTAMP('2013-04-17 16:35:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE CUST_CR_PT_Combination_ID=1000008
;

-- 17/04/2013 04:35:32 PM VET
-- LVE Retention
UPDATE CUST_CR_PT_Combination SET Value='073',Updated=TO_TIMESTAMP('2013-04-17 16:35:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE CUST_CR_PT_Combination_ID=1000010
;

-- 17/04/2013 04:35:44 PM VET
-- LVE Retention
UPDATE CUST_CR_PT_Combination SET Value='079',Updated=TO_TIMESTAMP('2013-04-17 16:35:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE CUST_CR_PT_Combination_ID=1000011
;

-- 17/04/2013 04:36:10 PM VET
-- LVE Retention
DELETE FROM CUST_CR_PT_Combination WHERE CUST_CR_PT_Combination_ID=1000012
;

-- 17/04/2013 04:37:42 PM VET
-- LVE Retention
--INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (1000002,0,3000210,TO_TIMESTAMP('2013-04-17 16:37:41','YYYY-MM-DD HH24:MI:SS'),100,1000001,50000,'DocumentNo/Value for Table CUST_CR_PT_Combination',1,'Y','N','Y','N','DocumentNo_CUST_CR_PT_Combination','N',1000000,TO_TIMESTAMP('2013-04-17 16:37:41','YYYY-MM-DD HH24:MI:SS'),100)
--;

-- 17/04/2013 04:37:42 PM VET
-- LVE Retention
INSERT INTO CUST_CR_PT_Combination (AD_Client_ID,AD_Org_ID,Created,CreatedBy,CUST_ConceptRetention_ID,CUST_CR_PT_Combination_ID,CUST_PersonType_ID,CUST_RetentionConfig_ID,IsActive,Updated,UpdatedBy,Value) VALUES (1000002,1000002,TO_TIMESTAMP('2013-04-17 16:37:41','YYYY-MM-DD HH24:MI:SS'),100,1000012,3000201,1000000,1000008,'Y',TO_TIMESTAMP('2013-04-17 16:37:41','YYYY-MM-DD HH24:MI:SS'),100,'1000000')
;

-- 17/04/2013 04:37:48 PM VET
-- LVE Retention
UPDATE CUST_CR_PT_Combination SET Value='083',Updated=TO_TIMESTAMP('2013-04-17 16:37:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE CUST_CR_PT_Combination_ID=3000201
;

-- 17/04/2013 04:46:14 PM VET
-- LVE Retention
UPDATE CUST_CR_PT_Combination SET Value='IVA75',Updated=TO_TIMESTAMP('2013-04-17 16:46:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE CUST_CR_PT_Combination_ID=1000038
;

-- 17/04/2013 04:46:21 PM VET
-- LVE Retention
UPDATE CUST_CR_PT_Combination SET Value='IVA100',Updated=TO_TIMESTAMP('2013-04-17 16:46:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE CUST_CR_PT_Combination_ID=1000037
;

