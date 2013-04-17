-- Apr 13, 2013 11:38:56 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormat (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintPaper_ID,AD_PrintTableFormat_ID,AD_Table_ID,Created,CreatedBy,Description,FooterMargin,HeaderMargin,IsActive,IsDefault,IsForm,IsStandardHeaderFooter,IsTableBased,Name,Updated,UpdatedBy) VALUES (11,0,100,130,3000201,101,101,516,TO_TIMESTAMP('2013-04-13 11:38:54','YYYY-MM-DD HH24:MI:SS'),100,'Standard Invoice Header Retention',0,230,'Y','N','Y','N','N','Invoice Header Retention',TO_TIMESTAMP('2013-04-13 11:38:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 13, 2013 11:39:16 AM VET
-- LVE Retention
UPDATE AD_PrintFormat SET AD_PrintColor_ID=100, AD_PrintFont_ID=130, AD_PrintPaper_ID=101, AD_PrintTableFormat_ID=101, AD_Table_ID=516, Description='Standard Invoice Header', FooterMargin=0, HeaderMargin=230, IsDefault='N', IsForm='Y', IsStandardHeaderFooter='N', IsTableBased='N', Name='Invoice Header &Copy Record 1649798566',Updated=TO_TIMESTAMP('2013-04-13 11:39:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=3000201
;

-- Apr 13, 2013 11:39:19 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,7472,0,3000201,3000205,TO_TIMESTAMP('2013-04-13 11:39:16','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',0,0,'Activity','C','F','Activity',0,0,TO_TIMESTAMP('2013-04-13 11:39:16','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:39:19 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000205 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:39:19 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7472) WHERE AD_PrintFormatItem_ID = 3000205 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7472 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000205) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:39:21 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,7481,0,3000201,3000206,TO_TIMESTAMP('2013-04-13 11:39:19','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',0,0,'Charge','C','F','Charge',0,0,TO_TIMESTAMP('2013-04-13 11:39:19','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:39:21 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000206 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:39:21 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7481) WHERE AD_PrintFormatItem_ID = 3000206 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7481 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000206) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:39:23 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,7457,0,3000201,3000207,TO_TIMESTAMP('2013-04-13 11:39:21','YYYY-MM-DD HH24:MI:SS'),100,'T','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',0,0,'Charge amount','C','F','Charge Amt',0,0,TO_TIMESTAMP('2013-04-13 11:39:21','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:39:23 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000207 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:39:23 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7457) WHERE AD_PrintFormatItem_ID = 3000207 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7457 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000207) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:39:26 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,7467,0,3000201,3000208,TO_TIMESTAMP('2013-04-13 11:39:23','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',0,0,'Campaign','C','F','Campaign',0,0,TO_TIMESTAMP('2013-04-13 11:39:23','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:39:26 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000208 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:39:26 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7467) WHERE AD_PrintFormatItem_ID = 3000208 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7467 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000208) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:39:28 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,10190,0,3000201,3000209,TO_TIMESTAMP('2013-04-13 11:39:26','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',0,0,'NAICS/SIC','C','F','NAICS/SIC',0,0,TO_TIMESTAMP('2013-04-13 11:39:26','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:39:28 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000209 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:39:28 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=10190) WHERE AD_PrintFormatItem_ID = 3000209 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=10190 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000209) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:39:30 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,10191,0,3000201,3000210,TO_TIMESTAMP('2013-04-13 11:39:28','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',0,0,'D-U-N-S','C','F','D-U-N-S',0,0,TO_TIMESTAMP('2013-04-13 11:39:28','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:39:30 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000210 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:39:30 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=10191) WHERE AD_PrintFormatItem_ID = 3000210 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=10191 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000210) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:39:33 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,10192,0,3000201,3000211,TO_TIMESTAMP('2013-04-13 11:39:30','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',0,0,'Partner Tax ID','C','F','BP Tax TD',0,0,TO_TIMESTAMP('2013-04-13 11:39:30','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:39:33 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000211 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:39:33 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=10192) WHERE AD_PrintFormatItem_ID = 3000211 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=10192 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000211) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:39:35 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,7706,0,3000201,3000212,TO_TIMESTAMP('2013-04-13 11:39:33','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',0,0,'Document Type','C','F','Doc Type',0,0,TO_TIMESTAMP('2013-04-13 11:39:33','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:39:35 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000212 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:39:35 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7706) WHERE AD_PrintFormatItem_ID = 3000212 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7706 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000212) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:39:37 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,7747,0,3000201,3000213,TO_TIMESTAMP('2013-04-13 11:39:35','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',0,0,'Language','C','F','Language',0,0,TO_TIMESTAMP('2013-04-13 11:39:35','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:39:37 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000213 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:39:37 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7747) WHERE AD_PrintFormatItem_ID = 3000213 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7747 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000213) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:39:40 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,7751,0,3000201,3000214,TO_TIMESTAMP('2013-04-13 11:39:37','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',0,0,'Tax ID','C','F','Tax ID',0,0,TO_TIMESTAMP('2013-04-13 11:39:37','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:39:40 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000214 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:39:40 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7751) WHERE AD_PrintFormatItem_ID = 3000214 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7751 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000214) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:39:42 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,7471,0,3000201,3000215,TO_TIMESTAMP('2013-04-13 11:39:40','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',0,0,'Sales Representative','C','F','Sales Rep',0,0,TO_TIMESTAMP('2013-04-13 11:39:40','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:39:42 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000215 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:39:42 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7471) WHERE AD_PrintFormatItem_ID = 3000215 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7471 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000215) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:39:44 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,7653,0,3000201,3000216,TO_TIMESTAMP('2013-04-13 11:39:42','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',0,0,'Business Partner ','C','F','Business Partner ',0,0,TO_TIMESTAMP('2013-04-13 11:39:42','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:39:44 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000216 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:39:44 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7653) WHERE AD_PrintFormatItem_ID = 3000216 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7653 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000216) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:39:47 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,7460,0,3000201,3000217,TO_TIMESTAMP('2013-04-13 11:39:44','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',0,0,'Price List','C','F','Price List',0,0,TO_TIMESTAMP('2013-04-13 11:39:44','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:39:47 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000217 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:39:47 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7460) WHERE AD_PrintFormatItem_ID = 3000217 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7460 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000217) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:39:50 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,7465,0,3000201,3000218,TO_TIMESTAMP('2013-04-13 11:39:47','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',0,0,'Organization','C','F','Organization',0,0,TO_TIMESTAMP('2013-04-13 11:39:47','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:39:50 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000218 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:39:50 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7465) WHERE AD_PrintFormatItem_ID = 3000218 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7465 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000218) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:39:52 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,7487,0,3000201,3000219,TO_TIMESTAMP('2013-04-13 11:39:50','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',0,0,'Document Status','C','F','Doc Status',0,0,TO_TIMESTAMP('2013-04-13 11:39:50','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:39:52 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000219 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:39:52 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7487) WHERE AD_PrintFormatItem_ID = 3000219 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7487 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000219) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:39:54 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,7470,0,3000201,3000220,TO_TIMESTAMP('2013-04-13 11:39:52','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',0,0,'Client','C','F','Client',0,0,TO_TIMESTAMP('2013-04-13 11:39:52','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:39:54 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000220 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:39:54 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7470) WHERE AD_PrintFormatItem_ID = 3000220 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7470 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000220) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:39:56 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,7461,0,3000201,3000221,TO_TIMESTAMP('2013-04-13 11:39:54','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',0,0,'Created','C','F','Created',0,0,TO_TIMESTAMP('2013-04-13 11:39:54','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:39:56 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000221 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:39:56 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7461) WHERE AD_PrintFormatItem_ID = 3000221 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7461 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000221) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:39:59 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,7462,0,3000201,3000222,TO_TIMESTAMP('2013-04-13 11:39:56','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',0,0,'Created By','C','F','Created By',0,0,TO_TIMESTAMP('2013-04-13 11:39:56','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:39:59 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000222 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:39:59 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7462) WHERE AD_PrintFormatItem_ID = 3000222 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7462 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000222) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:40:01 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,11446,0,3000201,3000223,TO_TIMESTAMP('2013-04-13 11:39:59','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',0,0,'Phone','C','F','Phone',0,0,TO_TIMESTAMP('2013-04-13 11:39:59','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:40:01 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000223 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:40:01 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=11446) WHERE AD_PrintFormatItem_ID = 3000223 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=11446 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000223) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:40:03 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,7476,0,3000201,3000224,TO_TIMESTAMP('2013-04-13 11:40:01','YYYY-MM-DD HH24:MI:SS'),100,'T','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',0,0,'Total Lines','C','F','Total Lines',0,0,TO_TIMESTAMP('2013-04-13 11:40:01','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:40:03 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000224 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:40:03 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7476) WHERE AD_PrintFormatItem_ID = 3000224 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7476 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000224) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:40:06 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,7482,0,3000201,3000225,TO_TIMESTAMP('2013-04-13 11:40:03','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',0,0,'Project','C','F','Project',0,0,TO_TIMESTAMP('2013-04-13 11:40:03','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:40:06 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000225 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:40:06 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7482) WHERE AD_PrintFormatItem_ID = 3000225 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7482 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000225) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:40:08 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,13433,0,3000201,3000226,0,TO_TIMESTAMP('2013-04-13 11:40:06','YYYY-MM-DD HH24:MI:SS'),100,'T','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'Amt in Words','C','F','Amt in Words',0,'N',0,TO_TIMESTAMP('2013-04-13 11:40:06','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:40:08 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000226 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:40:08 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=13433) WHERE AD_PrintFormatItem_ID = 3000226 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=13433 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000226) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:40:10 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,15016,0,3000201,3000227,0,TO_TIMESTAMP('2013-04-13 11:40:08','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',1,0,0,'ZIP','C','F','ZIP',0,'N',0,TO_TIMESTAMP('2013-04-13 11:40:08','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:40:10 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000227 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:40:10 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=15016) WHERE AD_PrintFormatItem_ID = 3000227 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=15016 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000227) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:40:13 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,7454,0,3000201,3000228,TO_TIMESTAMP('2013-04-13 11:40:10','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',0,0,'Invoice','C','F','Invoice',0,0,TO_TIMESTAMP('2013-04-13 11:40:10','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:40:13 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000228 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:40:13 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7454) WHERE AD_PrintFormatItem_ID = 3000228 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7454 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000228) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:40:16 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,7469,0,3000201,3000229,TO_TIMESTAMP('2013-04-13 11:40:13','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',0,0,'Paid','C','F','Paid',0,0,TO_TIMESTAMP('2013-04-13 11:40:13','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:40:16 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000229 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:40:16 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7469) WHERE AD_PrintFormatItem_ID = 3000229 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7469 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000229) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:40:18 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,7459,0,3000201,3000230,TO_TIMESTAMP('2013-04-13 11:40:16','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',0,0,'Price includes Tax','C','F','Price includes Tax',0,0,TO_TIMESTAMP('2013-04-13 11:40:16','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:40:18 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000230 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:40:18 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7459) WHERE AD_PrintFormatItem_ID = 3000230 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7459 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000230) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:40:21 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,7474,0,3000201,3000231,TO_TIMESTAMP('2013-04-13 11:40:18','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',0,0,'Active','C','F','Active',0,0,TO_TIMESTAMP('2013-04-13 11:40:18','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:40:21 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000231 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:40:21 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7474) WHERE AD_PrintFormatItem_ID = 3000231 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7474 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000231) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:40:23 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,7486,0,3000201,3000232,TO_TIMESTAMP('2013-04-13 11:40:21','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',0,0,'Sales Transaction','C','F','Sales Transaction',0,0,TO_TIMESTAMP('2013-04-13 11:40:21','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:40:23 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000232 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:40:23 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7486) WHERE AD_PrintFormatItem_ID = 3000232 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7486 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000232) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:40:25 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,7449,0,3000201,3000233,TO_TIMESTAMP('2013-04-13 11:40:23','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',0,0,'Updated By','C','F','Updated By',0,0,TO_TIMESTAMP('2013-04-13 11:40:23','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:40:25 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000233 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:40:25 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7449) WHERE AD_PrintFormatItem_ID = 3000233 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7449 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000233) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:40:28 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,7473,0,3000201,3000234,TO_TIMESTAMP('2013-04-13 11:40:25','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','N','X',0,0,'Updated','C','F','Updated',0,0,TO_TIMESTAMP('2013-04-13 11:40:25','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:40:28 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000234 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:40:28 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7473) WHERE AD_PrintFormatItem_ID = 3000234 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7473 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000234) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:40:30 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,BelowColumn,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,ImageURL,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,0,3000201,3000235,0,TO_TIMESTAMP('2013-04-13 11:40:28','YYYY-MM-DD HH24:MI:SS'),100,'D','N','org/compiere/images/C10030HR.png','Y','N','Y','N','N','N','N','N','Y','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','N','X',30,100,'Logo','H','I',10,0,TO_TIMESTAMP('2013-04-13 11:40:28','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:40:30 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000235 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:40:32 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,BelowColumn,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,7646,0,163,3000201,3000236,0,TO_TIMESTAMP('2013-04-13 11:40:30','YYYY-MM-DD HH24:MI:SS'),100,'D','N','Y','N','Y','N','N','N','N','N','N','N','N','N','Y','N','N','N','Y','Y','N','N','N','N','N','N','X',0,0,'Org Location','H','F',20,0,TO_TIMESTAMP('2013-04-13 11:40:30','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:40:32 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000236 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:40:35 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,BelowColumn,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,RunningTotalLines,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,0,113,130,3000201,3000237,10,0,TO_TIMESTAMP('2013-04-13 11:40:32','YYYY-MM-DD HH24:MI:SS'),100,'D','N','Y','N','N','N','N','Y','N','N','Y','N','N','N','Y','N','N','N','Y','N','N','N','N','N','N','N','X',1,70,200,'Rectangle','H','R',20,25,'R',0,TO_TIMESTAMP('2013-04-13 11:40:32','YYYY-MM-DD HH24:MI:SS'),100,15,0,95,0)
;

-- Apr 13, 2013 11:40:35 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000237 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:40:37 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintNameSuffix,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,7485,0,3000201,3000238,TO_TIMESTAMP('2013-04-13 11:40:35','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','Y','N','N','N','Y','N','N','Y','N','Y','N','N','X',0,0,'BP Greeting','H','F',' ',30,0,TO_TIMESTAMP('2013-04-13 11:40:35','YYYY-MM-DD HH24:MI:SS'),100,20,0,100,0)
;

-- Apr 13, 2013 11:40:37 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000238 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:40:39 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,7475,0,3000201,3000239,TO_TIMESTAMP('2013-04-13 11:40:37','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','N','X',0,0,'Name','H','F',40,0,TO_TIMESTAMP('2013-04-13 11:40:37','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:40:39 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000239 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:40:42 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,7478,0,3000201,3000240,TO_TIMESTAMP('2013-04-13 11:40:39','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','Y','N','N','N','Y','Y','N','N','N','Y','N','N','X',0,0,'Name 2','H','F',50,0,TO_TIMESTAMP('2013-04-13 11:40:39','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:40:42 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000240 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:40:44 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintNameSuffix,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,7453,0,3000201,3000241,TO_TIMESTAMP('2013-04-13 11:40:42','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','Y','N','N','N','Y','Y','N','N','N','Y','N','N','X',0,0,'BP Contact Greeting','H','F',' ',60,0,TO_TIMESTAMP('2013-04-13 11:40:42','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:40:44 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000241 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:40:46 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintNameSuffix,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,7464,0,3000201,3000242,TO_TIMESTAMP('2013-04-13 11:40:44','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','Y','N','N','X',0,0,'Title','H','F',' ',70,0,TO_TIMESTAMP('2013-04-13 11:40:44','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:40:46 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000242 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:40:49 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,7468,0,3000201,3000243,TO_TIMESTAMP('2013-04-13 11:40:46','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','Y','N','N','X',0,0,'Contact Name','H','F',80,0,TO_TIMESTAMP('2013-04-13 11:40:46','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:40:49 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000243 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:40:51 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,7448,0,3000201,3000244,TO_TIMESTAMP('2013-04-13 11:40:49','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','Y','N','N','N','Y','Y','N','N','N','N','N','N','X',0,0,'Location / Address','H','F',90,0,TO_TIMESTAMP('2013-04-13 11:40:49','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:40:51 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000244 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:40:54 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,7466,0,3000201,3000245,TO_TIMESTAMP('2013-04-13 11:40:51','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','Y','N','N','N','Y','N','N','Y','N','N','N','N','X',0,0,'Sales Order','H','F','Sales Order	:',100,0,TO_TIMESTAMP('2013-04-13 11:40:51','YYYY-MM-DD HH24:MI:SS'),100,340,0,100,0)
;

-- Apr 13, 2013 11:40:54 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000245 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:40:54 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7466) WHERE AD_PrintFormatItem_ID = 3000245 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7466 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000245) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:40:56 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,7480,0,3000201,3000246,TO_TIMESTAMP('2013-04-13 11:40:54','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','Y','N','N','N','Y','N','N','X',0,0,'Date Ordered','H','F','Date Ordered	:',110,0,TO_TIMESTAMP('2013-04-13 11:40:54','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:40:56 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000246 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:40:56 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7480) WHERE AD_PrintFormatItem_ID = 3000246 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7480 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000246) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:40:58 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,BelowColumn,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,7652,0,3000201,3000247,0,TO_TIMESTAMP('2013-04-13 11:40:56','YYYY-MM-DD HH24:MI:SS'),100,'D','N','Y','N','Y','N','N','N','N','N','Y','N','N','N','Y','N','N','N','Y','Y','N','N','N','Y','N','N','X',0,0,'BP Search Key','H','F','Customer No	:',120,0,TO_TIMESTAMP('2013-04-13 11:40:56','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:40:58 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000247 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:40:58 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7652) WHERE AD_PrintFormatItem_ID = 3000247 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7652 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000247) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:41:01 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,7452,0,3000201,3000248,TO_TIMESTAMP('2013-04-13 11:40:58','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','Y','N','N','N','Y','Y','N','N','N','Y','N','N','X',0,0,'Reference No','H','F','Reference No	:',130,0,TO_TIMESTAMP('2013-04-13 11:40:58','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:41:01 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000248 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:41:01 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7452) WHERE AD_PrintFormatItem_ID = 3000248 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7452 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000248) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:41:03 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,7456,0,3000201,3000249,TO_TIMESTAMP('2013-04-13 11:41:01','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','Y','N','N','N','Y','Y','N','N','N','Y','N','N','X',0,0,'Order Reference','H','F','Order Reference	:',140,0,TO_TIMESTAMP('2013-04-13 11:41:01','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:41:03 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000249 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:41:03 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7456) WHERE AD_PrintFormatItem_ID = 3000249 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7456 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000249) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:41:06 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,7746,0,3000201,3000250,TO_TIMESTAMP('2013-04-13 11:41:03','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','Y','N','N','N','Y','Y','N','N','N','Y','N','N','X',0,0,'Sales Representative','H','F','Sales Consultant	:',150,0,TO_TIMESTAMP('2013-04-13 11:41:03','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:41:06 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000250 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:41:06 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7746) WHERE AD_PrintFormatItem_ID = 3000250 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7746 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000250) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:41:08 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,7455,0,129,3000201,3000251,TO_TIMESTAMP('2013-04-13 11:41:06','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','Y','N','N','N','N','X',0,0,'Document Type','H','F',160,0,TO_TIMESTAMP('2013-04-13 11:41:06','YYYY-MM-DD HH24:MI:SS'),100,0,0,200,0)
;

-- Apr 13, 2013 11:41:08 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000251 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:41:11 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,7483,0,129,3000201,3000252,TO_TIMESTAMP('2013-04-13 11:41:08','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','Y','N','Y','Y','N','N','N','N','N','N','X',0,0,'Document No','H','F',170,10,TO_TIMESTAMP('2013-04-13 11:41:08','YYYY-MM-DD HH24:MI:SS'),100,0,10,0,0)
;

-- Apr 13, 2013 11:41:11 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000252 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:41:13 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,7463,0,129,3000201,3000253,TO_TIMESTAMP('2013-04-13 11:41:11','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','N','X',0,0,'Date Invoiced','H','F',' - ',180,0,TO_TIMESTAMP('2013-04-13 11:41:11','YYYY-MM-DD HH24:MI:SS'),100,0,10,0,0)
;

-- Apr 13, 2013 11:41:13 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000253 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:41:13 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7463) WHERE AD_PrintFormatItem_ID = 3000253 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=7463 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000253) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:41:15 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,BelowColumn,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,0,3000201,3000254,0,TO_TIMESTAMP('2013-04-13 11:41:13','YYYY-MM-DD HH24:MI:SS'),100,'D','N','Y','N','Y','N','N','N','N','N','Y','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','N','X',0,0,'CopyPage Info','H','T','@*CopyInfo@  @*MultiPageInfo@',190,0,TO_TIMESTAMP('2013-04-13 11:41:13','YYYY-MM-DD HH24:MI:SS'),100,0,10,0,0)
;

-- Apr 13, 2013 11:41:15 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000254 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:41:15 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=0) WHERE AD_PrintFormatItem_ID = 3000254 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=0 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000254) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:41:18 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,7458,0,3000201,3000255,TO_TIMESTAMP('2013-04-13 11:41:15','YYYY-MM-DD HH24:MI:SS'),100,'B','N','Y','N','Y','N','N','N','N','N','N','N','N','N','Y','N','N','N','Y','Y','N','N','N','N','N','N','X',0,0,'Description','C','F',200,0,TO_TIMESTAMP('2013-04-13 11:41:15','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:41:18 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000255 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:41:20 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormatChild_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,7454,0,121,3000201,3000256,TO_TIMESTAMP('2013-04-13 11:41:18','YYYY-MM-DD HH24:MI:SS'),100,'D','N','Y','N','Y','N','N','N','N','N','Y','N','N','N','Y','N','N','N','Y','Y','N','N','N','N','N','N','X',0,0,'Invoice','C','P',210,0,TO_TIMESTAMP('2013-04-13 11:41:18','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,10)
;

-- Apr 13, 2013 11:41:20 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000256 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:41:23 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,7479,0,3000201,3000257,TO_TIMESTAMP('2013-04-13 11:41:20','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','Y','N','N','N','Y','Y','N','N','N','N','N','N','X',0,0,'Currency','C','F',220,0,TO_TIMESTAMP('2013-04-13 11:41:20','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,10)
;

-- Apr 13, 2013 11:41:23 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000257 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:41:25 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,7477,0,3000201,3000258,TO_TIMESTAMP('2013-04-13 11:41:23','YYYY-MM-DD HH24:MI:SS'),100,'T','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','N','X',0,0,'Grand Total','C','F',230,0,TO_TIMESTAMP('2013-04-13 11:41:23','YYYY-MM-DD HH24:MI:SS'),100,0,10,0,0)
;

-- Apr 13, 2013 11:41:25 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000258 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:41:27 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,7586,0,3000201,3000259,TO_TIMESTAMP('2013-04-13 11:41:25','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','N','X',0,0,'Payment Term','C','F',240,0,TO_TIMESTAMP('2013-04-13 11:41:25','YYYY-MM-DD HH24:MI:SS'),100,0,10,0,0)
;

-- Apr 13, 2013 11:41:27 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000259 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:41:30 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,7450,0,3000201,3000260,TO_TIMESTAMP('2013-04-13 11:41:27','YYYY-MM-DD HH24:MI:SS'),100,'B','N','Y','N','Y','N','N','N','N','N','N','N','N','N','Y','N','N','N','Y','Y','N','N','N','Y','N','N','X',0,0,'Payment Term Note','C','F',250,0,TO_TIMESTAMP('2013-04-13 11:41:27','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:41:30 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000260 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:41:32 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsSuppressRepeats,IsVarianceCalc,LineAlignmentType,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,SeqNo,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,7451,0,3000201,3000261,TO_TIMESTAMP('2013-04-13 11:41:30','YYYY-MM-DD HH24:MI:SS'),100,'B','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','Y','N','N','X',0,0,'Document Type Note','C','F',260,0,TO_TIMESTAMP('2013-04-13 11:41:30','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,5)
;

-- Apr 13, 2013 11:41:32 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000261 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:41:32 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =658 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000205 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =658)
;

-- Apr 13, 2013 11:41:32 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =659 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000206 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =659)
;

-- Apr 13, 2013 11:41:32 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =660 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000207 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =660)
;

-- Apr 13, 2013 11:41:32 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =661 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000208 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =661)
;

-- Apr 13, 2013 11:41:32 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =1372 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000209 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =1372)
;

-- Apr 13, 2013 11:41:32 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =1373 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000210 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =1373)
;

-- Apr 13, 2013 11:41:32 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =1374 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000211 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =1374)
;

-- Apr 13, 2013 11:41:32 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =1369 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000212 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =1369)
;

