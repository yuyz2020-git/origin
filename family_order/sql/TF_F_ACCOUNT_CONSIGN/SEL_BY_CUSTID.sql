SELECT EPARCHY_CODE,to_char(ACCT_ID) ACCT_ID,PAY_MODE_CODE,CONSIGN_MODE,ASSISTANT_TAG,SUPER_BANK_CODE,BANK_CODE,BANK_ACCT_NO,AGREEMENT_NO,PRIORITY,PAYMENT_ID,PAY_FEE_MODE_CODE,to_char(ACCT_BALANCE_ID) ACCT_BALANCE_ID,ACT_TAG,PARTITION_ID,START_CYCLE_ID,END_CYCLE_ID,to_char(UPDATE_TIME,'yyyy-mm-dd hh24:mi:ss') UPDATE_TIME,BANK_ACCT_NAME
  FROM TF_F_ACCOUNT_CONSIGN
where acct_id=(select acct_id from tf_f_account where cust_id=:CUST_ID and remove_tag='0')