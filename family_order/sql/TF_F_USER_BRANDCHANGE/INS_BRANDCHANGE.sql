INSERT INTO tf_f_user_brandchange(partition_id,user_id,brand_code,rsrv_str1,rsrv_str2,rsrv_str3,rsrv_str4,rsrv_str5,rsrv_str6,rsrv_num1,trade_type_code,start_date,end_date,update_time,update_staff_id,update_depart_id)
 VALUES(:PARTITION_ID,TO_NUMBER(:USER_ID),:BRAND_CODE,:RSRV_STR1,:RSRV_STR2,:RSRV_STR3,:RSRV_STR4,:RSRV_STR5,:RSRV_STR6,:RSRV_NUM1,:TRADE_TYPE_CODE,TO_DATE(:START_DATE,'YYYY-MM-DD HH24:MI:SS'),TO_DATE(:END_DATE,'YYYY-MM-DD HH24:MI:SS'),sysdate,:UPDATE_STAFF_ID,:UPDATE_DEPART_ID)