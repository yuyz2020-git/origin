SELECT eparchy_code,partition_id,to_char(acct_id) acct_id,deposit_code,to_char(money) money,to_char(deposit_money) deposit_money,to_char(draw_money) draw_money,to_char(inprint_fee) inprint_fee,to_char(outprint_fee) outprint_fee,to_char(realuse_fee1) realuse_fee1,to_char(realuse_fee2) realuse_fee2,to_char(owe_fee) owe_fee,start_acyc_id,end_acyc_id,to_char(update_time,'yyyy-mm-dd hh24:mi:ss') update_time 
  FROM tf_f_accountdeposit a
 WHERE acct_id=TO_NUMBER(:ACCT_ID) AND partition_id=MOD(TO_NUMBER(:ACCT_ID),10000)
     AND deposit_code NOT IN (SELECT TAG_NUMBER FROM TD_S_TAG WHERE TAG_CODE LIKE 'ASM_CANNOT_PRINT_DEPOSIT%' AND USE_TAG='1' AND
                             EPARCHY_CODE = a.EPARCHY_CODE)