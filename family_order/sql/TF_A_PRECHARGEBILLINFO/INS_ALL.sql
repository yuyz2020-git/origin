INSERT INTO tf_a_prechargebillinfo(partition_id,user_id,service_mode,serial_number,process_info,rsrv_num1,rsrv_num2,rsrv_num3,rsrv_str1,rsrv_str2,rsrv_str3,rsrv_str4,rsrv_str5,rsrv_str6,rsrv_str7,rsrv_str8,rsrv_str9,rsrv_str10,rsrv_date1,rsrv_date2,rsrv_date3,process_tag,staff_id,depart_id,start_date,end_date,remark)
 VALUES(:PARTITION_ID,TO_NUMBER(:USER_ID),:SERVICE_MODE,:SERIAL_NUMBER,:PROCESS_INFO,TO_NUMBER(:RSRV_NUM1),TO_NUMBER(:RSRV_NUM2),TO_NUMBER(:RSRV_NUM3),:RSRV_STR1,:RSRV_STR2,:RSRV_STR3,:RSRV_STR4,:RSRV_STR5,:RSRV_STR6,:RSRV_STR7,:RSRV_STR8,:RSRV_STR9,:RSRV_STR10,TO_DATE(:RSRV_DATE1,'YYYY-MM-DD HH24:MI:SS'),TO_DATE(:RSRV_DATE2,'YYYY-MM-DD HH24:MI:SS'),TO_DATE(:RSRV_DATE3,'YYYY-MM-DD HH24:MI:SS'),:PROCESS_TAG,:STAFF_ID,:DEPART_ID,TO_DATE(:START_DATE,'YYYY-MM-DD HH24:MI:SS'),TO_DATE(:END_DATE,'YYYY-MM-DD HH24:MI:SS'),:REMARK)