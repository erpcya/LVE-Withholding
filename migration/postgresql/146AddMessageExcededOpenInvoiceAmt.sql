-- Oct 4, 2013 4:34:52 PM VET
-- LVE Withholding
INSERT INTO AD_Message (AD_Client_ID,AD_Message_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,MsgText,MsgType,Updated,UpdatedBy,Value) VALUES (0,53247,0,TO_TIMESTAMP('2013-10-04 16:34:51','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','Y','Exceded Open Invoice Amt','I',TO_TIMESTAMP('2013-10-04 16:34:51','YYYY-MM-DD HH24:MI:SS'),100,'ExcededOpenInvoiceAmt')
;

-- Oct 4, 2013 4:34:52 PM VET
-- LVE Withholding
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=53247 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- Oct 4, 2013 4:35:14 PM VET
-- LVE Withholding
UPDATE AD_Message_Trl SET MsgText='Monto Abierto de la Factura Excedido',Updated=TO_TIMESTAMP('2013-10-04 16:35:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53247 AND AD_Language='es_MX'
;

