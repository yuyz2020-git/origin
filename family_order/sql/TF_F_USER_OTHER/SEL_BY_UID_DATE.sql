SELECT PARTITION_ID, TO_CHAR(USER_ID) USER_ID, RSRV_VALUE_CODE, RSRV_VALUE, RSRV_NUM1, RSRV_NUM2, RSRV_NUM3, TO_CHAR(RSRV_NUM4) RSRV_NUM4, TO_CHAR(RSRV_NUM5) RSRV_NUM5, RSRV_STR1, RSRV_STR2, RSRV_STR3, RSRV_STR4, RSRV_STR5, RSRV_STR6, RSRV_STR7, RSRV_STR8, RSRV_STR9, RSRV_STR10, TO_CHAR(RSRV_DATE1,'YYYY-MM-DD HH24:MI:SS') RSRV_DATE1, TO_CHAR(RSRV_DATE2,'YYYY-MM-DD HH24:MI:SS') RSRV_DATE2, TO_CHAR(RSRV_DATE3,'YYYY-MM-DD HH24:MI:SS') RSRV_DATE3, RSRV_TAG1, RSRV_TAG2, RSRV_TAG3, PROCESS_TAG, STAFF_ID, DEPART_ID, TO_CHAR(START_DATE,'YYYY-MM-DD HH24:MI:SS') START_DATE, TO_CHAR(END_DATE,'YYYY-MM-DD HH24:MI:SS') END_DATE, TO_CHAR(UPDATE_TIME,'YYYY-MM-DD HH24:MI:SS') UPDATE_TIME, UPDATE_STAFF_ID, UPDATE_DEPART_ID, REMARK
 FROM TF_F_USER_OTHER
 WHERE USER_ID = TO_NUMBER(:USER_ID)
  AND PARTITION_ID=MOD(TO_NUMBER(:USER_ID),10000)
  AND TO_DATE(:TIME_POINT, 'YYYYMMDDHH24MISS') >= START_DATE
  AND TO_DATE(:TIME_POINT, 'YYYYMMDDHH24MISS') <= END_DATE
  AND END_DATE > START_DATE