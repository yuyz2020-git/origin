SELECT PARTITION_ID,
       TO_CHAR(USER_ID) USER_ID,
       TO_CHAR(USER_ID_A) USER_ID_A,
       PRODUCT_ID,
       PACKAGE_ID,
       DISCNT_GIFT_ID,
       A_DISCNT_CODE,
       DEPOSIT_TYPE,
       TO_CHAR(INST_ID) INST_ID,
       TO_CHAR(CAMPN_ID) CAMPN_ID,
       MONTHS,
       TO_CHAR(LIMIT_MONEY) LIMIT_MONEY,
       PAY_MODE,
       TO_CHAR(FEE) FEE,
       PAYMENT_ID,
       IN_DEPOSIT_CODE,
       OUT_DEPOSIT_CODE,
       TO_CHAR(RELATION_TRADE_ID) RELATION_TRADE_ID,
       TO_CHAR(START_DATE, 'YYYY-MM-DD HH24:MI:SS') START_DATE,
       TO_CHAR(END_DATE, 'YYYY-MM-DD HH24:MI:SS') END_DATE,
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
  FROM TF_F_USER_SALE_DEPOSIT
 WHERE USER_ID = TO_NUMBER(:USER_ID)
   AND PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)
   AND END_DATE > TO_DATE(:ACCT_DAY_END_DATE, 'YYYY-MM-DD HH24:MI:SS') 
   AND END_DATE < TO_DATE(:END_DATE, 'YYYY-MM-DD')