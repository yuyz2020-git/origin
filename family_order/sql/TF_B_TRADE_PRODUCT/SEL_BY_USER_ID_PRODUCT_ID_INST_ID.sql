SELECT TO_CHAR(TRADE_ID) TRADE_ID,
       ACCEPT_MONTH,
       TO_CHAR(USER_ID) USER_ID,
       TO_CHAR(USER_ID_A) USER_ID_A,
       PRODUCT_ID,
       PRODUCT_MODE,
       BRAND_CODE,
       OLD_PRODUCT_ID,
       OLD_BRAND_CODE,
       TO_CHAR(INST_ID) INST_ID,
       TO_CHAR(CAMPN_ID) CAMPN_ID,
       TO_CHAR(START_DATE, 'YYYY-MM-DD HH24:MI:SS') START_DATE,
       TO_CHAR(END_DATE, 'YYYY-MM-DD HH24:MI:SS') END_DATE,
       MODIFY_TAG,
       TO_CHAR(UPDATE_TIME, 'YYYY-MM-DD HH24:MI:SS') UPDATE_TIME,
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
       TO_CHAR(RSRV_DATE1, 'YYYY-MM-DD HH24:MI:SS') RSRV_DATE1,
       TO_CHAR(RSRV_DATE2, 'YYYY-MM-DD HH24:MI:SS') RSRV_DATE2,
       TO_CHAR(RSRV_DATE3, 'YYYY-MM-DD HH24:MI:SS') RSRV_DATE3,
       RSRV_TAG1,
       RSRV_TAG2,
       RSRV_TAG3
  FROM TF_B_TRADE_PRODUCT P
 WHERE P.TRADE_ID IN
       (SELECT BH.TRADE_ID
          FROM TF_BH_TRADE BH
         WHERE BH.USER_ID = TO_NUMBER(:USER_ID))
   AND USER_ID = TO_NUMBER(:USER_ID)
   AND P.PRODUCT_ID = :PRODUCT_ID
   AND P.INST_ID = :INST_ID
   AND P.MAIN_TAG = '1'
   AND P.MODIFY_TAG != '1'