-- Apr 13, 2013 11:41:32 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =1370 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000213 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =1370)
;

-- Apr 13, 2013 11:41:32 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =1371 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000214 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =1371)
;

-- Apr 13, 2013 11:41:32 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =1367 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000215 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =1367)
;

-- Apr 13, 2013 11:41:32 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =1368 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000216 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =1368)
;

-- Apr 13, 2013 11:41:32 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =670 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000217 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =670)
;

-- Apr 13, 2013 11:41:32 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =671 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000218 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =671)
;

-- Apr 13, 2013 11:41:32 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =672 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000219 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =672)
;

-- Apr 13, 2013 11:41:32 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =673 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000220 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =673)
;

-- Apr 13, 2013 11:41:32 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =674 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000221 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =674)
;

-- Apr 13, 2013 11:41:32 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =675 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000222 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =675)
;

-- Apr 13, 2013 11:41:32 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =1711 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000223 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =1711)
;

-- Apr 13, 2013 11:41:32 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =668 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000224 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =668)
;

-- Apr 13, 2013 11:41:32 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =669 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000225 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =669)
;

-- Apr 13, 2013 11:41:32 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =2150 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000226 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =2150)
;

-- Apr 13, 2013 11:41:32 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =2330 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000227 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =2330)
;

-- Apr 13, 2013 11:41:32 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =662 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000228 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =662)
;

