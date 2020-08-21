SELECT /*+index(a,PK_TF_F_USER_SVC)*/PARTITION_ID, to_char(USER_ID) USER_ID, to_char(USER_ID_A) USER_ID_A, SERVICE_ID, MAIN_TAG, to_char(INST_ID) INST_ID, to_char(CAMPN_ID) CAMPN_ID, to_char(START_DATE,'yyyy-mm-dd hh24:mi:ss') START_DATE, to_char(END_DATE,'yyyy-mm-dd hh24:mi:ss') END_DATE, to_char(UPDATE_TIME,'yyyy-mm-dd hh24:mi:ss') UPDATE_TIME, UPDATE_STAFF_ID, UPDATE_DEPART_ID, REMARK, RSRV_NUM1, RSRV_NUM2, RSRV_NUM3, to_char(RSRV_NUM4) RSRV_NUM4, to_char(RSRV_NUM5) RSRV_NUM5, RSRV_STR1, RSRV_STR2, RSRV_STR3, RSRV_STR4, RSRV_STR5, to_char(RSRV_DATE1,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE1, to_char(RSRV_DATE2,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE2, to_char(RSRV_DATE3,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE3, RSRV_TAG1, RSRV_TAG2, RSRV_TAG3
FROM TF_F_USER_SVC a
WHERE  a.USER_ID=:USER_ID
AND    a.Partition_Id = MOD(:USER_ID,10000)
  AND    a.SERVICE_ID + 0 =:SERVICE_ID
  AND a.end_date>sysdate
