SELECT serial_number,apply_no,to_char(apply_batch_id) apply_batch_id,imsi,sim_card_no,eparchy_code,city_code,stock_id,staff_id,staff_name,to_char(use_limit) use_limit,trade_func,purpose_declare,card_kind_code,card_state_code,to_char(use_time,'yyyy-mm-dd hh24:mi:ss') use_time,to_char(return_time_limit,'yyyy-mm-dd hh24:mi:ss') return_time_limit,to_char(return_time_fact,'yyyy-mm-dd hh24:mi:ss') return_time_fact,to_char(open_time,'yyyy-mm-dd hh24:mi:ss') open_time,remind_code,to_char(remind_date,'yyyy-mm-dd hh24:mi:ss') remind_date,return_staff_id,remark,rsrv_tag1,rsrv_tag2,rsrv_tag3,to_char(rsrv_date1,'yyyy-mm-dd hh24:mi:ss') rsrv_date1,to_char(rsrv_date2,'yyyy-mm-dd hh24:mi:ss') rsrv_date2,to_char(rsrv_date3,'yyyy-mm-dd hh24:mi:ss') rsrv_date3,rsrv_str1,rsrv_str2,rsrv_str3,rsrv_str4,rsrv_str5,rsrv_str6,rsrv_str7,rsrv_num1,rsrv_num2,rsrv_num3,0 x_tag 
  FROM tf_b_testcard_use
 WHERE (:SERIAL_NUMBER is null or serial_number=:SERIAL_NUMBER)
   AND apply_no=:APPLY_NO
   AND (:APPLY_BATCH_ID is null or apply_batch_id=TO_NUMBER(:APPLY_BATCH_ID))