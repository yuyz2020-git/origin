INSERT INTO tf_f_mobile_extra(partition_id,user_id,serial_number,bind_serial_number,obj_cust_name,user_type_code,pspt_type_code,pspt_id,work_address,payfor_way_code,bindsale_attr,discnt_code,purchase_attr,rsrv_str1,rsrv_str2,rsrv_str3,rsrv_str4,rsrv_str5,rsrv_tag1,start_date,end_date,oper_staff_id,oper_time)
 VALUES(:PARTITION_ID,TO_NUMBER(:USER_ID),:SERIAL_NUMBER,:BIND_SERIAL_NUMBER,:OBJ_CUST_NAME,:USER_TYPE_CODE,:PSPT_TYPE_CODE,:PSPT_ID,:WORK_ADDRESS,:PAYFOR_WAY_CODE,:BINDSALE_ATTR,:DISCNT_CODE,:PURCHASE_ATTR,:RSRV_STR1,:RSRV_STR2,:RSRV_STR3,:RSRV_STR4,:RSRV_STR5,:RSRV_TAG1,TO_DATE(:START_DATE,'YYYY-MM-DD HH24:MI:SS'),TO_DATE(:END_DATE,'YYYY-MM-DD HH24:MI:SS'),:OPER_STAFF_ID,sysdate)