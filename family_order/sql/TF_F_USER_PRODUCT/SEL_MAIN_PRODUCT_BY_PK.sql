SELECT PARTITION_ID,
         TO_CHAR(USER_ID) USER_ID,
         TO_CHAR(USER_ID_A) USER_ID_A,
         PRODUCT_ID,
         PRODUCT_MODE,
         BRAND_CODE,
         TO_CHAR(INST_ID) INST_ID,
         TO_CHAR(CAMPN_ID) CAMPN_ID,
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
         RSRV_TAG3,
         MAIN_TAG
    FROM TF_F_USER_PRODUCT T
   WHERE T.PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)
     AND T.USER_ID = :USER_ID
     AND T.END_DATE > T.START_DATE
     AND T.MAIN_TAG = '1' 
     order by end_date desc