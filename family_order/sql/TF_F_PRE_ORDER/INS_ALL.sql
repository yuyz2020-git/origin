INSERT INTO tf_f_pre_order(pre_order_id,pre_depart_id,order_status,pre_exe_depart_id,trade_type_code,serial_number,cust_name,vip_type_code,manager_staff_id,manager_phone,accept_staff_id,accept_date,pre_content,exe_staff_id,exe_depart_id,exe_date,exe_result,rsrv_str1,rsrv_str2,rsrv_str3,rsrv_str4,rsrv_str5,rsrv_str6,rsrv_str7,rsrv_str8,rsrv_str9,rsrv_str10,rsrv_date1,rsrv_date2,rsrv_date3,rsrv_date4)
 VALUES(:PRE_ORDER_ID,:PRE_DEPART_ID,:ORDER_STATUS,:PRE_EXE_DEPART_ID,:TRADE_TYPE_CODE,:SERIAL_NUMBER,:CUST_NAME,:VIP_TYPE_CODE,:MANAGER_STAFF_ID,:MANAGER_PHONE,:ACCEPT_STAFF_ID,TO_DATE(:ACCEPT_DATE,'YYYY-MM-DD HH24:MI:SS'),:PRE_CONTENT,:EXE_STAFF_ID,:EXE_DEPART_ID,TO_DATE(:EXE_DATE,'YYYY-MM-DD HH24:MI:SS'),:EXE_RESULT,:RSRV_STR1,:RSRV_STR2,:RSRV_STR3,:RSRV_STR4,:RSRV_STR5,:RSRV_STR6,:RSRV_STR7,:RSRV_STR8,:RSRV_STR9,:RSRV_STR10,TO_DATE(:RSRV_DATE1,'YYYY-MM-DD HH24:MI:SS'),TO_DATE(:RSRV_DATE2,'YYYY-MM-DD HH24:MI:SS'),TO_DATE(:RSRV_DATE3,'YYYY-MM-DD HH24:MI:SS'),TO_DATE(:RSRV_DATE4,'YYYY-MM-DD HH24:MI:SS'))