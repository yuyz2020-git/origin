SELECT PARTITION_ID,to_char(USER_ID) USER_ID,RSRV_VALUE_CODE,RSRV_VALUE,RSRV_STR1,RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5,RSRV_STR6,RSRV_STR7,RSRV_STR8,RSRV_STR9,RSRV_STR10,to_char(START_DATE,'yyyy-mm-dd hh24:mi:ss') START_DATE,to_char(END_DATE,'yyyy-mm-dd hh24:mi:ss') END_DATE
  FROM TF_F_USER_OTHER
 WHERE partition_id=MOD(TO_NUMBER(:USER_ID),10000)
   AND user_id=TO_NUMBER(:USER_ID)
   AND rsrv_value_code=:RSRV_VALUE_CODE
   AND rsrv_str8 IS NULL
   AND end_date>sysdate