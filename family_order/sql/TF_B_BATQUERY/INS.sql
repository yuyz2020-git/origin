INSERT INTO tf_b_batquery(subscribe_id,query_id,batch_oper_type,serial_number,process_tag,staff_id,depart_id,accept_date,process_tag_set,rsrv_str1,rsrv_str2,rsrv_str3,rsrv_str4,rsrv_str5,rsrv_str11,rsrv_str12,rsrv_str13,rsrv_str14,rsrv_str15,rsrv_num1,rsrv_num2,rsrv_num3,rsrv_num4,rsrv_num5,rsrv_date1,rsrv_date2,rsrv_date3)
 VALUES(TO_NUMBER(:SUBSCRIBE_ID),TO_NUMBER(:QUERY_ID),:BATCH_OPER_TYPE,:SERIAL_NUMBER,:PROCESS_TAG,:STAFF_ID,:DEPART_ID,TO_DATE(:ACCEPT_DATE,'YYYY-MM-DD HH24:MI:SS'),:PROCESS_TAG_SET,:RSRV_STR1,:RSRV_STR2,:RSRV_STR3,:RSRV_STR4,:RSRV_STR5,:RSRV_STR11,:RSRV_STR12,:RSRV_STR13,:RSRV_STR14,:RSRV_STR15,:RSRV_NUM1,:RSRV_NUM2,:RSRV_NUM3,TO_NUMBER(:RSRV_NUM4),TO_NUMBER(:RSRV_NUM5),TO_DATE(:RSRV_DATE1,'YYYY-MM-DD HH24:MI:SS'),TO_DATE(:RSRV_DATE2,'YYYY-MM-DD HH24:MI:SS'),TO_DATE(:RSRV_DATE3,'YYYY-MM-DD HH24:MI:SS'))