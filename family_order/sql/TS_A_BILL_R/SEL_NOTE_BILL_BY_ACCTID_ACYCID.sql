SELECT to_char(bill_id) bill_id,to_char(acct_id) acct_id,to_char(user_id) user_id,partition_id,acyc_id,integrate_item_code,to_char(fee) fee,to_char(balance) balance,to_char(a_discnt) a_discnt,to_char(adjust_before) adjust_before,to_char(adjust_after) adjust_after,to_char(late_fee) late_fee,to_char(late_balance) late_balance,to_char(latecal_date,'yyyy-mm-dd hh24:mi:ss') latecal_date,canpay_tag,pay_tag,bill_pay_tag,to_char(update_time,'yyyy-mm-dd hh24:mi:ss') update_time,update_depart_id,update_staff_id,to_char(b_discnt) b_discnt,to_char(print_fee) print_fee 
  FROM ts_a_bill_r
 WHERE acct_id=TO_NUMBER(:ACCT_ID)
   AND partition_id=MOD(:ACCT_ID,10000)
   AND acyc_id=:ACYC_ID