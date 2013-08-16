UPDATE AD_PrintFormat SET AD_Client_ID=0,IsTableBased='Y',IsForm='N' WHERE AD_PrintFormat_ID IN (50110,50111,50112,50113)

UPDATE AD_PRintFormatItem SET AD_Client_ID=0
WHERE  AD_PrintFormat_ID IN (SELECT AD_PrintFormat_ID FROM AD_PrintFormat WHERE AD_PrintFormat_ID  IN (50110,50111,50112,50113))

UPDATE AD_PrintFormatItem_Trl SET AD_Client_ID=0 WHERE AD_PRintFormatItem_ID IN (SELECT AD_PRintFormatItem_ID 
FROM AD_PRintFormatItem 
WHERE  AD_PrintFormat_ID IN (SELECT AD_PrintFormat_ID FROM AD_PrintFormat WHERE AD_PrintFormat_ID  IN (50110,50111,50112,50113))
)
