SELECT to_char(bill_id) bill_id,to_char(acct_id) acct_id,to_char(user_id) user_id,partition_id,acyc_id,integrate_item_code,to_char(fee) fee,to_char(balance) balance,to_char(nvl(b_discnt,'0')) b_discnt,to_char(nvl(print_fee,'0')) print_fee,to_char(a_discnt) a_discnt,to_char(adjust_before) adjust_before,to_char(adjust_after) adjust_after,to_char(late_fee) late_fee,to_char(late_balance) late_balance,to_char(latecal_date,'yyyy-mm-dd hh24:mi:ss') latecal_date,canpay_tag,pay_tag,bill_pay_tag,to_char(update_time,'yyyy-mm-dd hh24:mi:ss') update_time,update_depart_id,update_staff_id 
  FROM ts_ah_bill
 WHERE acct_id=TO_NUMBER(:ACCT_ID)
   AND partition_id=:PARTITION_ID
   AND acyc_id>=:ACYC_ID_S AND acyc_id<=:ACYC_ID_E order by user_id,acyc_id,integrate_item_code