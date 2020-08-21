SELECT eparchy_code,to_char(print_id) print_id,partition_id,to_char(batch_id) batch_id,to_char(charge_id) charge_id,templet_code,note_no,to_char(acct_id) acct_id,pay_name,serial_number,to_char(user_id) user_id,to_char(min_bill_id) min_bill_id,to_char(max_bill_id) max_bill_id,to_char(score_value) score_value,to_char(credit_value) credit_value,to_char(old_round_fee) old_round_fee,to_char(round_fee) round_fee,to_char(last_balance) last_balance,to_char(real_fee) real_fee,to_char(present_fee) present_fee,to_char(imp_fee) imp_fee,to_char(total_fee) total_fee,to_char(late_fee) late_fee,start_acyc_id,end_acyc_id,to_char(start_date,'yyyy-mm-dd hh24:mi:ss') start_date,to_char(end_date,'yyyy-mm-dd hh24:mi:ss') end_date,cheque_no,print_mode,to_char(print_time,'yyyy-mm-dd hh24:mi:ss') print_time,print_staff_id,print_depart_id,print_city_code,print_eparchy_code,reprint_flag,print_reason,cancel_tag,cancel_staff_id,cancel_depart_id,cancel_city_code,cancel_eparchy_code,cancel_reason,to_char(cancel_time,'yyyy-mm-dd hh24:mi:ss') cancel_time,post_tag,to_char(rsrv_fee1) rsrv_fee1,to_char(rsrv_fee2) rsrv_fee2,rsrv_info1,rsrv_info2,rsrv_info3,rsrv_info4,rsrv_info5 
 FROM tf_a_noteprintlog
 WHERE print_id=TO_NUMBER(:PRINT_ID)
   AND partition_id=:PARTITION_ID
   AND cancel_tag='0'