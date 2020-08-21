SELECT /*+ index(t, IDX_TF_F_USER_OTHER_UID) */
 PARTITION_ID, TO_CHAR(USER_ID) USER_ID, RSRV_VALUE_CODE, RSRV_VALUE, RSRV_STR1,
 RSRV_STR2, RSRV_STR3, RSRV_STR4, RSRV_STR5, RSRV_STR6, RSRV_STR7, RSRV_STR8,
 RSRV_STR9, RSRV_STR10, TO_CHAR(START_DATE, 'yyyy-mm-dd hh24:mi:ss') START_DATE,
 TO_CHAR(END_DATE, 'yyyy-mm-dd hh24:mi:ss') END_DATE
  FROM TF_F_USER_OTHER T
 WHERE PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)
   AND USER_ID = TO_NUMBER(:USER_ID)
   AND RSRV_VALUE_CODE = :RSRV_VALUE_CODE
   AND RSRV_STR1 = :RSRV_STR1
   AND RSRV_STR5 = :RSRV_STR5
   AND END_DATE > SYSDATE