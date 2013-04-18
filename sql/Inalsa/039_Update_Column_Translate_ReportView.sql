UPDATE AD_PrintFormatItem_Trl SET AD_Client_ID = 1000002, AD_Org_ID = 1000002
WHERE AD_PrintFormatItem_ID IN (
SELECT AD_PrintFormatItem_ID FROM AD_PrintFormatItem 
WHERE AD_PrintFormat_ID IN (SELECT AD_PrintFormat_ID FROM AD_PrintFormat
WHERE AD_ReportView_ID IN (SELECT AD_ReportView_ID From AD_ReportView WHERE EntityType = 'ECA02')
)
);
