SELECT b.serial_number serial_number,to_char(writeoff_id) writeoff_id,to_char(charge_id) charge_id,to_char(bill_id) bill_id,a.partition_id,acyc_id,to_char(a.user_id) user_id,integrate_item_code,to_char(acct_id) acct_id,deposit_code,to_char(fee) fee,to_char(writeoff_fee) writeoff_fee,to_char(old_balance) old_balance,to_char(new_balance) new_balance,to_char(old_late_balance) old_late_balance,to_char(new_late_balance) new_late_balance,old_paytag,new_paytag,cancel_tag,can_paytag,to_char(operate_time,'yyyy-mm-dd hh24:mi:ss') operate_time,a.eparchy_code 
  FROM tf_a_writeofflog a,tf_f_user b
 WHERE charge_id=TO_NUMBER(:CHARGE_ID)
   AND a.partition_id >= :START_PARTITION_ID
   AND a.partition_id <= :END_PARTITION_ID
   AND a.user_id = b.user_id
   and b.partition_id = mod(a.user_id,10000)