SELECT serial_number,to_char(user_id) user_id,para_code,to_char(rpay_deposit) rpay_deposit,to_char(trans_fee) trans_fee,rpay_deposit_code,deposit_code,rtn_months,left_months,to_char(left_deposit) left_deposit,to_char(in_date,'yyyy-mm-dd hh24:mi:ss') in_date,to_char(gpay_deposit) gpay_deposit,to_char(mgift_fee) mgift_fee,gpay_deposit_code,gift_deposit_code,gtotal_months,gleft_months,to_char(left_gdeposit) left_gdeposit,process_tag,recv_eparchy_code,recv_city_code,recv_depart_id,recv_staff_id,to_char(start_date,'yyyy-mm-dd hh24:mi:ss') start_date,to_char(end_date,'yyyy-mm-dd hh24:mi:ss') end_date,to_char(cancel_time,'yyyy-mm-dd hh24:mi:ss') cancel_time,cancel_eparchy_code,cancel_city_code,cancel_depart_id,cancel_staff_id,rsrv_info1,rsrv_info2,to_char(rsrv_num1) rsrv_num1,to_char(rsrv_num2) rsrv_num2,to_char(rsrv_date1,'yyyy-mm-dd hh24:mi:ss') rsrv_date1,to_char(rsrv_date2,'yyyy-mm-dd hh24:mi:ss') rsrv_date2 
  FROM tf_f_user_trans
 WHERE user_id=TO_NUMBER(:USER_ID)
   AND (para_code=:PARA_CODE or :PARA_CODE='*')
   AND (process_tag=:PROCESS_TAG or :PROCESS_TAG='*')