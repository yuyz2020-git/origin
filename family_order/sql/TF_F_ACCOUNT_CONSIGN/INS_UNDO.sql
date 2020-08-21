INSERT INTO TF_F_ACCOUNT_CONSIGN(EPARCHY_CODE,ACCT_ID,PAY_MODE_CODE,CONSIGN_MODE,ASSISTANT_TAG,SUPER_BANK_CODE,BANK_CODE,BANK_ACCT_NO,AGREEMENT_NO,PRIORITY,PAYMENT_ID,PAY_FEE_MODE_CODE,ACCT_BALANCE_ID,ACT_TAG,PARTITION_ID,START_CYCLE_ID,END_CYCLE_ID,UPDATE_TIME,BANK_ACCT_NAME)
SELECT EPARCHY_CODE,ACCT_ID,PAY_MODE_CODE,CONSIGN_MODE,ASSISTANT_TAG,SUPER_BANK_CODE,BANK_CODE,BANK_ACCT_NO,AGREEMENT_NO,PRIORITY,PAYMENT_ID,PAY_FEE_MODE_CODE,ACCT_BALANCE_ID,ACT_TAG,PARTITION_ID,START_CYCLE_ID,END_CYCLE_ID,UPDATE_TIME,BANK_ACCT_NAME
  FROM tf_b_trade_discnt_bak
 WHERE trade_id = TO_NUMBER(:TRADE_ID)
   AND ACCT_ID = TO_NUMBER(:ACCT_ID)