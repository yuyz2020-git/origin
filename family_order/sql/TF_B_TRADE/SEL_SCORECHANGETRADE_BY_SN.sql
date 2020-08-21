SELECT TO_CHAR(TRADE_ID) TRADE_ID,
       TO_CHAR(ORDER_ID) ORDER_ID,
       TO_CHAR(BPM_ID) BPM_ID,
       TRADE_TYPE_CODE,
       IN_MODE_CODE,
       PRIORITY,
       SUBSCRIBE_STATE,
       NEXT_DEAL_TAG,
       PRODUCT_ID,
       BRAND_CODE,
       TO_CHAR(USER_ID) USER_ID,
       TO_CHAR(CUST_ID) CUST_ID,
       TO_CHAR(ACCT_ID) ACCT_ID,
       SERIAL_NUMBER,
       CUST_NAME,
       TO_CHAR(ACCEPT_DATE, 'yyyy-mm-dd hh24:mi:ss') ACCEPT_DATE,
       ACCEPT_MONTH,
       TRADE_STAFF_ID,
       TRADE_DEPART_ID,
       TRADE_CITY_CODE,
       TRADE_EPARCHY_CODE,
       TERM_IP,
       EPARCHY_CODE,
       CITY_CODE,
       OLCOM_TAG,
       TO_CHAR(EXEC_TIME, 'yyyy-mm-dd hh24:mi:ss') EXEC_TIME,
       TO_CHAR(FINISH_DATE, 'yyyy-mm-dd hh24:mi:ss') FINISH_DATE,
       TO_CHAR(OPER_FEE) OPER_FEE,
       TO_CHAR(FOREGIFT) FOREGIFT,
       TO_CHAR(ADVANCE_PAY) ADVANCE_PAY,
       INVOICE_NO,
       FEE_STATE,
       TO_CHAR(FEE_TIME, 'yyyy-mm-dd hh24:mi:ss') FEE_TIME,
       FEE_STAFF_ID,
       CANCEL_TAG,
       PROCESS_TAG_SET,
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
       REMARK
  FROM TF_B_TRADE A
 WHERE SERIAL_NUMBER = :SERIAL_NUMBER
   AND EXISTS
 (SELECT 1
          FROM TF_B_TRADE_SCORE B
         WHERE B.ACCEPT_MONTH = TO_NUMBER(SUBSTR(B.TRADE_ID, 5, 2))
           AND B.TRADE_ID = A.TRADE_ID
           AND B.USER_ID = A.USER_ID
           AND B.SERIAL_NUMBER = :SERIAL_NUMBER
           AND ABS(B.SCORE_CHANGED) > 0)