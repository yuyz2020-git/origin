SELECT partition_id,to_char(user_id) user_id,to_char(serial_number) serial_number,biz_code,biz_name,to_char(start_date,'yyyy-mm-dd hh24:mi:ss') start_date,to_char(end_date,'yyyy-mm-dd hh24:mi:ss') end_date,to_char(ec_user_id) ec_user_id,to_char(ec_serial_number) ec_serial_number,rsrv_num1,rsrv_num2,rsrv_num3,to_char(rsrv_num4) rsrv_num4,to_char(rsrv_num5) rsrv_num5,rsrv_str1,rsrv_str2,rsrv_str3,rsrv_str4,rsrv_str5,to_char(rsrv_date1,'yyyy-mm-dd hh24:mi:ss') rsrv_date1,to_char(rsrv_date2,'yyyy-mm-dd hh24:mi:ss') rsrv_date2,to_char(rsrv_date3,'yyyy-mm-dd hh24:mi:ss') rsrv_date3,remark,update_staff_id,update_depart_id,to_char(update_time,'yyyy-mm-dd hh24:mi:ss') update_time 

  FROM tf_f_user_grpmbmp_sub

 WHERE partition_id=MOD(TO_NUMBER(:USER_ID),10000)

   AND user_id=TO_NUMBER(:USER_ID)

   AND rsrv_str1=:RSRV_STR1

   AND sysdate<end_date