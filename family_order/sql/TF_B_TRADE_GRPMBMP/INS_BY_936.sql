INSERT INTO tf_b_trade_grpmbmp(trade_id,partition_id,user_id,serial_number,biz_type_code,biz_code,biz_name,access_model,access_number,biz_state_code,price,billing_type,biz_pri,biz_status,rb_list,cs_url,usage_desc,intro_url,start_date,end_date,first_date,rsrv_num1,rsrv_num2,rsrv_num3,rsrv_num4,rsrv_num5,rsrv_str1,rsrv_str2,rsrv_str3,rsrv_str4,rsrv_str5,rsrv_date1,rsrv_date2,rsrv_date3,remark,update_staff_id,update_depart_id,update_time,oper_code)
SELECT 
trade_id,partition_id,:USER_ID,:SERIAL_NUMBER,biz_type_code,:BIZ_CODE,:BIZ_NAME,:ACCESS_MODEL,access_number,:BIZ_STATE_CODE,:PRICE,billing_type,biz_pri,biz_status,rb_list,cs_url,usage_desc,intro_url,start_date,end_date,first_date,rsrv_num1,rsrv_num2,rsrv_num3,rsrv_num4,rsrv_num5,:RSRV_STR1,rsrv_str2,rsrv_str3,rsrv_str4,rsrv_str5,rsrv_date1,rsrv_date2,rsrv_date3,remark,update_staff_id,update_depart_id,update_time,oper_code
  FROM tf_b_trade_grpmbmp a
 WHERE a.trade_id=:TRADE_ID