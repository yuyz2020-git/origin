SELECT to_char(trade_id) trade_id,to_char(user_id) user_id,serial_number,biz_type_code,org_domain,opr_source,passwd,biz_state_code,to_char(start_date,'yyyy-mm-dd hh24:mi:ss') start_date,to_char(end_date,'yyyy-mm-dd hh24:mi:ss') end_date,modify_tag,rsrv_num1,rsrv_num2,rsrv_num3,to_char(rsrv_num4) rsrv_num4,to_char(rsrv_num5) rsrv_num5,rsrv_str1,rsrv_str2,rsrv_str3,rsrv_str4,rsrv_str5,to_char(rsrv_date1,'yyyy-mm-dd hh24:mi:ss') rsrv_date1,to_char(rsrv_date2,'yyyy-mm-dd hh24:mi:ss') rsrv_date2,to_char(rsrv_date3,'yyyy-mm-dd hh24:mi:ss') rsrv_date3,remark,trade_staff_id,trade_depart_id,to_char(trade_time,'yyyy-mm-dd hh24:mi:ss') trade_time 
  FROM tf_b_trade_mbmp
 WHERE trade_id=TO_NUMBER(:TRADE_ID)