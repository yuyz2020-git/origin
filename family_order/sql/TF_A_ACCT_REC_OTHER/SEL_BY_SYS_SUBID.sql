SELECT sys_code,to_char(log_id) log_id,to_char(sub_log_id) sub_log_id,partition_id,eparchy_code,city_code,depart_id,oper_staff_id,pay_money_code,sale_type_code,oper_type_code,coll_agen_code,profit_cen_id,pay_mode_code,to_char(acc_date,'yyyy-mm-dd hh24:mi:ss') acc_date,to_char(oper_date,'yyyy-mm-dd hh24:mi:ss') oper_date,check_number,int_type_code,form_fee,capacity_type_code,res_kind_code,res_type_code,fee,dc_tag,remark,rsrv_tag1,rsrv_tag2,rsrv_tag3,to_char(rsrv_date1,'yyyy-mm-dd hh24:mi:ss') rsrv_date1,to_char(rsrv_date2,'yyyy-mm-dd hh24:mi:ss') rsrv_date2,to_char(rsrv_date3,'yyyy-mm-dd hh24:mi:ss') rsrv_date3,rsrv_str1,rsrv_str2,rsrv_str3,rsrv_str4,rsrv_str5,rsrv_str6,rsrv_str7,rsrv_num1,rsrv_num2,rsrv_num3 
  FROM tf_a_acct_rec_other
 WHERE sys_code=:SYS_CODE
   AND sub_log_id=TO_NUMBER(:SUB_LOG_ID)