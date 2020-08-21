SELECT to_char(mconsign_id) mconsign_id,bank_code,bank_acct_no,acyc_id,bcyc_id,to_char(aspay_fee) aspay_fee,to_char(aspay_late_fee) aspay_late_fee,to_char(recv_time,'yyyy-mm-dd hh24:mi:ss') recv_time,recv_acyc_id,eparchy_code,city_code,city_name,pay_name,bank,recv_bank_acct_no,recv_bank_code,recv_bank,recv_name,tele_count,serial_number,pay_fee_mode,trust_type,consign_eparchy_code,consign_city_code,consign_staff_id,consign_depart_id,return_tag,to_char(return_time,'yyyy-mm-dd hh24:mi:ss') return_time,return_eparchy_code,return_city_code,return_staff_id,return_depart_id,refuse_reason_code,rsrv_str1,rsrv_str2,rsrv_num1,rsrv_num2 
  FROM tf_a_comlot
 WHERE acyc_id=:ACYC_ID
   AND serial_number=:SERIAL_NUMBER
   AND nvl(return_tag,'0') in ('1')