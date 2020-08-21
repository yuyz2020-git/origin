select to_char(consign_id) consign_id,to_char(mconsign_id) mconsign_id,to_char(charge_id) charge_id,acyc_id,bcyc_id,to_char(aspay_fee) aspay_fee,to_char(aspay_late_fee) aspay_late_fee,city_code,city_name,to_char(recv_time,'yyyy-mm-dd hh24:mi:ss') recv_time,pay_name,bank_acct_no,bank_code,bank,recv_bank_acct_no,recv_bank_code,recv_bank,recv_name,tele_count,serial_number,to_char(acct_id) acct_id,pay_fee_mode,trust_type,to_char(vip_id) vip_id,vip_tag,vip_type_code,remark,rsrv_tag1,rsrv_tag2,agent_code,consign_eparchy_code,consign_city_code,consign_staff_id,consign_depart_id,nvl(return_tag,'0') return_tag,return_eparchy_code,to_char(return_time,'yyyy-mm-dd hh24:mi:ss') return_time,return_city_code,return_staff_id,return_depart_id,nvl(refuse_reason_code,-1) refuse_reason_code,to_char(nvl(rsrv_number2,0)) rsrv_number2,to_char(nvl(rsrv_number1,0)) rsrv_number1,recv_acyc_id,eparchy_code 
 from tf_a_consignlog 
 where recv_acyc_id = :RECV_ACYC_ID
 and (:SERIAL_NUMBER is null or serial_number=:SERIAL_NUMBER)
 and (:REMARK is null or remark=:REMARK )
 and (:CITY_CODE is null or city_code =:CITY_CODE)
 and eparchy_code=:EPARCHY_CODE