-- Apr 13, 2013 11:41:32 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =663 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000229 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =663)
;

-- Apr 13, 2013 11:41:32 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =664 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000230 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =664)
;

-- Apr 13, 2013 11:41:32 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =657 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000231 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =657)
;

-- Apr 13, 2013 11:41:32 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =665 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000232 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =665)
;

-- Apr 13, 2013 11:41:32 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =666 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000233 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =666)
;

-- Apr 13, 2013 11:41:32 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =667 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000234 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =667)
;

-- Apr 13, 2013 11:41:33 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =676 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000235 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =676)
;

-- Apr 13, 2013 11:41:33 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =677 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000236 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =677)
;

-- Apr 13, 2013 11:41:33 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =2147 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000237 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =2147)
;

-- Apr 13, 2013 11:41:33 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =678 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000238 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =678)
;

-- Apr 13, 2013 11:41:33 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =679 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000239 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =679)
;

-- Apr 13, 2013 11:41:33 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =680 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000240 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =680)
;

-- Apr 13, 2013 11:41:33 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =681 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000241 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =681)
;

-- Apr 13, 2013 11:41:33 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =682 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000242 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =682)
;

-- Apr 13, 2013 11:41:33 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =683 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000243 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =683)
;

-- Apr 13, 2013 11:41:33 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =684 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000244 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =684)
;

