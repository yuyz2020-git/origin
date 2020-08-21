SELECT TO_CHAR(TRADE_ID) TRADE_ID,
       ACCEPT_MONTH,
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
       RSRV_NUM4,
       RSRV_NUM5,
       RSRV_STR1,
       RSRV_STR2,
       RSRV_STR3,
       TO_CHAR(RSRV_STR4) RSRV_STR4,
       TO_CHAR(RSRV_STR5) RSRV_STR5,
       TO_CHAR(RSRV_DATE1, 'YYYY-MM-DD HH24:MI:SS') RSRV_DATE1,
       TO_CHAR(RSRV_DATE2, 'YYYY-MM-DD HH24:MI:SS') RSRV_DATE2,
       TO_CHAR(RSRV_DATE3, 'YYYY-MM-DD HH24:MI:SS') RSRV_DATE3,
       RSRV_TAG1,
       RSRV_TAG2,
       RSRV_TAG3
  FROM TF_B_TRADE_RELATION T
 WHERE T.TRADE_ID = TO_NUMBER(:TRADE_ID)
   AND T.RELATION_TYPE_CODE = :RELATION_TYPE_CODE
   AND T.ACCEPT_MONTH = TO_NUMBER(SUBSTR(TO_CHAR(T.TRADE_ID),5,2))
   AND SYSDATE BETWEEN T.START_DATE AND T.END_DATE 