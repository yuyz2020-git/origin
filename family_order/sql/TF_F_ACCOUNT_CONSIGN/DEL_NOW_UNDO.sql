DELETE FROM TF_F_ACCOUNT_CONSIGN a
 WHERE acct_id = TO_NUMBER(:ACCT_ID)
   AND ACT_TAG = '1'
   AND TO_NUMBER(TO_CHAR(SYSDATE, 'YYYYMM')) <= END_CYCLE_ID