-- Apr 13, 2013 11:41:33 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =685 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000245 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =685)
;

-- Apr 13, 2013 11:41:33 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =686 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000246 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =686)
;

-- Apr 13, 2013 11:41:33 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =687 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000247 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =687)
;

-- Apr 13, 2013 11:41:33 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =688 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000248 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =688)
;

-- Apr 13, 2013 11:41:33 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =689 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000249 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =689)
;

-- Apr 13, 2013 11:41:33 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =690 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000250 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =690)
;

-- Apr 13, 2013 11:41:33 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =691 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000251 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =691)
;

-- Apr 13, 2013 11:41:33 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =692 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000252 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =692)
;

-- Apr 13, 2013 11:41:33 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =693 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000253 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =693)
;

-- Apr 13, 2013 11:41:33 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =694 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000254 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =694)
;

-- Apr 13, 2013 11:41:33 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =695 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000255 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =695)
;

-- Apr 13, 2013 11:41:33 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =696 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000256 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =696)
;

-- Apr 13, 2013 11:41:33 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =697 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000257 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =697)
;

-- Apr 13, 2013 11:41:33 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =698 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000258 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =698)
;

-- Apr 13, 2013 11:41:33 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =699 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000259 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =699)
;

-- Apr 13, 2013 11:41:33 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =700 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000260 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =700)
;

