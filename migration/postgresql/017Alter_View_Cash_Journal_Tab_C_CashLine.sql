
-- Apr 12, 2013 12:09:12 PM VET
-- LVE Retention
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000268,3000246,0,339,TO_TIMESTAMP('2013-04-12 12:09:10','YYYY-MM-DD HH24:MI:SS'),100,'Account Number',20,'ECA02','The Account Number indicates the Number assigned to this bank account. ','Y','Y','Y','N','N','N','N','N','Account No',TO_TIMESTAMP('2013-04-12 12:09:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 12, 2013 12:09:12 PM VET
-- LVE Retention
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000246 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Apr 12, 2013 12:09:14 PM VET
-- LVE Retention
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000270,3000247,0,339,TO_TIMESTAMP('2013-04-12 12:09:12','YYYY-MM-DD HH24:MI:SS'),100,'Business Activity',22,'ECA02','Activities indicate tasks that are performed and used to utilize Activity based Costing','Y','Y','Y','N','N','N','N','N','Activity',TO_TIMESTAMP('2013-04-12 12:09:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 12, 2013 12:09:14 PM VET
-- LVE Retention
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000247 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Apr 12, 2013 12:09:15 PM VET
-- LVE Retention
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000269,3000248,0,339,TO_TIMESTAMP('2013-04-12 12:09:14','YYYY-MM-DD HH24:MI:SS'),100,1,'ECA02','Y','Y','Y','N','N','N','N','N','Affects Book',TO_TIMESTAMP('2013-04-12 12:09:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 12, 2013 12:09:15 PM VET
-- LVE Retention
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000248 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Apr 12, 2013 12:09:15 PM VET
-- LVE Retention
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000271,3000249,0,339,TO_TIMESTAMP('2013-04-12 12:09:15','YYYY-MM-DD HH24:MI:SS'),100,'Bank',22,'ECA02','The Bank is a unique identifier of a Bank for this Organization or for a Business Partner with whom this Organization transacts.','Y','Y','Y','N','N','N','N','N','Bank',TO_TIMESTAMP('2013-04-12 12:09:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 12, 2013 12:09:15 PM VET
-- LVE Retention
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000249 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Apr 12, 2013 12:09:17 PM VET
-- LVE Retention
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000267,3000250,0,339,TO_TIMESTAMP('2013-04-12 12:09:15','YYYY-MM-DD HH24:MI:SS'),100,22,'ECA02','Y','Y','Y','N','N','N','N','N','Base Amount',TO_TIMESTAMP('2013-04-12 12:09:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 12, 2013 12:09:17 PM VET
-- LVE Retention
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000250 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Apr 12, 2013 12:09:18 PM VET
-- LVE Retention
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000272,3000251,0,339,TO_TIMESTAMP('2013-04-12 12:09:17','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner',22,'ECA02','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','Y','N','N','N','N','N','Business Partner ',TO_TIMESTAMP('2013-04-12 12:09:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 12, 2013 12:09:18 PM VET
-- LVE Retention
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000251 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Apr 12, 2013 12:09:20 PM VET
-- LVE Retention
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000273,3000252,0,339,TO_TIMESTAMP('2013-04-12 12:09:18','YYYY-MM-DD HH24:MI:SS'),100,'Check Number',20,'ECA02','The Check Number indicates the number on the check.','Y','Y','Y','N','N','N','N','N','Check No',TO_TIMESTAMP('2013-04-12 12:09:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 12, 2013 12:09:20 PM VET
-- LVE Retention
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000252 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Apr 12, 2013 12:09:21 PM VET
-- LVE Retention
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000275,3000253,0,339,TO_TIMESTAMP('2013-04-12 12:09:20','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document',7,'ECA02','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Y','Y','Y','N','N','N','N','N','Document Date',TO_TIMESTAMP('2013-04-12 12:09:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 12, 2013 12:09:21 PM VET
-- LVE Retention
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000253 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Apr 12, 2013 12:09:22 PM VET
-- LVE Retention
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000276,3000254,0,339,TO_TIMESTAMP('2013-04-12 12:09:21','YYYY-MM-DD HH24:MI:SS'),100,'Over-Payment (unallocated) or Under-Payment (partial payment)',1,'ECA02','Overpayments (negative) are unallocated amounts and allow you to receive money for more than the particular invoice. 
Underpayments (positive) is a partial payment for the invoice. You do not write off the unpaid amount.','Y','Y','Y','N','N','N','N','N','Over/Under Payment',TO_TIMESTAMP('2013-04-12 12:09:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 12, 2013 12:09:22 PM VET
-- LVE Retention
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000254 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Apr 12, 2013 12:09:25 PM VET
-- LVE Retention
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,54090,3000255,0,339,TO_TIMESTAMP('2013-04-12 12:09:22','YYYY-MM-DD HH24:MI:SS'),100,'Payment identifier',10,'D','The Payment is a unique identifier of this payment.','Y','Y','Y','N','N','N','N','N','Payment',TO_TIMESTAMP('2013-04-12 12:09:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 12, 2013 12:09:25 PM VET
-- LVE Retention
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000255 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Apr 12, 2013 12:09:27 PM VET
-- LVE Retention
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000277,3000256,0,339,TO_TIMESTAMP('2013-04-12 12:09:25','YYYY-MM-DD HH24:MI:SS'),100,'Your customer or vendor number at the Business Partner''s site',40,'ECA02','The reference number can be printed on orders and invoices to allow your business partner to faster identify your records.','Y','Y','Y','N','N','N','N','N','Reference No',TO_TIMESTAMP('2013-04-12 12:09:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 12, 2013 12:09:27 PM VET
-- LVE Retention
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000256 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Apr 12, 2013 12:09:30 PM VET
-- LVE Retention
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000274,3000257,0,339,TO_TIMESTAMP('2013-04-12 12:09:27','YYYY-MM-DD HH24:MI:SS'),100,'Tax identifier',22,'ECA02','The Tax indicates the type of tax used in document line.','Y','Y','Y','N','N','N','N','N','Tax',TO_TIMESTAMP('2013-04-12 12:09:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 12, 2013 12:09:30 PM VET
-- LVE Retention
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000257 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Apr 12, 2013 12:09:33 PM VET
-- LVE Retention
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000278,3000258,0,339,TO_TIMESTAMP('2013-04-12 12:09:30','YYYY-MM-DD HH24:MI:SS'),100,'Tax Amount for a document',22,'ECA02','The Tax Amount displays the total tax amount for a document.','Y','Y','Y','N','N','N','N','N','Tax Amount',TO_TIMESTAMP('2013-04-12 12:09:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 12, 2013 12:09:33 PM VET
-- LVE Retention
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000258 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

--Control Number

-- Apr 11, 2013 10:14:31 AM VET
-- LVE Retention
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,3000279,3000259,0,339,TO_TIMESTAMP('2013-04-11 10:14:30','YYYY-MM-DD HH24:MI:SS'),100,'Control No for Physical Record',15,'ECA02','Y','Y','Y','N','N','N','N','N','Control No',TO_TIMESTAMP('2013-04-11 10:14:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 11, 2013 10:14:31 AM VET
-- LVE Retention
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000259 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;


-- Apr 12, 2013 12:12:33 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-04-12 12:12:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5118
;

-- Apr 12, 2013 12:12:33 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-04-12 12:12:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000255
;

-- Apr 12, 2013 12:12:33 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-04-12 12:12:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=10323
;

-- Apr 12, 2013 12:12:33 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=10,Updated=TO_TIMESTAMP('2013-04-12 12:12:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4191
;

-- Apr 12, 2013 12:12:33 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=20,Updated=TO_TIMESTAMP('2013-04-12 12:12:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4192
;

-- Apr 12, 2013 12:12:33 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=30,Updated=TO_TIMESTAMP('2013-04-12 12:12:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4195
;

-- Apr 12, 2013 12:12:33 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=40,Updated=TO_TIMESTAMP('2013-04-12 12:12:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4201
;

-- Apr 12, 2013 12:12:33 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=50,Updated=TO_TIMESTAMP('2013-04-12 12:12:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4198
;

-- Apr 12, 2013 12:12:33 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=60,Updated=TO_TIMESTAMP('2013-04-12 12:12:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000248
;

-- Apr 12, 2013 12:12:33 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=70,Updated=TO_TIMESTAMP('2013-04-12 12:12:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000251
;

-- Apr 12, 2013 12:12:33 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=80,Updated=TO_TIMESTAMP('2013-04-12 12:12:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4199
;

-- Apr 12, 2013 12:12:33 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=90,Updated=TO_TIMESTAMP('2013-04-12 12:12:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000256
;

-- Apr 12, 2013 12:12:34 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2013-04-12 12:12:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4250
;

-- Apr 12, 2013 12:12:34 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_TIMESTAMP('2013-04-12 12:12:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4194
;

-- Apr 12, 2013 12:12:34 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_TIMESTAMP('2013-04-12 12:12:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000253
;

-- Apr 12, 2013 12:12:34 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_TIMESTAMP('2013-04-12 12:12:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000250
;

-- Apr 12, 2013 12:12:34 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_TIMESTAMP('2013-04-12 12:12:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4193
;

-- Apr 12, 2013 12:12:34 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_TIMESTAMP('2013-04-12 12:12:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000254
;

-- Apr 12, 2013 12:12:34 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_TIMESTAMP('2013-04-12 12:12:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5119
;

-- Apr 12, 2013 12:12:34 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_TIMESTAMP('2013-04-12 12:12:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5120
;

-- Apr 12, 2013 12:12:34 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_TIMESTAMP('2013-04-12 12:12:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000247
;

-- Apr 12, 2013 12:12:34 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_TIMESTAMP('2013-04-12 12:12:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000257
;

-- Apr 12, 2013 12:12:34 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210,Updated=TO_TIMESTAMP('2013-04-12 12:12:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000258
;

--Test
-- Apr 12, 2013 12:22:11 PM VET
-- LVE Retention
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-04-12 12:22:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000248
;

-- Apr 12, 2013 12:22:39 PM VET
-- LVE Retention
UPDATE AD_Field SET DisplayLength=60, DisplayLogic='@CashType@!I', IsMandatory='Y',Updated=TO_TIMESTAMP('2013-04-12 12:22:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000251
;

-- Apr 12, 2013 12:23:04 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-04-12 12:23:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4200
;

-- Apr 12, 2013 12:23:04 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-04-12 12:23:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4196
;

-- Apr 12, 2013 12:23:04 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=100,Updated=TO_TIMESTAMP('2013-04-12 12:23:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000259
;

-- Apr 12, 2013 12:23:04 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=110,Updated=TO_TIMESTAMP('2013-04-12 12:23:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4250
;

-- Apr 12, 2013 12:23:05 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=120,Updated=TO_TIMESTAMP('2013-04-12 12:23:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4194
;

-- Apr 12, 2013 12:23:05 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_TIMESTAMP('2013-04-12 12:23:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5331
;

-- Apr 12, 2013 12:23:05 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_TIMESTAMP('2013-04-12 12:23:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000253
;

-- Apr 12, 2013 12:23:05 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_TIMESTAMP('2013-04-12 12:23:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000250
;

-- Apr 12, 2013 12:23:05 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_TIMESTAMP('2013-04-12 12:23:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4197
;

-- Apr 12, 2013 12:23:05 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_TIMESTAMP('2013-04-12 12:23:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4193
;

-- Apr 12, 2013 12:23:05 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_TIMESTAMP('2013-04-12 12:23:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000254
;

-- Apr 12, 2013 12:23:05 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_TIMESTAMP('2013-04-12 12:23:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5119
;

-- Apr 12, 2013 12:23:05 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_TIMESTAMP('2013-04-12 12:23:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5120
;

-- Apr 12, 2013 12:23:05 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210,Updated=TO_TIMESTAMP('2013-04-12 12:23:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000247
;

-- Apr 12, 2013 12:23:05 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220,Updated=TO_TIMESTAMP('2013-04-12 12:23:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000257
;

-- Apr 12, 2013 12:23:05 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=230,Updated=TO_TIMESTAMP('2013-04-12 12:23:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000258
;

-- Apr 12, 2013 12:23:05 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=240,Updated=TO_TIMESTAMP('2013-04-12 12:23:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000246
;

-- Apr 12, 2013 12:23:05 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=250,Updated=TO_TIMESTAMP('2013-04-12 12:23:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000249
;

-- Apr 12, 2013 12:23:05 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=260,Updated=TO_TIMESTAMP('2013-04-12 12:23:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000252
;

-- Apr 12, 2013 12:23:18 PM VET
-- LVE Retention
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-04-12 12:23:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000259
;

-- Apr 12, 2013 12:24:05 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-04-12 12:24:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5331
;

-- Apr 12, 2013 12:24:05 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=130,Updated=TO_TIMESTAMP('2013-04-12 12:24:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000253
;

-- Apr 12, 2013 12:24:05 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=140,Updated=TO_TIMESTAMP('2013-04-12 12:24:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000250
;

-- Apr 12, 2013 12:24:05 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=150,Updated=TO_TIMESTAMP('2013-04-12 12:24:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4197
;

-- Apr 12, 2013 12:24:05 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=160,Updated=TO_TIMESTAMP('2013-04-12 12:24:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4193
;

-- Apr 12, 2013 12:24:05 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=170,Updated=TO_TIMESTAMP('2013-04-12 12:24:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000254
;

-- Apr 12, 2013 12:24:05 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=180,Updated=TO_TIMESTAMP('2013-04-12 12:24:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5119
;

-- Apr 12, 2013 12:24:05 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=190,Updated=TO_TIMESTAMP('2013-04-12 12:24:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=5120
;

-- Apr 12, 2013 12:24:05 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=200,Updated=TO_TIMESTAMP('2013-04-12 12:24:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000247
;

-- Apr 12, 2013 12:24:05 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=210,Updated=TO_TIMESTAMP('2013-04-12 12:24:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000257
;

-- Apr 12, 2013 12:24:06 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=220,Updated=TO_TIMESTAMP('2013-04-12 12:24:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000258
;

-- Apr 12, 2013 12:24:06 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=230,Updated=TO_TIMESTAMP('2013-04-12 12:24:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000246
;

-- Apr 12, 2013 12:24:06 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=240,Updated=TO_TIMESTAMP('2013-04-12 12:24:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000249
;

-- Apr 12, 2013 12:24:06 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='Y', SeqNo=250,Updated=TO_TIMESTAMP('2013-04-12 12:24:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000252
;

-- Apr 12, 2013 12:24:26 PM VET
-- LVE Retention
UPDATE AD_Field SET DisplayLogic='@CashType@=''C'' | @CashType@=''E''',Updated=TO_TIMESTAMP('2013-04-12 12:24:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000253
;

-- Apr 12, 2013 12:24:31 PM VET
-- LVE Retention
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-04-12 12:24:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000250
;

-- Apr 12, 2013 12:24:50 PM VET
-- LVE Retention
UPDATE AD_Field SET IsMandatory='Y', IsSameLine='N',Updated=TO_TIMESTAMP('2013-04-12 12:24:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4197
;

-- Apr 12, 2013 12:25:04 PM VET
-- LVE Retention
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-04-12 12:25:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=4193
;

-- Apr 12, 2013 12:25:14 PM VET
-- LVE Retention
UPDATE AD_Field SET DisplayLogic='@CashType@=I', IsSameLine='Y',Updated=TO_TIMESTAMP('2013-04-12 12:25:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000254
;

-- Apr 12, 2013 12:25:45 PM VET
-- LVE Retention
UPDATE AD_Field SET DisplayLogic='@$Element_AY@=Y', IsMandatory='Y',Updated=TO_TIMESTAMP('2013-04-12 12:25:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000247
;

-- Apr 12, 2013 12:26:01 PM VET
-- LVE Retention
UPDATE AD_Field SET DisplayLogic='@CashType@=C', IsMandatory='Y', IsSameLine='Y',Updated=TO_TIMESTAMP('2013-04-12 12:26:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000257
;

-- Apr 12, 2013 12:26:17 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-04-12 12:26:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000246
;

-- Apr 12, 2013 12:26:17 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-04-12 12:26:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000249
;

-- Apr 12, 2013 12:26:17 PM VET
-- LVE Retention
UPDATE AD_Field SET IsDisplayed='N', SeqNo=0,Updated=TO_TIMESTAMP('2013-04-12 12:26:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000252
;

-- 24/04/2013 11:30:44 AM VET
-- LVE Retention
UPDATE AD_Field SET IsMandatory='N',Updated=TO_TIMESTAMP('2013-04-24 11:30:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000251
;