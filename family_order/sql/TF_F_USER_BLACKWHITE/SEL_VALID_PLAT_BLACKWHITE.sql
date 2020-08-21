SELECT PARTITION_ID,
       INST_ID,
       EC_SERIAL_NUMBER,
       USER_ID,
       EC_USER_ID,
       USER_TYPE_CODE,
       SERVICE_ID,
       SERV_CODE,
       SERIAL_NUMBER,
       GROUP_ID,
       BIZ_CODE,
       BIZ_NAME,
       BIZ_DESC,
       BOOK_DATE,
       CONTRACT_ID,
       PRICE,
       BILLING_TYPE,
       OPR_SEQ_ID,
       EXPECT_TIME,
       START_DATE,
       END_DATE,
       UPDATE_TIME,
       UPDATE_STAFF_ID,
       UPDATE_DEPART_ID,
       REMARK,
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
       TO_CHAR(RSRV_DATE1, 'yyyy-mm-dd hh24:mi:ss') RSRV_DATE1,
       TO_CHAR(RSRV_DATE2, 'yyyy-mm-dd hh24:mi:ss') RSRV_DATE2,
       TO_CHAR(RSRV_DATE3, 'yyyy-mm-dd hh24:mi:ss') RSRV_DATE3,
       RSRV_TAG1,
       RSRV_TAG2,
       RSRV_TAG3,
       BIZ_IN_CODE,
       BIZ_IN_CODE_A,
       PLAT_SYNC_STATE
  FROM TF_F_USER_BLACKWHITE
 WHERE EC_USER_ID = :EC_USER_ID
   AND PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)
   AND USER_ID = TO_NUMBER(:USER_ID)
   AND SYSDATE BETWEEN START_DATE AND END_DATE