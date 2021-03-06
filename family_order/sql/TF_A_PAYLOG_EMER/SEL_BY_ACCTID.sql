SELECT to_char(asycrecv_id) asycrecv_id,to_char(charge_id) charge_id,partition_id,eparchy_code,city_code,to_char(cust_id) cust_id,to_char(user_id) user_id,to_char(acct_id) acct_id,serial_number,charge_source_code,pay_fee_mode_code,to_char(recv_fee) recv_fee,deposit_code,recover_tag,cancel_tag,to_char(recv_time,'yyyy-mm-dd hh24:mi:ss') recv_time,to_char(deal_time,'yyyy-mm-dd hh24:mi:ss') deal_time,deal_tag,result_code,result_info,round_tag,recv_eparchy_code,recv_city_code,recv_depart_id,recv_staff_id,to_char(cancel_time,'yyyy-mm-dd hh24:mi:ss') cancel_time,cancel_eparchy_code,cancel_city_code,cancel_depart_id,cancel_staff_id 
  FROM tf_a_paylog_emer
 WHERE acct_id=TO_NUMBER(:ACCT_ID)
   AND cancel_tag=:CANCEL_TAG
   AND deal_tag=:DEAL_TAG