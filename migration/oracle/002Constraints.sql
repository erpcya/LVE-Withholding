-- 23/01/2013 09:50:16 AM VET
-- LVE Retention
Alter Table CUST_RetentionType 
Add Constraint FK_CUST_RetentionType_AD_Rule FOREIGN KEY (AD_Rule_ID)
REFERENCES AD_Rule (AD_Rule_ID);

-- 23/01/2013 09:50:16 AM VET
-- LVE Retention
Alter Table CUST_RetentionType 
Add Constraint FK_CUST_RetentionType_AD_Process FOREIGN KEY (AD_Process_ID)
REFERENCES AD_Process (AD_Process_ID);

-- 23/01/2013 09:50:16 AM VET
-- LVE Retention
Alter Table C_DocType Add Constraint FK_C_DocType_CUST_RetentionType 
FOREIGN KEY (CUST_RetentionType_ID)
REFERENCES CUST_RetentionType(CUST_RetentionType_ID) ;

-- 23/01/2013 09:50:16 AM VET
-- LVE Retention
Alter Table C_BPartner Add Constraint FK_C_BPartner_CUST_PersonType 
FOREIGN KEY (CUST_PersonType_ID) REFERENCES CUST_PersonType (CUST_PersonType_ID);

-- 23/01/2013 09:50:16 AM VET
-- LVE Retention
Alter Table CUST_RetentionConfig 
Add CONSTRAINT FK_CUST_RetentionConfig_CUST_RetentionType
FOREIGN KEY (CUST_RetentionType_ID)
REFERENCES CUST_RetentionType (CUST_RetentionType_ID);

-- 23/01/2013 09:50:16 AM VET
-- LVE Retention
Alter Table CUST_RetentionRelation Add 
CONSTRAINT FK_CUST_RetentionRelation_CUST_RetentionType 
FOREIGN KEY (CUST_RetentionType_ID) 
REFERENCES CUST_RetentionType (CUST_RetentionType_ID);

-- 23/01/2013 09:50:16 AM VET
-- LVE Retention
Alter Table CUST_RetentionRelation Add 
CONSTRAINT FK_CUST_RetentionRelation_C_BP_Group FOREIGN KEY (C_BP_Group_ID)
REFERENCES C_BP_Group (C_BP_Group_ID);

-- 23/01/2013 09:50:16 AM VET
-- LVE Retention
Alter Table CUST_RetentionRelation Add 
CONSTRAINT FK_CUST_RetentionRelation_C_BPartner FOREIGN KEY (C_BPartner_ID)
REFERENCES C_BPartner (C_BPartner_ID)
On Update Cascade On Delete Restrict;

-- 23/01/2013 09:50:16 AM VET
-- LVE Retention
Alter Table CUST_RetentionRelation Add 
CONSTRAINT FK_CUST_RetentionRelation_C_DocType FOREIGN KEY (C_DocType_ID)
REFERENCES C_DocType (C_DocType_ID);

-- 23/01/2013 09:50:16 AM VET
-- LVE Retention
Alter Table CUST_CR_PT_Combination Add 
CONSTRAINT FK_CUST_CR_PT_Combination_CUST_PersonType FOREIGN KEY (CUST_PersonType_ID)
REFERENCES CUST_PersonType (CUST_PersonType_ID);

-- 23/01/2013 09:50:16 AM VET
-- LVE Retention
Alter Table CUST_CR_PT_Combination Add 
CONSTRAINT FK_CUST_CR_PT_Combination_CUST_ConceptRetention FOREIGN KEY (CUST_ConceptRetention_ID)
REFERENCES CUST_ConceptRetention (CUST_ConceptRetention_ID);

-- 23/01/2013 09:50:16 AM VET
-- LVE Retention
Alter Table CUST_CR_PT_Combination Add 
CONSTRAINT FK_CUST_CR_PT_Combination_CUST_RetentionConfig FOREIGN KEY (CUST_RetentionConfig_ID)
REFERENCES CUST_RetentionConfig (CUST_RetentionConfig_ID);

Alter Table C_Invoice Add 
CONSTRAINT FK_C_Invoice_CUST_ConceptRetention FOREIGN KEY (CUST_ConceptRetention_ID)
REFERENCES CUST_ConceptRetention (CUST_ConceptRetention_ID);
