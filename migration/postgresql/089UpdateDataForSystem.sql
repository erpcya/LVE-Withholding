UPDATE AD_PrintFormat SET AD_Client_ID=0,AD_Org_ID = 0,IsTableBased='Y',IsForm='Y' WHERE AD_PrintFormat_ID IN (50110,50111,50112,50113);

UPDATE AD_PrintFormatItem SET AD_Client_ID=0 ,AD_Org_ID = 0
WHERE  AD_PrintFormat_ID IN (SELECT AD_PrintFormat_ID FROM AD_PrintFormat WHERE AD_PrintFormat_ID  IN (50110,50111,50112,50113));

UPDATE AD_PrintFormatItem_Trl SET AD_Client_ID=0 ,AD_Org_ID = 0 WHERE AD_PrintFormatItem_ID IN (SELECT AD_PrintFormatItem_ID 
FROM AD_PRintFormatItem 
WHERE  AD_PrintFormat_ID IN (SELECT AD_PrintFormat_ID FROM AD_PrintFormat WHERE AD_PrintFormat_ID  IN (50110,50111,50112,50113))
);

UPDATE AD_PrintFormat SET AD_Client_ID=0,AD_Org_ID = 0 WHERE AD_PrintFormat_ID IN (50128,50124,50114,50115);

UPDATE AD_PrintFormatItem SET AD_Client_ID=0 ,AD_Org_ID = 0
WHERE  AD_PrintFormat_ID IN (SELECT AD_PrintFormat_ID FROM AD_PrintFormat WHERE AD_PrintFormat_ID  IN (50128,50124,50114,50115));

UPDATE AD_PrintFormatItem_Trl SET AD_Client_ID=0 ,AD_Org_ID = 0 WHERE AD_PrintFormatItem_ID IN (SELECT AD_PrintFormatItem_ID 
FROM AD_PRintFormatItem 
WHERE  AD_PrintFormat_ID IN (SELECT AD_PrintFormat_ID FROM AD_PrintFormat WHERE AD_PrintFormat_ID IN (50128,50124,50114,50115))
);
