SELECT eparchy_code,
       partition_id,
       to_char(acct_id) acct_id,
       deposit_code,
       to_char(money) money,
       to_char(deposit_money) deposit_money,
       to_char(draw_money) draw_money,
       to_char(inprint_fee) inprint_fee,
       to_char(outprint_fee) outprint_fee,
       to_char(realuse_fee1) realuse_fee1,
       to_char(realuse_fee2) realuse_fee2,
       to_char(owe_fee) owe_fee,
       start_acyc_id,
       end_acyc_id,
       to_char(update_time, 'yyyy-mm-dd hh24:mi:ss') update_time
  FROM tf_f_accountdeposit a
 WHERE partition_id >= :START_PARTITION_ID
   AND partition_id <= :END_PARTITION_ID
   AND (deposit_code in (select tag_number
                           from td_s_tag b
                          where tag_code = 'ASM_RESET_DEPOSIT'
                            and use_tag = '1') or
       deposit_code in (select tag_number
                           from td_s_tag b
                          where tag_code like 'ASM_FILTERRESET_DEPOSIT%'
                            and use_tag = '1')
       
       )