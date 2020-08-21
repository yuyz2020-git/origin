INSERT INTO TI_B_USER_FOREGIFT (SYNC_SEQUENCE,MODIFY_TAG,TRADE_ID,PARTITION_ID,USER_ID,FOREGIFT_CODE,MONEY,CUST_NAME,PSPT_ID,FOREGIFT_IN_DATE,FOREGIFT_OUT_DATE,UPDATE_TIME,UPDATE_STAFF_ID,UPDATE_DEPART_ID,REMARK,RSRV_NUM1,RSRV_NUM2,RSRV_NUM3,RSRV_NUM4,RSRV_NUM5,RSRV_STR1,RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5,RSRV_DATE1,RSRV_DATE2,RSRV_DATE3,RSRV_TAG1,RSRV_TAG2,RSRV_TAG3)
 SELECT TO_NUMBER(:SYNC_SEQUENCE),'2',TRADE_ID,PARTITION_ID,USER_ID,FOREGIFT_CODE,MONEY,CUST_NAME,PSPT_ID,FOREGIFT_IN_DATE,FOREGIFT_OUT_DATE,UPDATE_TIME,UPDATE_STAFF_ID,UPDATE_DEPART_ID,REMARK,RSRV_NUM1,RSRV_NUM2,RSRV_NUM3,RSRV_NUM4,RSRV_NUM5,RSRV_STR1,RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5,RSRV_DATE1,RSRV_DATE2,RSRV_DATE3,RSRV_TAG1,RSRV_TAG2,RSRV_TAG3
 FROM TF_B_TRADE_USER_FOREGIFT_BAK a
 WHERE TRADE_ID = :TRADE_ID
 AND ACCEPT_MONTH = :ACCEPT_MONTH
 AND not exists (SELECT 1 from TI_B_USER_FOREGIFT b
                   WHERE SYNC_SEQUENCE = TO_NUMBER(:SYNC_SEQUENCE)
                   AND b.USER_ID = a.USER_ID
                   AND b.foregift_code = a.foregift_code)