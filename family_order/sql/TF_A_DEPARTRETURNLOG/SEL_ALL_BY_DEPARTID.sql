SELECT trade_type_code,bank_inner_code,bank_name,bank_acct_no,pay_name,pay_address,assure_no,oper_code,to_char(aspay_fee) aspay_fee,depart_id,to_char(depart_log_time,'yyyy-mm-dd hh24:mi:ss') depart_log_time,return_reason_code,to_char(return_time,'yyyy-mm-dd hh24:mi:ss') return_time,return_eparchy_code,return_depart_id,return_city_code,return_staff_id,remark,rsrv_tag1,rsrv_tag2,rsrv_str1,rsrv_str2 
  FROM tf_a_departreturnlog
 WHERE depart_id=:DEPART_ID