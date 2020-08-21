UPDATE tf_f_user_other
   SET rsrv_value=:RSRV_VALUE,rsrv_str1=:RSRV_STR1,rsrv_str2=:RSRV_STR2,rsrv_str3=:RSRV_STR3,rsrv_str4=:RSRV_STR4,rsrv_str5=:RSRV_STR5,rsrv_str6=:RSRV_STR6,rsrv_str7=:RSRV_STR7,rsrv_str8=:RSRV_STR8,rsrv_str9=:RSRV_STR9,rsrv_str10=:RSRV_STR10,
   UPDATE_TIME=to_date(:UPDATE_TIME,'yyyy-mm-dd hh24:mi:ss'),UPDATE_STAFF_ID=:UPDATE_STAFF_ID,UPDATE_DEPART_ID=:UPDATE_DEPART_ID
 WHERE user_id = TO_NUMBER(:USER_ID)
   AND partition_id = MOD(TO_NUMBER(:USER_ID),10000)
   AND rsrv_value_code = :RSRV_VALUE_CODE
   AND SYSDATE BETWEEN start_date AND end_date+0