SELECT PARTITION_ID, TO_CHAR(USER_ID) USER_ID, SERVICE_MODE, SERIAL_NUMBER,
       PROCESS_INFO, RSRV_NUM1, RSRV_NUM2, RSRV_NUM3, RSRV_STR1, RSRV_STR2,
       RSRV_STR3, RSRV_STR4, RSRV_STR5, RSRV_STR6, RSRV_STR7, RSRV_STR8,
       RSRV_STR9, RSRV_STR10,
       TO_CHAR(RSRV_DATE1, 'yyyy-mm-dd hh24:mi:ss') RSRV_DATE1,
       TO_CHAR(RSRV_DATE2, 'yyyy-mm-dd hh24:mi:ss') RSRV_DATE2,
       TO_CHAR(RSRV_DATE3, 'yyyy-mm-dd hh24:mi:ss') RSRV_DATE3, PROCESS_TAG,
       STAFF_ID, DEPART_ID,
       TO_CHAR(START_DATE, 'yyyy-mm-dd hh24:mi:ss') START_DATE,
       TO_CHAR(END_DATE, 'yyyy-mm-dd hh24:mi:ss') END_DATE, REMARK
  FROM TF_F_USER_OTHERSERV
 WHERE USER_ID = TO_NUMBER(:USER_ID)
   AND PARTITION_ID = MOD(:USER_ID, 10000)
   AND SERVICE_MODE = :SERVICE_MODE
   AND PROCESS_TAG = :PROCESS_TAG
   AND RSRV_STR1 != '9'