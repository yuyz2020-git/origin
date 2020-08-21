SELECT PARTITION_ID,
       TO_CHAR(INST_ID) INST_ID,
       TO_CHAR(USER_ID_A) USER_ID_A,
       SERIAL_NUMBER_A,
       TO_CHAR(USER_ID_B) USER_ID_B,
       SERIAL_NUMBER_B,
       RELATION_TYPE_CODE,
       ROLE_TYPE_CODE,
       ROLE_CODE_A,
       ROLE_CODE_B,
       ORDERNO,
       SHORT_CODE,
       TO_CHAR(INST_ID) INST_ID,
       TO_CHAR(START_DATE, 'yyyy-mm-dd hh24:mi:ss') START_DATE,
       TO_CHAR(END_DATE, 'yyyy-mm-dd hh24:mi:ss') END_DATE,
       TO_CHAR(UPDATE_TIME, 'yyyy-mm-dd hh24:mi:ss') UPDATE_TIME,
       UPDATE_STAFF_ID,
       UPDATE_DEPART_ID,
       REMARK,
       RSRV_NUM1,
       RSRV_NUM2,
       RSRV_NUM3,
       TO_CHAR(RSRV_NUM4) RSRV_NUM4,
       TO_CHAR(RSRV_NUM5) RSRV_NUM5,
       RSRV_STR1,
       RSRV_STR2,
       RSRV_STR3,
       RSRV_STR4,
       RSRV_STR5,
       TO_CHAR(RSRV_DATE1, 'yyyy-mm-dd hh24:mi:ss') RSRV_DATE1,
       TO_CHAR(RSRV_DATE2, 'yyyy-mm-dd hh24:mi:ss') RSRV_DATE2,
       TO_CHAR(RSRV_DATE3, 'yyyy-mm-dd hh24:mi:ss') RSRV_DATE3,
       RSRV_TAG1,
       RSRV_TAG2,
       RSRV_TAG3
  FROM TF_F_RELATION_UU
 WHERE 1 = 1
   AND USER_ID_B = :USER_ID_B
   AND SERIAL_NUMBER_B = :SERIAL_NUMBER_B
   AND PARTITION_ID = MOD(TO_NUMBER(:USER_ID_B), 10000)
   AND RELATION_TYPE_CODE = :RELATION_TYPE_CODE
   AND ROLE_CODE_B = :ROLE_CODE_B
   AND ROLE_CODE_A = :ROLE_CODE_A
   AND RSRV_STR1 = :EC_USER_ID
   AND SYSDATE < END_DATE + 0
