INSERT INTO tf_f_recommend_new_result(user_id,partition_id,serial_number,eparchy_code,channel_code,execute_id,execute_desc,id_type,id,trade_id,deal_time,deal_tag,deal_staff_id,deal_depart_id,deal_eparchy_code,rsrv_str1,rsrv_str2,rsrv_str3,rsrv_str4,rsrv_str5)
 VALUES(TO_NUMBER(:USER_ID),:PARTITION_ID,:SERIAL_NUMBER,:EPARCHY_CODE,:CHANNEL_CODE,:EXECUTE_ID,:EXECUTE_DESC,:ID_TYPE,:ID,TO_NUMBER(:TRADE_ID),TO_DATE(:DEAL_TIME,'YYYY-MM-DD HH24:MI:SS'),:DEAL_TAG,:DEAL_STAFF_ID,:DEAL_DEPART_ID,:DEAL_EPARCHY_CODE,:RSRV_STR1,:RSRV_STR2,:RSRV_STR3,:RSRV_STR4,:RSRV_STR5)