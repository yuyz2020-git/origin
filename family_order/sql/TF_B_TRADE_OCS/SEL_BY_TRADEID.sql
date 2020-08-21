SELECT TO_CHAR(trade_id) trade_id,accept_month,                     
       inst_id,                                           
       TO_CHAR(user_id) user_id,user_type_code,monitor_type,serial_number,eparchy_code,                                             
       status,biz_type,monitor_flag rsrv_var14,monitor_rule_code rsrv_var15,                                               
       TO_CHAR(start_date, 'yyyy-mm-dd hh24:mi:ss') start_date,
       TO_CHAR(end_date, 'yyyy-mm-dd hh24:mi:ss') end_date,
       modify_tag,
       TO_CHAR(update_time, 'yyyy-mm-dd hh24:mi:ss') update_time, 
       update_staff_id,                                           
       update_depart_id,                                                                               
       remark,                                                   
       rsrv_num1,                                                
       rsrv_num2,                                                
       rsrv_num3,                                                
       rsrv_num4,                                                
       rsrv_num5,                                                
       rsrv_str1,                                                
       rsrv_str2,                                                
       rsrv_str3,                                                
       rsrv_str4,                                                
       rsrv_str5,
       rsrv_date1,
       rsrv_date2,
       rsrv_date3,
       rsrv_tag1,
       rsrv_tag2,
       rsrv_tag3                                               
  FROM tf_b_trade_ocs                                                
 WHERE trade_id = TO_NUMBER(:TRADE_ID)
 and accept_month = TO_NUMBER(SUBSTR(:TRADE_ID,5,2))