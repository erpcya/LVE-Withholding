﻿-- 23/01/2013 09:50:16 AM VET
-- Retention
--Alter Table CUST_PersonType 
--Add Constraint PK_CUST_PersonType PRIMARY KEY (CUST_PersonType_ID);

-- 23/01/2013 09:50:16 AM VET
-- Retention
--Alter Table CUST_ConceptRetention
--Add Constraint PK_CUST_ConceptRetention PRIMARY KEY (CUST_ConceptRetention_ID);

-- 23/01/2013 09:50:16 AM VET
-- Retention
--Alter Table CUST_RetentionType 
--Add Constraint PK_CUST_RetentionType PRIMARY KEY (CUST_RetentionType_ID);

-- 23/01/2013 09:50:16 AM VET
-- Retention
Alter Table CUST_RetentionType 
Add Constraint FK_CUST_RetentionType_AD_Rule FOREIGN KEY (AD_Rule_ID)
REFERENCES AD_Rule (AD_Rule_ID) On Update Cascade On Delete Restrict;

-- 23/01/2013 09:50:16 AM VET
-- Retention
Alter Table C_DocType Add Column CUST_RetentionType_ID NUMERIC(10) Default NULL;

-- 23/01/2013 09:50:16 AM VET
-- Retention
Alter Table C_DocType Add Constraint FK_C_DocType_CUST_RetentionType 
Foreign Key (CUST_RetentionType_ID)
References CUST_RetentionType(CUST_RetentionType_ID) 
On Update Cascade On Delete Restrict;

-- 23/01/2013 09:50:16 AM VET
-- Retention
Alter Table C_BPartner Add Constraint FK_C_BPartner_CUST_PersonType 
Foreign Key (CUST_PersonType_ID) REFERENCES CUST_PersonType (CUST_PersonType_ID)
On Update Cascade On Delete Restrict;

-- 23/01/2013 09:50:16 AM VET
-- Retention
--Alter Table CUST_RetentionConfig 
--Add Constraint PK_CUST_RetentionConfig PRIMARY KEY (CUST_RetentionConfig_ID);

-- 23/01/2013 09:50:16 AM VET
-- Retention
Alter Table CUST_RetentionConfig 
Add CONSTRAINT FK_CUST_RetentionConfig_CUST_RetentionType
FOREIGN KEY (CUST_RetentionType_ID)
REFERENCES CUST_RetentionType (CUST_RetentionType_ID)
On Update Cascade On Delete Restrict;

-- 23/01/2013 09:50:16 AM VET
-- Retention
--Alter Table CUST_RetentionRelation Add 
--Constraint PK_CUST_RetentionRelation PRIMARY KEY (CUST_RetentionRelation_ID);

-- 23/01/2013 09:50:16 AM VET
-- Retention
Alter Table CUST_RetentionRelation Add 
CONSTRAINT FK_CUST_RetentionRelation_CUST_RetentionType 
FOREIGN KEY (CUST_RetentionType_ID) 
REFERENCES CUST_RetentionType (CUST_RetentionType_ID)
On Update Cascade On Delete Restrict;

-- 23/01/2013 09:50:16 AM VET
-- Retention
Alter Table CUST_RetentionRelation Add 
CONSTRAINT FK_CUST_RetentionRelation_C_BP_Group FOREIGN KEY (C_BP_Group_ID)
REFERENCES C_BP_Group (C_BP_Group_ID)
On Update Cascade On Delete Restrict;

-- 23/01/2013 09:50:16 AM VET
-- Retention
Alter Table CUST_RetentionRelation Add 
CONSTRAINT FK_CUST_RetentionRelation_C_BPartner FOREIGN KEY (C_BPartner_ID)
REFERENCES C_BPartner (C_BPartner_ID)
On Update Cascade On Delete Restrict;

-- 23/01/2013 09:50:16 AM VET
-- Retention
Alter Table CUST_RetentionRelation Add 
CONSTRAINT FK_CUST_RetentionRelation_C_DocType FOREIGN KEY (C_DocType_ID)
REFERENCES C_DocType (C_DocType_ID)
On Update Cascade On Delete Restrict;

-- 23/01/2013 09:50:16 AM VET
-- Retention
--Alter Table CUST_CR_PT_Combination Add 
--Constraint PK_CUST_CR_PT_Combination PRIMARY KEY (CUST_CR_PT_Combination_ID);

-- 23/01/2013 09:50:16 AM VET
-- Retention
Alter Table CUST_CR_PT_Combination Add 
CONSTRAINT FK_CUST_CR_PT_Combination_CUST_PersonType FOREIGN KEY (CUST_PersonType_ID)
REFERENCES CUST_PersonType (CUST_PersonType_ID)
On Update Cascade On Delete Restrict;

-- 23/01/2013 09:50:16 AM VET
-- Retention
Alter Table CUST_CR_PT_Combination Add 
CONSTRAINT FK_CUST_CR_PT_Combination_CUST_ConceptRetention FOREIGN KEY (CUST_ConceptRetention_ID)
REFERENCES CUST_ConceptRetention (CUST_ConceptRetention_ID)
On Update Cascade On Delete Restrict;

-- 23/01/2013 09:50:16 AM VET
-- Retention
Alter Table CUST_CR_PT_Combination Add 
CONSTRAINT FK_CUST_CR_PT_Combination_CUST_RetentionConfig FOREIGN KEY (CUST_RetentionConfig_ID)
REFERENCES CUST_RetentionConfig (CUST_RetentionConfig_ID)
On Update Cascade On Delete Restrict;
