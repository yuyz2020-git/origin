SELECT T.PARTITION_ID,
       TO_CHAR(T.USER_ID) USER_ID,
       TO_CHAR(T.USER_ID_A) USER_ID_A,
       T.PRODUCT_ID,
       T.PRODUCT_MODE,
       T.BRAND_CODE,
       TO_CHAR(T.INST_ID) INST_ID,
       TO_CHAR(T.CAMPN_ID) CAMPN_ID,
       TO_CHAR(T.START_DATE, 'YYYY-MM-DD HH24:MI:SS') START_DATE,
       TO_CHAR(T.END_DATE, 'YYYY-MM-DD HH24:MI:SS') END_DATE,
       TO_CHAR(T.UPDATE_TIME, 'YYYY-MM-DD HH24:MI:SS') UPDATE_TIME,
       T.UPDATE_STAFF_ID,
       T.UPDATE_DEPART_ID,
       T.REMARK,
       T.RSRV_NUM1,
       T.RSRV_NUM2,
       T.RSRV_NUM3,
       TO_CHAR(T.RSRV_NUM4) RSRV_NUM4,
       TO_CHAR(T.RSRV_NUM5) RSRV_NUM5,
       T.RSRV_STR1,
       T.RSRV_STR2,
       T.RSRV_STR3,
       T.RSRV_STR4,
       T.RSRV_STR5,
       TO_CHAR(T.RSRV_DATE1, 'YYYY-MM-DD HH24:MI:SS') RSRV_DATE1,
       TO_CHAR(T.RSRV_DATE2, 'YYYY-MM-DD HH24:MI:SS') RSRV_DATE2,
       TO_CHAR(T.RSRV_DATE3, 'YYYY-MM-DD HH24:MI:SS') RSRV_DATE3,
       T.RSRV_TAG1,
       T.RSRV_TAG2,
       T.RSRV_TAG3,
       C.PARAM_NAME PARAM_NAME
  FROM TF_F_USER_PRODUCT T, TD_S_COMMPARA C
 WHERE T.USER_ID = TO_NUMBER(:USER_ID)
   AND T.PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)
   AND T.END_DATE > SYSDATE
   AND T.PRODUCT_ID = C.PARAM_CODE
   AND T.MAIN_TAG = '1'
   AND C.SUBSYS_CODE = 'CSM'
   AND C.PARAM_ATTR = 7349
   AND SYSDATE BETWEEN C.START_DATE AND C.END_DATE
   AND (C.EPARCHY_CODE = '0898' OR C.EPARCHY_CODE = 'ZZZZ')