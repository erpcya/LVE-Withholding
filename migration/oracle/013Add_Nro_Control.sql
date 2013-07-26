-- Apr 4, 2013 5:09:32 PM VET
-- LVE Retention
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,3000216,0,'ControlNo',TO_DATE('2013-04-04 17:09:29','YYYY-MM-DD HH24:MI:SS'),100,'Control No for Physical Record','ECA02','Y','Control No','Control No',TO_DATE('2013-04-04 17:09:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 4, 2013 5:09:33 PM VET
-- LVE Retention
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=3000216 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Apr 4, 2013 5:11:11 PM VET
-- LVE Retention
UPDATE AD_Element_Trl SET Name='No. Control',PrintName='No. Control',Description='No. Control, para el Registro Físico',Updated=TO_DATE('2013-04-04 17:11:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=3000216 AND AD_Language='es_MX'
;

-- Apr 4, 2013 5:12:08 PM VET
-- LVE Retention
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000234,3000216,0,10,318,'ControlNo',TO_DATE('2013-04-04 17:12:06','YYYY-MM-DD HH24:MI:SS'),100,'Control No for Physical Record','ECA02',60,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Control No',0,TO_DATE('2013-04-04 17:12:06','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Apr 4, 2013 5:12:08 PM VET
-- LVE Retention
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000234 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Apr 4, 2013 5:12:25 PM VET
-- LVE Retention
ALTER TABLE C_Invoice ADD ControlNo NVARCHAR2(60) DEFAULT NULL 
;

-- Apr 4, 2013 5:18:20 PM VET
-- LVE Retention
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,HideInListView,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,PreferredWidth,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,3000234,3000224,0,290,TO_DATE('2013-04-04 17:18:19','YYYY-MM-DD HH24:MI:SS'),100,'Control No for Physical Record',0,'ECA02','N','Y','Y','Y','N','N','N','N','N','Control No',0,420,0,TO_DATE('2013-04-04 17:18:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 4, 2013 5:18:20 PM VET
-- LVE Retention
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000224 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Apr 4, 2013 5:22:41 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=3338
;

-- Apr 4, 2013 5:22:41 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=3000224
;

-- Apr 4, 2013 5:22:41 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=3352
;

-- Apr 4, 2013 5:22:41 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=3344
;

-- Apr 4, 2013 5:22:41 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=3000062
;

-- Apr 4, 2013 5:22:41 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=3348
;

-- Apr 4, 2013 5:22:41 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=3333
;

-- Apr 4, 2013 5:22:41 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=3325
;

-- Apr 4, 2013 5:22:41 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=3326
;

-- Apr 4, 2013 5:22:41 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=3324
;

-- Apr 4, 2013 5:22:41 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=3350
;

-- Apr 4, 2013 5:22:42 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=3328
;

-- Apr 4, 2013 5:22:42 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=8649
;

-- Apr 4, 2013 5:22:42 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=3322
;

-- Apr 4, 2013 5:22:42 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=3355
;

-- Apr 4, 2013 5:22:42 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=3354
;

-- Apr 4, 2013 5:22:42 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=3346
;

-- Apr 4, 2013 5:22:42 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=3353
;

-- Apr 4, 2013 5:22:42 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=3331
;

-- Apr 4, 2013 5:22:42 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=4246
;

-- Apr 4, 2013 5:22:42 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=4247
;

-- Apr 4, 2013 5:22:42 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=3332
;

-- Apr 4, 2013 5:22:42 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=3323
;

-- Apr 4, 2013 5:22:42 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=3327
;

-- Apr 4, 2013 5:22:42 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=6936
;

-- Apr 4, 2013 5:22:42 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=7796
;

-- Apr 4, 2013 5:22:42 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=7797
;

-- Apr 4, 2013 5:22:42 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=3343
;

-- Apr 4, 2013 5:22:42 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=3337
;

-- Apr 4, 2013 5:22:42 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=3335
;

-- Apr 4, 2013 5:22:42 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=3329
;

-- Apr 4, 2013 5:22:42 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=10486
;

-- Apr 4, 2013 5:22:42 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=6532
;

-- Apr 4, 2013 5:22:42 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=3334
;

-- Apr 4, 2013 5:22:42 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=3670
;

-- Apr 4, 2013 5:22:42 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=3900
;

-- Apr 4, 2013 5:22:53 PM VET
-- LVE Retention
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-04-04 17:22:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000224
;

-- Apr 4, 2013 5:24:17 PM VET
-- LVE Retention
UPDATE AD_Field SET IsSameLine='N',Updated=TO_DATE('2013-04-04 17:24:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3338
;

-- Apr 4, 2013 5:25:35 PM VET
-- LVE Retention
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,HideInListView,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,PreferredWidth,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,3000234,3000225,0,263,TO_DATE('2013-04-04 17:25:34','YYYY-MM-DD HH24:MI:SS'),100,'Control No for Physical Record',0,'ECA02','N','Y','Y','Y','N','N','N','N','Y','Control No',0,430,0,TO_DATE('2013-04-04 17:25:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 4, 2013 5:25:35 PM VET
-- LVE Retention
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=3000225 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- Apr 4, 2013 5:27:44 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=3000225
;

-- Apr 4, 2013 5:27:44 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=2959
;

-- Apr 4, 2013 5:27:44 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=2954
;

-- Apr 4, 2013 5:27:44 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=6565
;

-- Apr 4, 2013 5:27:44 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=2958
;

-- Apr 4, 2013 5:27:44 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=2776
;

-- Apr 4, 2013 5:27:44 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=2766
;

-- Apr 4, 2013 5:27:44 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=2767
;

-- Apr 4, 2013 5:27:44 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=2765
;

-- Apr 4, 2013 5:27:44 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=2961
;

-- Apr 4, 2013 5:27:44 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=2770
;

-- Apr 4, 2013 5:27:44 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=8648
;

-- Apr 4, 2013 5:27:44 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=2763
;

-- Apr 4, 2013 5:27:44 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=3273
;

-- Apr 4, 2013 5:27:44 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=2953
;

-- Apr 4, 2013 5:27:44 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=2956
;

-- Apr 4, 2013 5:27:44 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=3112
;

-- Apr 4, 2013 5:27:44 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=2774
;

-- Apr 4, 2013 5:27:44 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=2775
;

-- Apr 4, 2013 5:27:44 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=2764
;

-- Apr 4, 2013 5:27:44 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=2768
;

-- Apr 4, 2013 5:27:44 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=6935
;

-- Apr 4, 2013 5:27:44 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=7794
;

-- Apr 4, 2013 5:27:44 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=7795
;

-- Apr 4, 2013 5:27:44 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=2786
;

-- Apr 4, 2013 5:27:44 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=2780
;

-- Apr 4, 2013 5:27:44 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=2778
;

-- Apr 4, 2013 5:27:44 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=2771
;

-- Apr 4, 2013 5:27:44 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=8657
;

-- Apr 4, 2013 5:27:44 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=10485
;

-- Apr 4, 2013 5:27:44 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=6564
;

-- Apr 4, 2013 5:27:44 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=2777
;

-- Apr 4, 2013 5:27:44 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=3663
;

-- Apr 4, 2013 5:27:44 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=3899
;

-- Apr 4, 2013 5:27:44 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=13700
;

-- Apr 4, 2013 5:27:44 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=53257
;

-- Apr 4, 2013 5:27:44 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=53258
;

-- Apr 4, 2013 5:28:07 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=2781
;

-- Apr 4, 2013 5:28:07 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=3000225
;

-- Apr 4, 2013 5:28:07 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=2959
;

-- Apr 4, 2013 5:28:07 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=2954
;

-- Apr 4, 2013 5:28:07 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=6565
;

-- Apr 4, 2013 5:28:07 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=2958
;

-- Apr 4, 2013 5:28:07 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=2776
;

-- Apr 4, 2013 5:28:07 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=2766
;

-- Apr 4, 2013 5:28:07 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=2767
;

-- Apr 4, 2013 5:28:07 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=2765
;

-- Apr 4, 2013 5:28:07 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=2961
;

-- Apr 4, 2013 5:28:07 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=2770
;

-- Apr 4, 2013 5:28:07 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=8648
;

-- Apr 4, 2013 5:28:07 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=2763
;

-- Apr 4, 2013 5:28:07 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=3273
;

-- Apr 4, 2013 5:28:07 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=2953
;

-- Apr 4, 2013 5:28:07 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=2956
;

-- Apr 4, 2013 5:28:07 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=3112
;

-- Apr 4, 2013 5:28:07 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=2774
;

-- Apr 4, 2013 5:28:07 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=2775
;

-- Apr 4, 2013 5:28:07 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=2764
;

-- Apr 4, 2013 5:28:07 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=2768
;

-- Apr 4, 2013 5:28:07 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=6935
;

-- Apr 4, 2013 5:28:07 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=7794
;

-- Apr 4, 2013 5:28:07 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=7795
;

-- Apr 4, 2013 5:28:07 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=2786
;

-- Apr 4, 2013 5:28:07 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=2780
;

-- Apr 4, 2013 5:28:07 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=2778
;

-- Apr 4, 2013 5:28:07 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=2771
;

-- Apr 4, 2013 5:28:07 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=8657
;

-- Apr 4, 2013 5:28:07 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=10485
;

-- Apr 4, 2013 5:28:07 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=6564
;

-- Apr 4, 2013 5:28:07 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=2777
;

-- Apr 4, 2013 5:28:07 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=3663
;

-- Apr 4, 2013 5:28:07 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=3899
;

-- Apr 4, 2013 5:28:07 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=13700
;

-- Apr 4, 2013 5:28:07 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=53257
;

-- Apr 4, 2013 5:28:07 PM VET
-- LVE Retention
UPDATE AD_Field SET SeqNo=440,IsDisplayed='Y' WHERE AD_Field_ID=53258
;

-- Apr 4, 2013 5:28:19 PM VET
-- LVE Retention
UPDATE AD_Field SET IsSameLine='N',Updated=TO_DATE('2013-04-04 17:28:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=2781
;

-- Apr 4, 2013 5:28:40 PM VET
-- LVE Retention
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2013-04-04 17:28:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=3000225
;

