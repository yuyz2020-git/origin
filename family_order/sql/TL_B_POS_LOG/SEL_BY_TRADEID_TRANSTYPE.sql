SELECT TO_CHAR(POS_TRADE_ID) POS_TRADE_ID,
       TO_CHAR(TRADE_ID) TRADE_ID,
       SERIAL_NUMBER,
       TO_CHAR(USER_ID) USER_ID,
       STATUS,
       TRANS_TYPE,
       AMOUNT,
       POS_ID,
       CARD_NO,
       BANK_NO,
       TO_CHAR(TRANS_DATE_TIME, 'YYYY-MM-DD HH24:MI:SS') TRANS_DATE_TIME,
       TO_CHAR(TRANS_DATE_TIME, 'MMDD') TRANS_MMDD,
       CERT_NO,
       REF_NO,
       BATCH_NO,
       RESP,
       RESP_INFO,
       MERCH_ID,
       OPER_STAFF_ID,
       AUTH_NO,
       TO_CHAR(CANCEL_POS_TRADE_ID) CANCEL_POS_TRADE_ID,
       TO_CHAR(CANCEL_TRADE_ID) CANCEL_TRADE_ID,
       CANCEL_CERT_NO,
       CANCEL_REF_NO,
       LOCAL_ADDR,
       TO_CHAR(CANCEL_DATE, 'YYYY-MM-DD HH24:MI:SS') CANCEL_DATE,
       DECODE(TRUNC(CANCEL_DATE), TRUNC(SYSDATE), 0, 1) CAN_CANCEL,
       trunc(sysdate) - trunc(trans_date_time) today_pay,
       S_REQ,
       S_RESP,
       CANCEL_TRANS_TYPE,
       ACCEPT_TIME
  FROM TL_B_POS_LOG 
 WHERE TRADE_ID = :TRADE_ID
   AND STATUS = :STATUS
  AND TRANS_TYPE = :TRANS_TYPE