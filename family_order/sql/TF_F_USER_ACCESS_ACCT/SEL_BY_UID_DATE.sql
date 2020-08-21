SELECT INST_ID,PARTITION_ID,USER_ID,SERIAL_NUMBER,ACCESS_TYPE,ACCESS_ACCT,ACCESS_PWD,to_char(START_DATE, 'yyyy-mm-dd hh24:mi:ss') START_DATE,
to_char(END_DATE, 'yyyy-mm-dd hh24:mi:ss') END_DATE,to_char(UPDATE_TIME, 'yyyy-mm-dd hh24:mi:ss') UPDATE_TIME,UPDATE_STAFF_ID,
UPDATE_DEPART_ID,REMARK,RSRV_STR1,RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5,RSRV_TAG1,RSRV_TAG2,RSRV_TAG3,
to_char(RSRV_DATE1, 'yyyy-mm-dd hh24:mi:ss') RSRV_DATE1,to_char(RSRV_DATE2, 'yyyy-mm-dd hh24:mi:ss') RSRV_DATE2,
to_char(RSRV_DATE3, 'yyyy-mm-dd hh24:mi:ss') RSRV_DATE3
  FROM TF_F_USER_ACCESS_ACCT 
 WHERE USER_ID = TO_NUMBER(:USER_ID)
   AND PARTITION_ID = MOD(TO_NUMBER(:USER_ID),10000)
   AND TO_DATE(:TIME_POINT, 'YYYYMMDDHH24MISS') >= START_DATE
   AND TO_DATE(:TIME_POINT, 'YYYYMMDDHH24MISS') <= END_DATE
   AND END_DATE > START_DATE