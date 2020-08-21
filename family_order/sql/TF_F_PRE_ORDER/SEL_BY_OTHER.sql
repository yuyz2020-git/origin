SELECT pre_order_id,pre_depart_id,order_status,pre_exe_depart_id,trade_type_code,serial_number,cust_name,vip_type_code,manager_staff_id,manager_phone,accept_staff_id,to_char(accept_date,'yyyy-mm-dd hh24:mi:ss') accept_date,pre_content,exe_staff_id,exe_depart_id,to_char(exe_date,'yyyy-mm-dd hh24:mi:ss') exe_date,exe_result,rsrv_str1,decode(order_status,'0','等待执行','1','正在执行','2','执行成功','3','执行失败','4','预约取消') rsrv_str2,rsrv_str3,rsrv_str4,rsrv_str5,rsrv_str6,rsrv_str7,rsrv_str8,rsrv_str9,rsrv_str10,to_char(rsrv_date1,'yyyy-mm-dd hh24:mi:ss') rsrv_date1,to_char(rsrv_date2,'yyyy-mm-dd hh24:mi:ss') rsrv_date2,to_char(rsrv_date3,'yyyy-mm-dd hh24:mi:ss') rsrv_date3,to_char(rsrv_date4,'yyyy-mm-dd hh24:mi:ss') rsrv_date4 
  FROM tf_f_pre_order
 WHERE (:ORDER_STATUS IS NULL OR order_status=:ORDER_STATUS)
   AND (:PRE_EXE_DEPART_ID IS NULL OR pre_exe_depart_id=:PRE_EXE_DEPART_ID)
   AND trade_type_code=:TRADE_TYPE_CODE
   AND (:SERIAL_NUMBER IS NULL OR serial_number=:SERIAL_NUMBER)
   AND accept_date>=TO_DATE(:START_DATE, 'YYYY-MM-DD HH24:MI:SS')
   AND accept_date<=TO_DATE(:END_DATE, 'YYYY-MM-DD HH24:MI:SS')