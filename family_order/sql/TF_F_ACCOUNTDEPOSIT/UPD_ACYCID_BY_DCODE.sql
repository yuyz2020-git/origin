UPDATE tf_f_accountdeposit
SET START_ACYC_ID = :START_ACYC_ID ,
END_ACYC_ID = :END_ACYC_ID,UPDATE_TIME =SYSDATE 
WHERE partition_id=MOD(:ACCT_ID,10000)
   AND acct_id=:ACCT_ID
   AND deposit_code=:DEPOSIT_CODE