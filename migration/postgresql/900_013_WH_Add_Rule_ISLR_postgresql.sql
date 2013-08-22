-- Aug 20, 2013 6:24:16 PM VET
-- LVE Withholding
INSERT INTO AD_Rule (AD_Client_ID,AD_Org_ID,AD_Rule_ID,Created,CreatedBy,EntityType,EventType,IsActive,Name,RuleType,Script,Updated,UpdatedBy,Value) VALUES (0,0,50017,TO_TIMESTAMP('2013-08-20 18:24:10','YYYY-MM-DD HH24:MI:SS'),100,'ECA02','P','Y','I.S.L.R','S','//  O_LVE_Withholding          = Withholding
//  O_LVE_WH_Concept        = Withholing Concept
//  O_LVE_WH_Combination  = Withholding Combination
//  O_LVE_WH_Config           = Withholding Config
//  R_*                                = ResultSet Columns
//  A_*                                = Another

BigDecimal wh_Amt = A_ZERO;
BigDecimal wh_TaxBaseAmt = O_LVE_WH_Combination.getTaxBaseRate();
BigDecimal wh_Aliquot = O_LVE_WH_Combination.getAliquot();

if(wh_TaxBaseAmt != null)
  wh_TaxBaseAmt = wh_TaxBaseAmt.divide(A_ONEHUNDRED);
else
  wh_TaxBaseAmt = A_ZERO;
wh_Aliquot = wh_Aliquot.divide(A_ONEHUNDRED);
wh_Amt = R_WithholdingAmt.multiply(wh_TaxBaseAmt).multiply(wh_Aliquot);
wh_Amt = wh_Amt.subtract(O_LVE_WH_Config.getSubtrahend());
wh_Amt = (wh_Amt.compareTo(A_ZERO) < 0? A_ZERO: wh_Amt);
//  Result
result=wh_Amt;',TO_TIMESTAMP('2013-08-20 18:24:10','YYYY-MM-DD HH24:MI:SS'),100,'groovy:ISLR')
;

-- Aug 20, 2013 6:27:25 PM VET
-- LVE Withholding
UPDATE LVE_Withholding SET AD_Rule_ID=50017,Updated=TO_TIMESTAMP('2013-08-20 18:27:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LVE_Withholding_ID=1000000
;

