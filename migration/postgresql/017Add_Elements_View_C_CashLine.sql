
-- 10/04/2013 05:33:01 PM VET
-- LVE Retention
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000240,3000227,0,339,TO_TIMESTAMP('2013-04-10 17:33:00','YYYY-MM-DD HH24:MI:SS'),100,'Account Number',20,'ECA02','The Account Number indicates the Number assigned to this bank account. ','Y','Y','Y','N','N','N','N','N','Account No',TO_TIMESTAMP('2013-04-10 17:33:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/04/2013 05:33:01 PM VET
-- LVE Retention
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000227 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 10/04/2013 05:33:01 PM VET
-- LVE Retention
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000236,3000228,0,339,TO_TIMESTAMP('2013-04-10 17:33:01','YYYY-MM-DD HH24:MI:SS'),100,'Business Activity',22,'ECA02','Activities indicate tasks that are performed and used to utilize Activity based Costing','Y','Y','Y','N','N','N','N','N','Activity',TO_TIMESTAMP('2013-04-10 17:33:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/04/2013 05:33:01 PM VET
-- LVE Retention
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000228 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 10/04/2013 05:33:01 PM VET
-- LVE Retention
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000244,3000229,0,339,TO_TIMESTAMP('2013-04-10 17:33:01','YYYY-MM-DD HH24:MI:SS'),100,'Determine if it affects the buying and selling books',1,'ECA02','Y','Y','Y','N','N','N','N','N','Affects Book',TO_TIMESTAMP('2013-04-10 17:33:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/04/2013 05:33:01 PM VET
-- LVE Retention
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000229 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 10/04/2013 05:33:02 PM VET
-- LVE Retention
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000237,3000230,0,339,TO_TIMESTAMP('2013-04-10 17:33:01','YYYY-MM-DD HH24:MI:SS'),100,'Bank',22,'ECA02','The Bank is a unique identifier of a Bank for this Organization or for a Business Partner with whom this Organization transacts.','Y','Y','Y','N','N','N','N','N','Bank',TO_TIMESTAMP('2013-04-10 17:33:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/04/2013 05:33:02 PM VET
-- LVE Retention
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000230 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 10/04/2013 05:33:02 PM VET
-- LVE Retention
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000246,3000231,0,339,TO_TIMESTAMP('2013-04-10 17:33:02','YYYY-MM-DD HH24:MI:SS'),100,22,'ECA02','Y','Y','Y','N','N','N','N','N','Base Amount',TO_TIMESTAMP('2013-04-10 17:33:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/04/2013 05:33:02 PM VET
-- LVE Retention
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000231 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 10/04/2013 05:33:03 PM VET
-- LVE Retention
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000238,3000232,0,339,TO_TIMESTAMP('2013-04-10 17:33:02','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner',22,'ECA02','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','Y','N','N','N','N','N','Business Partner ',TO_TIMESTAMP('2013-04-10 17:33:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/04/2013 05:33:03 PM VET
-- LVE Retention
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000232 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 10/04/2013 05:33:03 PM VET
-- LVE Retention
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000242,3000233,0,339,TO_TIMESTAMP('2013-04-10 17:33:03','YYYY-MM-DD HH24:MI:SS'),100,'Check Number',20,'ECA02','The Check Number indicates the number on the check.','Y','Y','Y','N','N','N','N','N','Check No',TO_TIMESTAMP('2013-04-10 17:33:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/04/2013 05:33:03 PM VET
-- LVE Retention
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000233 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 10/04/2013 05:33:03 PM VET
-- LVE Retention
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000245,3000234,0,339,TO_TIMESTAMP('2013-04-10 17:33:03','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document',7,'ECA02','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Y','Y','Y','N','N','N','N','N','Document Date',TO_TIMESTAMP('2013-04-10 17:33:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/04/2013 05:33:03 PM VET
-- LVE Retention
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000234 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 10/04/2013 05:33:04 PM VET
-- LVE Retention
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000241,3000235,0,339,TO_TIMESTAMP('2013-04-10 17:33:03','YYYY-MM-DD HH24:MI:SS'),100,'Over-Payment (unallocated) or Under-Payment (partial payment)',1,'ECA02','Overpayments (negative) are unallocated amounts and allow you to receive money for more than the particular invoice. 
Underpayments (positive) is a partial payment for the invoice. You do not write off the unpaid amount.','Y','Y','Y','N','N','N','N','N','Over/Under Payment',TO_TIMESTAMP('2013-04-10 17:33:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/04/2013 05:33:04 PM VET
-- LVE Retention
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000235 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 10/04/2013 05:33:04 PM VET
-- LVE Retention
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,54090,3000236,0,339,TO_TIMESTAMP('2013-04-10 17:33:04','YYYY-MM-DD HH24:MI:SS'),100,'Payment identifier',10,'D','The Payment is a unique identifier of this payment.','Y','Y','Y','N','N','N','N','N','Payment',TO_TIMESTAMP('2013-04-10 17:33:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/04/2013 05:33:04 PM VET
-- LVE Retention
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000236 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 10/04/2013 05:33:04 PM VET
-- LVE Retention
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000243,3000237,0,339,TO_TIMESTAMP('2013-04-10 17:33:04','YYYY-MM-DD HH24:MI:SS'),100,'Your customer or vendor number at the Business Partner''s site',40,'ECA02','The reference number can be printed on orders and invoices to allow your business partner to faster identify your records.','Y','Y','Y','N','N','N','N','N','Reference No',TO_TIMESTAMP('2013-04-10 17:33:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/04/2013 05:33:04 PM VET
-- LVE Retention
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000237 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 10/04/2013 05:33:05 PM VET
-- LVE Retention
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000239,3000238,0,339,TO_TIMESTAMP('2013-04-10 17:33:04','YYYY-MM-DD HH24:MI:SS'),100,'Tax identifier',22,'ECA02','The Tax indicates the type of tax used in document line.','Y','Y','Y','N','N','N','N','N','Tax',TO_TIMESTAMP('2013-04-10 17:33:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/04/2013 05:33:05 PM VET
-- LVE Retention
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000238 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 10/04/2013 05:35:40 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-04-10 17:35:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4200
;

-- 10/04/2013 05:35:40 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-04-10 17:35:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5118
;

-- 10/04/2013 05:35:40 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-04-10 17:35:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4196
;

-- 10/04/2013 05:35:41 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-04-10 17:35:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10323
;

-- 10/04/2013 05:35:41 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=10,Updated=TO_TIMESTAMP('2013-04-10 17:35:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4191
;

-- 10/04/2013 05:35:41 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=20,Updated=TO_TIMESTAMP('2013-04-10 17:35:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4192
;

-- 10/04/2013 05:35:41 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30,Updated=TO_TIMESTAMP('2013-04-10 17:35:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4195
;

-- 10/04/2013 05:35:41 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_TIMESTAMP('2013-04-10 17:35:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4201
;

-- 10/04/2013 05:35:41 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_TIMESTAMP('2013-04-10 17:35:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4199
;

-- 10/04/2013 05:35:41 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_TIMESTAMP('2013-04-10 17:35:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4198
;

-- 10/04/2013 05:35:41 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_TIMESTAMP('2013-04-10 17:35:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000229
;

-- 10/04/2013 05:35:41 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_TIMESTAMP('2013-04-10 17:35:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5331
;

-- 10/04/2013 05:35:41 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2013-04-10 17:35:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4193
;

-- 10/04/2013 05:35:41 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2013-04-10 17:35:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4194
;

-- 10/04/2013 05:35:41 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_TIMESTAMP('2013-04-10 17:35:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4197
;

-- 10/04/2013 05:35:41 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_TIMESTAMP('2013-04-10 17:35:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4250
;

-- 10/04/2013 05:35:41 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_TIMESTAMP('2013-04-10 17:35:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5119
;

-- 10/04/2013 05:35:41 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_TIMESTAMP('2013-04-10 17:35:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5120
;

-- 10/04/2013 05:35:41 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_TIMESTAMP('2013-04-10 17:35:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000227
;

-- 10/04/2013 05:35:41 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_TIMESTAMP('2013-04-10 17:35:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000228
;

-- 10/04/2013 05:35:41 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_TIMESTAMP('2013-04-10 17:35:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000230
;

-- 10/04/2013 05:35:41 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_TIMESTAMP('2013-04-10 17:35:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000231
;

-- 10/04/2013 05:35:42 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_TIMESTAMP('2013-04-10 17:35:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000232
;

-- 10/04/2013 05:35:42 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_TIMESTAMP('2013-04-10 17:35:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000233
;

-- 10/04/2013 05:35:42 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210,Updated=TO_TIMESTAMP('2013-04-10 17:35:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000234
;

-- 10/04/2013 05:35:42 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220,Updated=TO_TIMESTAMP('2013-04-10 17:35:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000235
;

-- 10/04/2013 05:35:42 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=230,Updated=TO_TIMESTAMP('2013-04-10 17:35:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000236
;

-- 10/04/2013 05:35:42 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=240,Updated=TO_TIMESTAMP('2013-04-10 17:35:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000237
;

-- 10/04/2013 05:35:42 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=250,Updated=TO_TIMESTAMP('2013-04-10 17:35:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000238
;

-- 10/04/2013 05:45:02 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-04-10 17:45:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000227
;

-- 10/04/2013 05:45:02 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-04-10 17:45:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000230
;

-- 10/04/2013 05:45:02 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-04-10 17:45:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000233
;

-- 10/04/2013 05:45:02 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-04-10 17:45:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5331
;

-- 10/04/2013 05:45:02 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-04-10 17:45:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000236
;

-- 10/04/2013 05:45:02 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_TIMESTAMP('2013-04-10 17:45:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4198
;

-- 10/04/2013 05:45:02 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_TIMESTAMP('2013-04-10 17:45:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000229
;

-- 10/04/2013 05:45:02 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_TIMESTAMP('2013-04-10 17:45:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000232
;

-- 10/04/2013 05:45:02 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_TIMESTAMP('2013-04-10 17:45:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4199
;

-- 10/04/2013 05:45:02 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2013-04-10 17:45:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000237
;

-- 10/04/2013 05:45:02 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2013-04-10 17:45:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4250
;

-- 10/04/2013 05:45:02 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_TIMESTAMP('2013-04-10 17:45:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4194
;

-- 10/04/2013 05:45:02 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_TIMESTAMP('2013-04-10 17:45:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000234
;

-- 10/04/2013 05:45:02 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_TIMESTAMP('2013-04-10 17:45:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000231
;

-- 10/04/2013 05:45:02 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_TIMESTAMP('2013-04-10 17:45:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4197
;

-- 10/04/2013 05:45:02 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_TIMESTAMP('2013-04-10 17:45:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4193
;

-- 10/04/2013 05:45:02 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_TIMESTAMP('2013-04-10 17:45:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000235
;

-- 10/04/2013 05:45:02 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_TIMESTAMP('2013-04-10 17:45:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5119
;

-- 10/04/2013 05:45:03 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_TIMESTAMP('2013-04-10 17:45:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5120
;

-- 10/04/2013 05:45:03 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_TIMESTAMP('2013-04-10 17:45:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000238
;

-- 10/04/2013 05:45:03 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_TIMESTAMP('2013-04-10 17:45:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000228
;

-- 10/04/2013 05:56:27 PM VET
-- LVE Retention
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-04-10 17:56:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000229
;

-- 10/04/2013 05:56:51 PM VET
-- LVE Retention
UPDATE AD_Field SET DisplayLogic='@CashType@!I', IsMandatory='Y',Updated=TO_TIMESTAMP('2013-04-10 17:56:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000232
;

-- 10/04/2013 05:58:28 PM VET
-- LVE Retention
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2013-04-10 17:58:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4194
;

-- 10/04/2013 05:58:58 PM VET
-- LVE Retention
UPDATE AD_Field SET DisplayLogic='@CashType@=''C'' | @CashType@=''E''', IsSameLine='Y',Updated=TO_TIMESTAMP('2013-04-10 17:58:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000234
;

-- 10/04/2013 05:59:19 PM VET
-- LVE Retention
UPDATE AD_Field SET DisplayLogic='@CashType@=''C''', IsSameLine='Y',Updated=TO_TIMESTAMP('2013-04-10 17:59:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000231
;

-- 10/04/2013 05:59:27 PM VET
-- LVE Retention
UPDATE AD_Field SET IsMandatory='Y',Updated=TO_TIMESTAMP('2013-04-10 17:59:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4197
;

-- 10/04/2013 05:59:42 PM VET
-- LVE Retention
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-04-10 17:59:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4193
;

-- 10/04/2013 06:00:11 PM VET
-- LVE Retention
UPDATE AD_Field SET DisplayLogic='@CashType@=I', IsSameLine='Y',Updated=TO_TIMESTAMP('2013-04-10 18:00:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000235
;

-- 10/04/2013 06:01:25 PM VET
-- LVE Retention
UPDATE AD_Field SET DisplayLogic='@$Element_AY@=Y', IsMandatory='Y',Updated=TO_TIMESTAMP('2013-04-10 18:01:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000228
;

-- 10/04/2013 06:01:42 PM VET
-- LVE Retention
UPDATE AD_Field SET DisplayLogic='@CashType@=C', IsMandatory='Y', IsSameLine='Y',Updated=TO_TIMESTAMP('2013-04-10 18:01:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000238
;

-- 10/04/2013 06:08:09 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_TIMESTAMP('2013-04-10 18:08:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4198
;

-- 10/04/2013 06:08:09 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_TIMESTAMP('2013-04-10 18:08:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4201
;

-- 10/04/2013 06:08:28 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_TIMESTAMP('2013-04-10 18:08:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4201
;

-- 10/04/2013 06:08:28 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_TIMESTAMP('2013-04-10 18:08:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4198
;

-- 10/04/2013 06:10:27 PM VET
-- LVE Retention
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2013-04-10 18:10:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4197
;

-- 11/04/2013 08:35:38 AM VET
-- LVE Retention
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2013-04-11 08:35:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000238
;

-- 11/04/2013 08:41:33 AM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_TIMESTAMP('2013-04-11 08:41:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000228
;

-- 11/04/2013 08:41:34 AM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_TIMESTAMP('2013-04-11 08:41:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000238
;

-- 11/04/2013 08:41:41 AM VET
-- LVE Retention
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-04-11 08:41:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000238
;

-- 11/04/2013 09:07:31 AM VET
-- LVE Retention
UPDATE AD_Field SET DisplayLength=0,Updated=TO_TIMESTAMP('2013-04-11 09:07:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000232
;

-- 11/04/2013 09:09:45 AM VET
-- LVE Retention
UPDATE AD_Field SET DisplayLength=60,Updated=TO_TIMESTAMP('2013-04-11 09:09:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000232
;


-- Apr 11, 2013 10:14:31 AM VET
-- LVE Retention
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000247,3000239,0,339,TO_TIMESTAMP('2013-04-11 10:14:30','YYYY-MM-DD HH24:MI:SS'),100,'Control No for Physical Record',15,'ECA02','Y','Y','Y','N','N','N','N','N','Control No',TO_TIMESTAMP('2013-04-11 10:14:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 11, 2013 10:14:31 AM VET
-- LVE Retention
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000239 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Apr 11, 2013 10:14:31 AM VET
-- LVE Retention
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000248,3000240,0,339,TO_TIMESTAMP('2013-04-11 10:14:31','YYYY-MM-DD HH24:MI:SS'),100,'Tax Amount for a document',22,'ECA02','The Tax Amount displays the total tax amount for a document.','Y','Y','Y','N','N','N','N','N','Tax Amount',TO_TIMESTAMP('2013-04-11 10:14:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 11, 2013 10:14:31 AM VET
-- LVE Retention
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000240 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;


-- Apr 11, 2013 10:15:01 AM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2013-04-11 10:15:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000239
;

-- Apr 11, 2013 10:15:02 AM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_TIMESTAMP('2013-04-11 10:15:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4250
;

-- Apr 11, 2013 10:15:02 AM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_TIMESTAMP('2013-04-11 10:15:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4194
;

-- Apr 11, 2013 10:15:02 AM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_TIMESTAMP('2013-04-11 10:15:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000234
;

-- Apr 11, 2013 10:15:02 AM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_TIMESTAMP('2013-04-11 10:15:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000231
;

-- Apr 11, 2013 10:15:02 AM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_TIMESTAMP('2013-04-11 10:15:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4197
;

-- Apr 11, 2013 10:15:02 AM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_TIMESTAMP('2013-04-11 10:15:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4193
;

-- Apr 11, 2013 10:15:02 AM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_TIMESTAMP('2013-04-11 10:15:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000235
;

-- Apr 11, 2013 10:15:02 AM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_TIMESTAMP('2013-04-11 10:15:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5119
;

-- Apr 11, 2013 10:15:02 AM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_TIMESTAMP('2013-04-11 10:15:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5120
;

-- Apr 11, 2013 10:15:02 AM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_TIMESTAMP('2013-04-11 10:15:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000228
;

-- Apr 11, 2013 10:15:02 AM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210,Updated=TO_TIMESTAMP('2013-04-11 10:15:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000238
;

-- Apr 11, 2013 10:15:02 AM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220,Updated=TO_TIMESTAMP('2013-04-11 10:15:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000240
;
-- Apr 11, 2013 10:16:11 AM VET
-- LVE Retention
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-04-11 10:16:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000239
;

-- Apr 11, 2013 10:28:59 AM VET
-- LVE Retention
UPDATE AD_Field SET DisplayLength=0,Updated=TO_TIMESTAMP('2013-04-11 10:28:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000237
;

-- Apr 11, 2013 10:32:01 AM VET
-- LVE Retention
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2013-04-11 10:32:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000234
;

-- Apr 11, 2013 10:32:32 AM VET
-- LVE Retention
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2013-04-11 10:32:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4193
;

-- Apr 11, 2013 10:33:38 AM VET
-- LVE Retention
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-04-11 10:33:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4193
;

-- Apr 11, 2013 10:33:43 AM VET
-- LVE Retention
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2013-04-11 10:33:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4250
;

