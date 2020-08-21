SELECT to_char(consign_id) consign_id,to_char(charge_id) charge_id,acyc_id,bcyc_id,to_char(aspay_fee) aspay_fee,to_char(aspay_late_fee) aspay_late_fee,city_code,city_name,to_char(recv_time,'yyyy-mm-dd hh24:mi:ss') recv_time,pay_name,bank_acct_no,bank_code,bank,recv_bank_acct_no,recv_bank_code,recv_bank,recv_name,tele_count,serial_number,to_char(acct_id) acct_id,pay_fee_mode,to_char(vip_id) vip_id,remark,rsrv_tag1,rsrv_tag2,return_tag,to_char(return_time,'yyyy-mm-dd hh24:mi:ss') return_time,refuse_reason_code,to_char(rsrv_number2) rsrv_number2,to_char(rsrv_number1) rsrv_number1,recv_acyc_id 
  FROM tf_a_consignlog
 WHERE recv_acyc_id=:ACYC_ID
   AND rsrv_tag1=:RSRV_TAG1
   AND city_code like  :CITY_CODE||'%'