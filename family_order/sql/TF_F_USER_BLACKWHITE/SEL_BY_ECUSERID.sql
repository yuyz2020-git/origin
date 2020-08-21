 SELECT PARTITION_ID,       INST_ID,       USER_ID,       USER_TYPE_CODE,       EC_USER_ID,       SERVICE_ID,       BIZ_IN_CODE,       BIZ_IN_CODE_A,       SERV_CODE,       SERIAL_NUMBER,       EC_SERIAL_NUMBER,       GROUP_ID,       BIZ_CODE,       BIZ_NAME,       BIZ_DESC,       BOOK_DATE,       CONTRACT_ID,       PRICE,       BILLING_TYPE,       OPR_EFF_TIME,       OPR_SEQ_ID,       OPER_STATE,       EXPECT_TIME,       PLAT_SYNC_STATE,       START_DATE,       END_DATE,       UPDATE_TIME,       UPDATE_STAFF_ID,       UPDATE_DEPART_ID,       REMARK,       RSRV_NUM1,       RSRV_NUM2,       RSRV_NUM3,       RSRV_NUM4,       RSRV_NUM5,       RSRV_STR1,       RSRV_STR2,       RSRV_STR3,       RSRV_STR4,       RSRV_STR5,       RSRV_DATE1,       RSRV_DATE2,       RSRV_DATE3,       RSRV_TAG1,       RSRV_TAG2,       RSRV_TAG3
  FROM TF_F_USER_BLACKWHITE A
 WHERE  A.EC_USER_ID = TO_NUMBER(:EC_USER_ID)
   AND A.START_DATE < SYSDATE
   AND A.END_DATE > SYSDATE