-- Apr 13, 2013 11:41:33 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName="old".PrintName,PrintNameSuffix="old".PrintNameSuffix,IsTranslated="old".IsTranslated FROM AD_PrintFormatItem_Trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND "old".AD_PrintFormatItem_ID =701 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID=3000261 AND EXISTS (SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem_trl "old" WHERE "old".AD_Language=AD_PrintFormatItem_Trl.AD_Language AND AD_PrintFormatItem_ID =701)
;

-- Apr 13, 2013 11:42:08 AM VET
-- LVE Retention
UPDATE AD_PrintFormat SET Description='Standard Invoice Header Retention', Name='Invoice Header Retention',Updated=TO_TIMESTAMP('2013-04-13 11:42:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=3000201
;

-- Apr 13, 2013 11:42:48 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', PrintAreaType='C', SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2013-04-13 11:42:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=3000235
;

-- Apr 13, 2013 11:42:51 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', PrintAreaType='C', SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2013-04-13 11:42:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=3000236
;

-- Apr 13, 2013 11:42:55 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', PrintAreaType='C', SortNo=0, XSpace=0, YSpace=0,Updated=TO_TIMESTAMP('2013-04-13 11:42:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=3000237
;

-- Apr 13, 2013 11:42:58 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', PrintAreaType='C', SortNo=0, XSpace=0, YSpace=0,Updated=TO_TIMESTAMP('2013-04-13 11:42:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=3000238
;

-- Apr 13, 2013 11:43:01 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', PrintAreaType='C', SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2013-04-13 11:43:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=3000239
;

-- Apr 13, 2013 11:43:04 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', PrintAreaType='C', SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2013-04-13 11:43:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=3000240
;

-- Apr 13, 2013 11:43:07 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', PrintAreaType='C', SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2013-04-13 11:43:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=3000241
;

-- Apr 13, 2013 11:43:09 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', PrintAreaType='C', SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2013-04-13 11:43:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=3000242
;

-- Apr 13, 2013 11:43:12 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', PrintAreaType='C', SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2013-04-13 11:43:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=3000243
;

-- Apr 13, 2013 11:43:14 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', PrintAreaType='C', SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2013-04-13 11:43:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=3000244
;

-- Apr 13, 2013 11:43:18 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', PrintAreaType='C', SortNo=0, XSpace=0, YSpace=0,Updated=TO_TIMESTAMP('2013-04-13 11:43:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=3000245
;

-- Apr 13, 2013 11:43:20 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', PrintAreaType='C', SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2013-04-13 11:43:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=3000247
;

-- Apr 13, 2013 11:43:23 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', PrintAreaType='C', SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2013-04-13 11:43:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=3000248
;

-- Apr 13, 2013 11:43:26 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', PrintAreaType='C', SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2013-04-13 11:43:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=3000249
;

-- Apr 13, 2013 11:43:29 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', PrintAreaType='C', SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2013-04-13 11:43:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=3000250
;

-- Apr 13, 2013 11:43:32 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', PrintAreaType='C', SortNo=0, XSpace=0, YSpace=0,Updated=TO_TIMESTAMP('2013-04-13 11:43:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=3000251
;

-- Apr 13, 2013 11:43:34 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem SET PrintAreaType='C', XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2013-04-13 11:43:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=3000252
;

-- Apr 13, 2013 11:43:37 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', PrintAreaType='C', SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2013-04-13 11:43:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=3000253
;

-- Apr 13, 2013 11:43:43 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem SET IsGroupBy='N', IsPageBreak='N', PrintAreaType='C', SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2013-04-13 11:43:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=3000254
;

-- Apr 13, 2013 11:46:27 AM VET
-- LVE Retention
UPDATE AD_PrintFormat SET HeaderMargin=0,Updated=TO_TIMESTAMP('2013-04-13 11:46:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=3000201
;

-- Apr 13, 2013 11:47:48 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormat (AD_Client_ID,AD_Org_ID,AD_PrintColor_ID,AD_PrintFont_ID,AD_PrintFormat_ID,AD_PrintPaper_ID,AD_PrintTableFormat_ID,AD_ReportView_ID,AD_Table_ID,CreateCopy,Created,CreatedBy,FooterMargin,HeaderMargin,IsActive,IsDefault,IsForm,IsStandardHeaderFooter,IsTableBased,Name,Updated,UpdatedBy) VALUES (11,50001,100,130,3000202,100,100,3000200,3000213,'N',TO_TIMESTAMP('2013-04-13 11:47:46','YYYY-MM-DD HH24:MI:SS'),100,0,0,'Y','N','N','Y','Y','Invoice Line Retention',TO_TIMESTAMP('2013-04-13 11:47:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 13, 2013 11:47:55 AM VET
-- LVE Retention
UPDATE AD_PrintFormat SET AD_PrintColor_ID=100, AD_PrintFont_ID=130, AD_PrintPaper_ID=100, AD_Table_ID=3000213, Name='CUST_RV_Retention_2',Updated=TO_TIMESTAMP('2013-04-13 11:47:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=3000202
;

-- Apr 13, 2013 11:47:57 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,3000300,50001,3000202,3000262,0,TO_TIMESTAMP('2013-04-13 11:47:55','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','Y','N','Y','Y','N','N','N','N','N','X',1,0,0,'Name','C','F','Name',1,'N',1,TO_TIMESTAMP('2013-04-13 11:47:55','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:47:57 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000262 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:47:57 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=3000300) WHERE AD_PrintFormatItem_ID = 3000262 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=3000300 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000262) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:48:00 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,3000291,50001,3000202,3000263,0,TO_TIMESTAMP('2013-04-13 11:47:57','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','X',1,0,0,'Active','C','F','Active',0,'N',0,TO_TIMESTAMP('2013-04-13 11:47:57','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:48:00 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000263 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:48:00 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=3000291) WHERE AD_PrintFormatItem_ID = 3000263 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=3000291 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000263) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:48:02 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,3000309,50001,3000202,3000264,0,TO_TIMESTAMP('2013-04-13 11:48:00','YYYY-MM-DD HH24:MI:SS'),100,'T','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Aliquot','C','F','Aliquot',3,'N',0,TO_TIMESTAMP('2013-04-13 11:48:00','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:48:02 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000264 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:48:02 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=3000309) WHERE AD_PrintFormatItem_ID = 3000264 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=3000309 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000264) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:48:05 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,3000308,50001,3000202,3000265,0,TO_TIMESTAMP('2013-04-13 11:48:02','YYYY-MM-DD HH24:MI:SS'),100,'T','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Amount','C','F','Amt',4,'N',0,TO_TIMESTAMP('2013-04-13 11:48:02','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:48:05 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000265 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:48:05 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=3000308) WHERE AD_PrintFormatItem_ID = 3000265 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=3000308 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000265) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:48:07 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,3000289,50001,3000202,3000266,0,TO_TIMESTAMP('2013-04-13 11:48:05','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','X',1,0,0,'Client','C','F','Client',0,'N',0,TO_TIMESTAMP('2013-04-13 11:48:05','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:48:07 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000266 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:48:07 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=3000289) WHERE AD_PrintFormatItem_ID = 3000266 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=3000289 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000266) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:48:10 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,3000299,50001,3000202,3000267,0,TO_TIMESTAMP('2013-04-13 11:48:07','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Control No','C','F','Control No',6,'N',0,TO_TIMESTAMP('2013-04-13 11:48:07','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:48:10 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000267 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:48:10 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=3000299) WHERE AD_PrintFormatItem_ID = 3000267 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=3000299 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000267) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:48:13 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,3000292,50001,3000202,3000268,0,TO_TIMESTAMP('2013-04-13 11:48:10','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','X',1,0,0,'Created','C','F','Created',0,'N',0,TO_TIMESTAMP('2013-04-13 11:48:10','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:48:13 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000268 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:48:13 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=3000292) WHERE AD_PrintFormatItem_ID = 3000268 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=3000292 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000268) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:48:17 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,3000294,50001,3000202,3000269,0,TO_TIMESTAMP('2013-04-13 11:48:13','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','X',1,0,0,'Created By','C','F','Created By',0,'N',0,TO_TIMESTAMP('2013-04-13 11:48:13','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:48:17 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000269 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:48:17 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=3000294) WHERE AD_PrintFormatItem_ID = 3000269 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=3000294 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000269) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:48:19 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,3000298,50001,3000202,3000270,0,TO_TIMESTAMP('2013-04-13 11:48:17','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Date Invoiced','C','F','Date Invoiced',9,'N',0,TO_TIMESTAMP('2013-04-13 11:48:17','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:48:19 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000270 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:48:19 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=3000298) WHERE AD_PrintFormatItem_ID = 3000270 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=3000298 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000270) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:48:22 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,3000297,50001,3000202,3000271,0,TO_TIMESTAMP('2013-04-13 11:48:19','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Doc Affected','C','F','Doc Affected',10,'N',0,TO_TIMESTAMP('2013-04-13 11:48:19','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:48:22 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000271 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:48:22 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=3000297) WHERE AD_PrintFormatItem_ID = 3000271 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=3000297 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000271) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:48:24 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,3000307,50001,3000202,3000272,0,TO_TIMESTAMP('2013-04-13 11:48:22','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Document No','C','F','Document No',11,'N',0,TO_TIMESTAMP('2013-04-13 11:48:22','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:48:24 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000272 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:48:24 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=3000307) WHERE AD_PrintFormatItem_ID = 3000272 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=3000307 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000272) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:48:27 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,3000305,50001,3000202,3000273,0,TO_TIMESTAMP('2013-04-13 11:48:24','YYYY-MM-DD HH24:MI:SS'),100,'T','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Grand Total','C','F','Grand Total',12,'N',0,TO_TIMESTAMP('2013-04-13 11:48:24','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:48:27 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000273 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:48:27 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=3000305) WHERE AD_PrintFormatItem_ID = 3000273 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=3000305 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000273) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:48:29 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,3000296,50001,3000202,3000274,0,TO_TIMESTAMP('2013-04-13 11:48:27','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Invoice','C','F','Invoice',13,'N',0,TO_TIMESTAMP('2013-04-13 11:48:27','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:48:29 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000274 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:48:29 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=3000296) WHERE AD_PrintFormatItem_ID = 3000274 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=3000296 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000274) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:48:32 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,3000306,50001,3000202,3000275,0,TO_TIMESTAMP('2013-04-13 11:48:29','YYYY-MM-DD HH24:MI:SS'),100,'T','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Line Amount','C','F','Line Amt',14,'N',0,TO_TIMESTAMP('2013-04-13 11:48:29','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:48:32 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000275 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:48:32 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=3000306) WHERE AD_PrintFormatItem_ID = 3000275 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=3000306 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000275) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:48:35 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,3000312,50001,3000202,3000276,0,TO_TIMESTAMP('2013-04-13 11:48:32','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Name Retention Group','C','F','Name Retention Group',15,'N',0,TO_TIMESTAMP('2013-04-13 11:48:32','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:48:35 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000276 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:48:35 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=3000312) WHERE AD_PrintFormatItem_ID = 3000276 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=3000312 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000276) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:48:37 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,3000290,50001,3000202,3000277,0,TO_TIMESTAMP('2013-04-13 11:48:35','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','X',1,0,0,'Organization','C','F','Organization',0,'N',0,TO_TIMESTAMP('2013-04-13 11:48:35','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:48:37 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000277 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:48:37 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=3000290) WHERE AD_PrintFormatItem_ID = 3000277 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=3000290 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000277) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:48:40 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,3000301,50001,3000202,3000278,0,TO_TIMESTAMP('2013-04-13 11:48:37','YYYY-MM-DD HH24:MI:SS'),100,'T','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Rate','C','F','Rate',17,'N',0,TO_TIMESTAMP('2013-04-13 11:48:37','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:48:40 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000278 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:48:40 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=3000301) WHERE AD_PrintFormatItem_ID = 3000278 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=3000301 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000278) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:48:42 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,3000310,50001,3000202,3000279,0,TO_TIMESTAMP('2013-04-13 11:48:40','YYYY-MM-DD HH24:MI:SS'),100,'T','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Subtrahend','C','F','Subtrahend',18,'N',0,TO_TIMESTAMP('2013-04-13 11:48:40','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:48:42 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000279 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:48:42 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=3000310) WHERE AD_PrintFormatItem_ID = 3000279 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=3000310 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000279) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:48:44 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,3000302,50001,3000202,3000280,0,TO_TIMESTAMP('2013-04-13 11:48:42','YYYY-MM-DD HH24:MI:SS'),100,'T','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Tax Amount','C','F','Tax',19,'N',0,TO_TIMESTAMP('2013-04-13 11:48:42','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:48:44 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000280 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:48:44 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=3000302) WHERE AD_PrintFormatItem_ID = 3000280 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=3000302 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000280) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:48:47 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,3000303,50001,3000202,3000281,0,TO_TIMESTAMP('2013-04-13 11:48:44','YYYY-MM-DD HH24:MI:SS'),100,'T','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Tax base Amount','C','F','Tax base Amt',20,'N',0,TO_TIMESTAMP('2013-04-13 11:48:44','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:48:47 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000281 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:48:47 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=3000303) WHERE AD_PrintFormatItem_ID = 3000281 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=3000303 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000281) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:48:49 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,3000304,50001,3000202,3000282,0,TO_TIMESTAMP('2013-04-13 11:48:47','YYYY-MM-DD HH24:MI:SS'),100,'T','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Total Lines','C','F','Total Lines',21,'N',0,TO_TIMESTAMP('2013-04-13 11:48:47','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:48:49 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000282 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:48:49 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=3000304) WHERE AD_PrintFormatItem_ID = 3000282 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=3000304 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000282) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:48:52 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,3000293,50001,3000202,3000283,0,TO_TIMESTAMP('2013-04-13 11:48:49','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','X',1,0,0,'Updated','C','F','Updated',0,'N',0,TO_TIMESTAMP('2013-04-13 11:48:49','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:48:52 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000283 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:48:52 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=3000293) WHERE AD_PrintFormatItem_ID = 3000283 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=3000293 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000283) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:48:54 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,3000295,50001,3000202,3000284,0,TO_TIMESTAMP('2013-04-13 11:48:52','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','N','N','N','X',1,0,0,'Updated By','C','F','Updated By',0,'N',0,TO_TIMESTAMP('2013-04-13 11:48:52','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:48:54 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000284 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:48:54 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=3000295) WHERE AD_PrintFormatItem_ID = 3000284 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=3000295 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000284) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:48:57 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_PrintFormat_ID,AD_PrintFormatItem_ID,ArcDiameter,Created,CreatedBy,FieldAlignmentType,ImageIsAttached,IsActive,IsAveraged,IsCentrallyMaintained,IsCounted,IsDeviationCalc,IsFilledRectangle,IsFixedWidth,IsGroupBy,IsHeightOneLine,IsImageField,IsMaxCalc,IsMinCalc,IsNextLine,IsNextPage,IsOrderBy,IsPageBreak,IsPrinted,IsRelativePosition,IsRunningTotal,IsSetNLPosition,IsSummarized,IsSuppressNull,IsVarianceCalc,LineAlignmentType,LineWidth,MaxHeight,MaxWidth,Name,PrintAreaType,PrintFormatType,PrintName,SeqNo,ShapeType,SortNo,Updated,UpdatedBy,XPosition,XSpace,YPosition,YSpace) VALUES (11,3000311,50001,3000202,3000285,0,TO_TIMESTAMP('2013-04-13 11:48:54','YYYY-MM-DD HH24:MI:SS'),100,'L','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','Y','Y','N','N','N','N','N','X',1,0,0,'Value Retention Group','C','F','Value Retention Group',24,'N',0,TO_TIMESTAMP('2013-04-13 11:48:54','YYYY-MM-DD HH24:MI:SS'),100,0,0,0,0)
;

-- Apr 13, 2013 11:48:57 AM VET
-- LVE Retention
INSERT INTO AD_PrintFormatItem_Trl (AD_Language,AD_PrintFormatItem_ID, PrintName,PrintNameSuffix, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_PrintFormatItem_ID, t.PrintName,t.PrintNameSuffix, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_PrintFormatItem t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_PrintFormatItem_ID=3000285 AND NOT EXISTS (SELECT * FROM AD_PrintFormatItem_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_PrintFormatItem_ID=t.AD_PrintFormatItem_ID)
;

-- Apr 13, 2013 11:48:57 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem_Trl SET PrintName = (SELECT e.PrintName FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=3000311) WHERE AD_PrintFormatItem_ID = 3000285 AND EXISTS (SELECT * FROM AD_Element_Trl e, AD_Column c WHERE e.AD_Language=AD_PrintFormatItem_Trl.AD_Language AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=3000311 AND AD_PrintFormatItem_Trl.AD_PrintFormatItem_ID = 3000285) AND EXISTS (SELECT * FROM AD_Client WHERE AD_Client_ID=AD_PrintFormatItem_Trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- Apr 13, 2013 11:49:57 AM VET
-- LVE Retention
UPDATE AD_PrintFormat SET Name='Invoice Line Retention IVA',Updated=TO_TIMESTAMP('2013-04-13 11:49:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormat_ID=3000202
;

-- Apr 13, 2013 11:50:28 AM VET
-- LVE Retention
UPDATE AD_PrintFormatItem SET AD_PrintFormatChild_ID=3000202, IsGroupBy='N', IsPageBreak='N', Name='Invoice Retention Line', SortNo=0, XPosition=0, YPosition=0,Updated=TO_TIMESTAMP('2013-04-13 11:50:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_PrintFormatItem_ID=3000256
;

