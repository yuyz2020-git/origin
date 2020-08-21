SELECT to_char(log_id) log_id,to_char(sub_log_id) sub_log_id,to_char(acc_date,'yyyy-mm-dd hh24:mi:ss') acc_date,eparchy_code,oper_type_code,depart_id,profit_cen_id,bank_code,recon_no,bank_no,fee,dc_tag,remark,rsrv_tag1,rsrv_tag2,rsrv_tag3,to_char(rsrv_date1,'yyyy-mm-dd hh24:mi:ss') rsrv_date1,to_char(rsrv_date2,'yyyy-mm-dd hh24:mi:ss') rsrv_date2,to_char(rsrv_date3,'yyyy-mm-dd hh24:mi:ss') rsrv_date3,rsrv_str1,rsrv_str2,rsrv_str3,rsrv_str4,rsrv_str5,rsrv_str6,rsrv_str7,rsrv_num1,rsrv_num2,rsrv_num3 
  FROM tf_a_bank_deposit
 WHERE log_id=TO_NUMBER(:LOG_ID)
   AND sub_log_id=TO_NUMBER(:SUB_LOG_ID)