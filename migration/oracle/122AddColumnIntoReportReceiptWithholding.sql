-- 4/09/2013 03:12:18 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,BelowColumn,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,RunningTotalLines,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (0,67212,0,100,130,50110,54235,0,0,TO_DATE('2013-09-04 15:12:11','YYYY-MM-DD HH24:MI:SS'),100,'D','N','Y','N','N','N','N','N','N','N','Y','N','N','N','Y','N','N','N','Y','Y','N','N','N','N','N','N','X',1,0,0,'Number Of Minutes','C','F','Number Of Minutes',20,300,'N',0,TO_DATE('2013-09-04 15:12:11','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- 4/09/2013 03:12:18 PM VET
-- LVE Withholding
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=54235 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- 4/09/2013 03:12:18 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem_Trl trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67212) WHERE AD_PrintFormatItem_ID = 54235 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=67212 AND trl.AD_PrintFormatItem_ID = 54235) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 4/09/2013 03:12:42 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=160,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=54235
;

-- 4/09/2013 03:12:42 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=170,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=53870
;

-- 4/09/2013 03:12:42 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=180,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=53859
;

-- 4/09/2013 03:12:42 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=190,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=53860
;

-- 4/09/2013 03:12:42 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=200,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=53861
;

-- 4/09/2013 03:12:42 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=210,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=53862
;

-- 4/09/2013 03:12:42 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=220,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=53863
;

-- 4/09/2013 03:12:42 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=230,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=53864
;

-- 4/09/2013 03:12:42 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=240,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=53865
;

-- 4/09/2013 03:12:42 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=250,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=53866
;

-- 4/09/2013 03:12:42 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=260,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=53867
;

-- 4/09/2013 03:12:42 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=270,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=53868
;

-- 4/09/2013 03:12:42 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=280,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=53869
;

-- 4/09/2013 03:12:42 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=290,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=53871
;

-- 4/09/2013 03:12:42 PM VET
-- LVE Withholding
UPDATE AD_PrintFormatItem SET SeqNo=300,IsPrinted='Y' WHERE AD_PrintFormatItem_ID=53872
;

