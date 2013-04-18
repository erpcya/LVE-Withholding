-- Apr 13, 2013 5:08:34 PM VET
-- LVE Retention
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,3000227,0,'RetentionAmt',TO_TIMESTAMP('2013-04-13 17:08:33','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',0,'Y','Retention Amt','Retention Amt',TO_TIMESTAMP('2013-04-13 17:08:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 13, 2013 5:08:34 PM VET
-- LVE Retention
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=3000227 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Apr 13, 2013 5:08:46 PM VET
-- LVE Retention
UPDATE AD_Element_Trl SET Name='Monto Retenido',PrintName='Monto Retenido',Updated=TO_TIMESTAMP('2013-04-13 17:08:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=3000227 AND AD_Language='es_MX'
;

-- Apr 13, 2013 5:09:33 PM VET
-- LVE Retention
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,ColumnSQL,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,3000316,3000227,0,12,3000213,'RetentionAmt','(LineNetAmt + SubTrahend)',TO_TIMESTAMP('2013-04-13 17:09:31','YYYY-MM-DD HH24:MI:SS'),100,'ECA02',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','N','Retention Amt',0,TO_TIMESTAMP('2013-04-13 17:09:31','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- Apr 13, 2013 5:09:33 PM VET
-- LVE Retention
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=3000316 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Apr 13, 2013 5:21:07 PM VET
-- LVE Retention
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2013-04-13 17:21:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=3000404
;

-- Apr 13, 2013 5:21:07 PM VET
-- LVE Retention
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2013-04-13 17:21:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=3000405
;

-- Apr 13, 2013 5:21:07 PM VET
-- LVE Retention
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2013-04-13 17:21:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=3000413
;

-- Apr 13, 2013 5:21:08 PM VET
-- LVE Retention
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2013-04-13 17:21:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=3000415
;

-- Apr 13, 2013 5:21:08 PM VET
-- LVE Retention
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2013-04-13 17:21:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=3000333
;

-- Apr 13, 2013 5:21:08 PM VET
-- LVE Retention
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2013-04-13 17:21:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=3000419
;

-- Apr 13, 2013 5:21:08 PM VET
-- LVE Retention
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2013-04-13 17:21:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=3000420
;

-- Apr 13, 2013 5:21:08 PM VET
-- LVE Retention
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2013-04-13 17:21:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=3000421
;

-- Apr 13, 2013 5:21:08 PM VET
-- LVE Retention
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='N', SeqNo=0, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2013-04-13 17:21:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=3000422
;

-- Apr 13, 2013 5:22:00 PM VET
-- LVE Retention
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=10, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2013-04-13 17:22:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=3000413
;

-- Apr 13, 2013 5:22:00 PM VET
-- LVE Retention
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=20, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2013-04-13 17:22:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=3000421
;

-- Apr 13, 2013 5:22:00 PM VET
-- LVE Retention
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=30, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2013-04-13 17:22:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=3000404
;

-- Apr 13, 2013 5:22:01 PM VET
-- LVE Retention
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=40, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2013-04-13 17:22:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=3000333
;

-- Apr 13, 2013 5:22:01 PM VET
-- LVE Retention
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=50, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2013-04-13 17:22:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=3000419
;

-- Apr 13, 2013 5:22:01 PM VET
-- LVE Retention
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', IsPrinted='Y', SeqNo=60, SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2013-04-13 17:22:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=3000415
;

