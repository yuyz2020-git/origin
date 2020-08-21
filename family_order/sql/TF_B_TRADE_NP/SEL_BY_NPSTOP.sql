SELECT TO_CHAR(TRADE_ID) TRADE_ID,
       ACCEPT_MONTH,
       TO_CHAR(USER_ID) USER_ID,
       TRADE_TYPE_CODE,
       NP_SERVICE_TYPE,
       SERIAL_NUMBER,
       FLOW_ID,
       MESSAGE_ID,
       BRC_ID,
       MSG_CMD_CODE,
       MD5,
       PORT_OUT_NETID,
       PORT_IN_NETID,
       HOME_NETID,
       B_NP_CARD_TYPE,
       A_NP_CARD_TYPE,
       CUST_NAME,
       CRED_TYPE,
       PSPT_ID,
       PHONE,
       ACTOR_CUST_NAME,
       ACTOR_CRED_TYPE,
       ACTOR_PSPT_ID,
       TO_CHAR(ACCEPT_DATE, 'YYYY-MM-DD HH24:MI:SS') ACCEPT_DATE,
       TO_CHAR(NP_START_DATE, 'YYYY-MM-DD HH24:MI:SS') NP_START_DATE,
       TO_CHAR(CREATE_TIME, 'YYYY-MM-DD HH24:MI:SS') CREATE_TIME,
       TO_CHAR(BOOK_SEND_TIME, 'YYYY-MM-DD HH24:MI:SS') BOOK_SEND_TIME,
       SEND_TIMES,
       TO_NUMBER(RESULT_CODE) RESULT_CODE,
       RESULT_MESSAGE,
       ERROR_MESSAGE,
       STATE,
       REMARK,
       RSRV_STR1,
       RSRV_STR2,
       RSRV_STR3,
       RSRV_STR4,
       RSRV_STR5
  FROM TF_B_TRADE_NP A
 WHERE A.TRADE_ID = (SELECT /*+ ORDERED INDEX(B IDX_TF_B_TRADE_NP_UID)*/
                      MAX(B.TRADE_ID) TRADE_ID
                       FROM TF_B_TRADE_NP B
                      WHERE B.USER_ID = :USER_ID
                        AND B.TRADE_TYPE_CODE = :TRADE_TYPE_CODE
                        AND B.CANCEL_TAG = :CANCEL_TAG)