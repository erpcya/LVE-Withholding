-- Apr 13, 2013 4:17:37 PM VET
-- LVE Retention
INSERT INTO AD_UserQuery (AD_Client_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_User_ID,AD_UserQuery_ID,Created,CreatedBy,IsActive,Name,Updated,UpdatedBy) VALUES (0,0,288,361,100,3000200,TO_TIMESTAMP('2013-04-13 16:17:36','YYYY-MM-DD HH24:MI:SS'),100,'Y','** Last Query **',TO_TIMESTAMP('2013-04-13 16:17:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Apr 13, 2013 4:18:04 PM VET
-- LVE Retention
UPDATE AD_ReportView SET WhereClause='Value_RetentionGroup = ''RISLR''',Updated=TO_TIMESTAMP('2013-04-13 16:18:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ReportView_ID=3000201
;

-- Apr 13, 2013 4:18:18 PM VET
-- LVE Retention
UPDATE AD_ReportView SET WhereClause='Value_RetentionGroup = ''RIVA''',Updated=TO_TIMESTAMP('2013-04-13 16:18:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ReportView_ID=3000200
;

