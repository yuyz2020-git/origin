SELECT PARTITION_ID,
       TO_CHAR(USER_ID) USER_ID,
       SERVICE_ID,
       MAIN_TAG,
       STATE_CODE,
       TO_CHAR(START_DATE, 'YYYY-MM-DD HH24:MI:SS') START_DATE,
       TO_CHAR(END_DATE, 'YYYY-MM-DD HH24:MI:SS') END_DATE,
       UPDATE_STAFF_ID,
       UPDATE_DEPART_ID,
       REMARK,
       INST_ID,
       RSRV_NUM1,
       RSRV_NUM2,
       RSRV_NUM3,
       RSRV_NUM4,
       RSRV_NUM5,
       RSRV_STR1,
       RSRV_STR2,
       RSRV_STR3,
       RSRV_STR4,
       RSRV_STR5,
       TO_CHAR(RSRV_DATE1, 'YYYY-MM-DD HH24:MI:SS') RSRV_DATE1,
       TO_CHAR(RSRV_DATE2, 'YYYY-MM-DD HH24:MI:SS') RSRV_DATE2,
       TO_CHAR(RSRV_DATE3, 'YYYY-MM-DD HH24:MI:SS') RSRV_DATE3,
       RSRV_TAG1,
       RSRV_TAG2,
       RSRV_TAG3
  FROM TF_F_USER_SVCSTATE
 WHERE USER_ID = TO_NUMBER(:USER_ID)
   AND PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)
   AND SERVICE_ID = :SERVICE_ID
   AND STATE_CODE = :STATE_CODE
   AND START_DATE >= TRUNC(LAST_DAY(SYSDATE)+1)
   AND END_DATE > TRUNC(LAST_DAY(SYSDATE)+1)
 ORDER BY STATE_CODE