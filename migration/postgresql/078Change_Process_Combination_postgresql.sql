-- 11/08/2013 01:07:10 AM VET
-- LVE Withholding
UPDATE AD_Process_Trl SET Help='Genera las Configuraciones para esta Retención. si la Unidad Tributaria no se Selecciona se Generará para Todas las U.T.',Updated=TO_TIMESTAMP('2013-08-11 01:07:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53434 AND AD_Language='es_MX'
;

-- 11/08/2013 01:07:46 AM VET
-- LVE Withholding
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,66647,68108,0,53716,TO_TIMESTAMP('2013-08-11 01:07:45','YYYY-MM-DD HH24:MI:SS'),100,0,'ECA02','Y','Y','Y','N','N','N','N','N','Withholding',80,0,TO_TIMESTAMP('2013-08-11 01:07:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/08/2013 01:07:46 AM VET
-- LVE Withholding
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=68108 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 11/08/2013 01:08:29 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=68108
;

-- 11/08/2013 01:08:29 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=68066
;

-- 11/08/2013 01:08:29 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=68067
;

-- 11/08/2013 01:08:29 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=68068
;

-- 11/08/2013 01:08:29 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=68069
;

-- 11/08/2013 01:08:29 AM VET
-- LVE Withholding
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=68070
;

-- 11/08/2013 01:08:41 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-08-11 01:08:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68066
;

-- 11/08/2013 01:08:51 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2013-08-11 01:08:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68067
;

-- 11/08/2013 01:08:54 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-08-11 01:08:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68068
;

-- 11/08/2013 01:08:59 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2013-08-11 01:08:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68069
;

-- 11/08/2013 01:09:04 AM VET
-- LVE Withholding
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2013-08-11 01:09:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=68070
;

-- 11/08/2013 01:10:11 AM VET
-- LVE Withholding
UPDATE AD_Menu_Trl SET Name='Configuración',Updated=TO_TIMESTAMP('2013-08-11 01:10:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53587 AND AD_Language='es_MX'
;

-- 11/08/2013 01:10:25 AM VET
-- LVE Withholding
UPDATE AD_Menu_Trl SET Name='Calculo',Updated=TO_TIMESTAMP('2013-08-11 01:10:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53588 AND AD_Language='es_MX'
;

-- 11/08/2013 01:10:35 AM VET
-- LVE Withholding
UPDATE AD_Menu_Trl SET Name='Cálculo',Updated=TO_TIMESTAMP('2013-08-11 01:10:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53588 AND AD_Language='es_MX'
;

-- 11/08/2013 01:28:08 AM VET
-- LVE Withholding
UPDATE AD_Column SET AD_Process_ID=53434,Updated=TO_TIMESTAMP('2013-08-11 01:28:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66442
;

-- 11/08/2013 01:30:48 AM VET
-- LVE Withholding
UPDATE AD_Process SET Classname='org.spin.process.WithholdingGenerate',Updated=TO_TIMESTAMP('2013-08-11 01:30:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53423
;

-- 11/08/2013 01:31:50 AM VET
-- LVE Withholding
UPDATE AD_Column SET AD_Process_ID=53423,Updated=TO_TIMESTAMP('2013-08-11 01:31:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=66442
;

-- 11/08/2013 01:33:33 AM VET
-- LVE Withholding
UPDATE AD_Process SET Classname='org.spin.process.WithholdingConfigGenerate',Updated=TO_TIMESTAMP('2013-08-11 01:33:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53423
;

-- 11/08/2013 01:33:39 AM VET
-- LVE Withholding
UPDATE AD_Process_Para SET IsMandatory='N',Updated=TO_TIMESTAMP('2013-08-11 01:33:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=53956
;

-- 11/08/2013 01:36:29 AM VET
-- LVE Withholding
UPDATE AD_Process SET Description='Withholding Config Generate',Updated=TO_TIMESTAMP('2013-08-11 01:36:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53423
;

-- 11/08/2013 01:36:29 AM VET
-- LVE Withholding
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=53423
;

-- 11/08/2013 01:37:11 AM VET
-- LVE Withholding
UPDATE AD_Process_Trl SET Description='Generar Configuración de Retención',Help='Genera las Configuraciones para esta Retención. Si la Unidad Tributaria no se Selecciona se Generará para Todas las U.T.',Updated=TO_TIMESTAMP('2013-08-11 01:37:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53423 AND AD_Language='es_MX'
;

-- 11/08/2013 01:37:19 AM VET
-- LVE Withholding
UPDATE AD_Process_Trl SET Help='Genera las Configuraciones para esta Retención. Si la Unidad Tributaria no se Selecciona se Generará para Todas las U.T.',Updated=TO_TIMESTAMP('2013-08-11 01:37:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=53434 AND AD_Language='es_MX'
;

