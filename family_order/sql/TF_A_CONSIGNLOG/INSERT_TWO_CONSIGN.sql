INSERT INTO tf_a_consignlog(consign_id,mconsign_id,charge_id,acyc_id,bcyc_id,aspay_fee,aspay_late_fee,city_code,city_name,recv_time,pay_name,bank_acct_no,bank_code,bank,recv_bank_acct_no,recv_bank_code,recv_bank,recv_name,tele_count,serial_number,acct_id,pay_fee_mode,remark,rsrv_tag1,rsrv_tag2,return_tag,rsrv_number2,recv_acyc_id)
 VALUES(TO_NUMBER(:CONSIGN_ID),TO_NUMBER(:CONSIGN_ID),mod(TO_NUMBER(:CONSIGN_ID),10000),:ACYC_ID,:BCYC_ID,TO_NUMBER(:ASPAY_FEE),0,:CITY_CODE,:CITY_NAME,SYSDATE,:PAY_NAME,:BANK_ACCT_NO,:BANK_CODE,:BANK,'','','','',:TELE_COUNT,:SERIAL_NUMBER,TO_NUMBER(:ACCT_ID),:PAY_FEE_MODE,:REMARK,'','','0',2,:RECV_ACYC_ID)