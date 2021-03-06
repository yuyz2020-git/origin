SELECT TO_CHAR(TRADE_ID) TRADE_ID,
       ACCEPT_MONTH,
       TO_CHAR(CUST_ID) CUST_ID,
       CUST_NAME,
       SIMPLE_SPELL,
       CUST_TYPE,
       CUST_KIND,
       CUST_STATE,
       PSPT_TYPE_CODE,
       PSPT_ID,
       OPEN_LIMIT,
       EPARCHY_CODE,
       CITY_CODE,
       CUST_PASSWD,
       TO_CHAR(SCORE_VALUE) SCORE_VALUE,
       CREDIT_CLASS,
       TO_CHAR(BASIC_CREDIT_VALUE) BASIC_CREDIT_VALUE,
       TO_CHAR(CREDIT_VALUE) CREDIT_VALUE,
       DEVELOP_STAFF_ID,
       DEVELOP_DEPART_ID,
       TO_CHAR(IN_DATE, 'YYYY-MM-DD HH24:MI:SS') IN_DATE,
       IN_STAFF_ID,
       IN_DEPART_ID,
       REMOVE_TAG,
       TO_CHAR(REMOVE_DATE, 'YYYY-MM-DD HH24:MI:SS') REMOVE_DATE,
       REMOVE_STAFF_ID,
       REMOVE_CHANGE,
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
       RSRV_STR6,
       RSRV_STR7,
       RSRV_STR8,
       RSRV_STR9,
       RSRV_STR10,
       TO_CHAR(RSRV_DATE1, 'YYYY-MM-DD HH24:MI:SS') RSRV_DATE1,
       TO_CHAR(RSRV_DATE2, 'YYYY-MM-DD HH24:MI:SS') RSRV_DATE2,
       TO_CHAR(RSRV_DATE3, 'YYYY-MM-DD HH24:MI:SS') RSRV_DATE3,
       TO_CHAR(RSRV_DATE4, 'YYYY-MM-DD HH24:MI:SS') RSRV_DATE4,
       TO_CHAR(RSRV_DATE5, 'YYYY-MM-DD HH24:MI:SS') RSRV_DATE5,
       RSRV_TAG1,
       RSRV_TAG2,
       RSRV_TAG3,
       RSRV_TAG4,
       RSRV_TAG5,
       IS_REAL_NAME,
       CITY_CODE_A,
       REMARK
  FROM TF_B_TRADE_CUSTOMER T
 WHERE T.TRADE_ID = TO_NUMBER(:TRADE_ID)
   AND T.ACCEPT_MONTH = TO_NUMBER(SUBSTR(:TRADE_ID, 5, 2))
