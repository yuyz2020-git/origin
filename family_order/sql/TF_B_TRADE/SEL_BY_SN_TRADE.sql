SELECT TO_CHAR(A.TRADE_ID) TRADE_ID,
       A.ACCEPT_MONTH,
       TO_CHAR(A.BATCH_ID) BATCH_ID,
       TO_CHAR(A.ORDER_ID) ORDER_ID,
       TO_CHAR(A.PROD_ORDER_ID) PROD_ORDER_ID,
       A.BPM_ID,
       TO_CHAR(A.CAMPN_ID) CAMPN_ID,
       A.TRADE_TYPE_CODE,
       A.PRIORITY,
       A.SUBSCRIBE_TYPE,
       A.SUBSCRIBE_STATE,
       A.NEXT_DEAL_TAG,
       A.IN_MODE_CODE,
       TO_CHAR(A.CUST_ID) CUST_ID,
       A.CUST_NAME,
       TO_CHAR(A.USER_ID) USER_ID,
       TO_CHAR(A.ACCT_ID) ACCT_ID,
       A.SERIAL_NUMBER,
       A.NET_TYPE_CODE,
       A.EPARCHY_CODE,
       A.CITY_CODE,
       A.PRODUCT_ID,
       A.BRAND_CODE,
       TO_CHAR(A.CUST_ID_B) CUST_ID_B,
       TO_CHAR(A.USER_ID_B) USER_ID_B,
       TO_CHAR(A.ACCT_ID_B) ACCT_ID_B,
       A.SERIAL_NUMBER_B,
       A.CUST_CONTACT_ID,
       A.SERV_REQ_ID,
       A.INTF_ID,
       TO_CHAR(A.ACCEPT_DATE, 'YYYY-MM-DD HH24:MI:SS') ACCEPT_DATE,
       A.TRADE_STAFF_ID,
       A.TRADE_DEPART_ID,
       A.TRADE_CITY_CODE,
       A.TRADE_EPARCHY_CODE,
       A.TERM_IP,
       TO_CHAR(A.OPER_FEE) OPER_FEE,
       TO_CHAR(A.FOREGIFT) FOREGIFT,
       TO_CHAR(A.ADVANCE_PAY) ADVANCE_PAY,
       A.INVOICE_NO,
       A.FEE_STATE,
       TO_CHAR(A.FEE_TIME, 'YYYY-MM-DD HH24:MI:SS') FEE_TIME,
       A.FEE_STAFF_ID,
       A.PROCESS_TAG_SET,
       A.OLCOM_TAG,
       TO_CHAR(A.FINISH_DATE, 'YYYY-MM-DD HH24:MI:SS') FINISH_DATE,
       TO_CHAR(A.EXEC_TIME, 'YYYY-MM-DD HH24:MI:SS') EXEC_TIME,
       A.EXEC_ACTION,
       A.EXEC_RESULT,
       A.EXEC_DESC,
       A.CANCEL_TAG,
       TO_CHAR(A.CANCEL_DATE, 'YYYY-MM-DD HH24:MI:SS') CANCEL_DATE,
       A.CANCEL_STAFF_ID,
       A.CANCEL_DEPART_ID,
       A.CANCEL_CITY_CODE,
       A.CANCEL_EPARCHY_CODE,
       TO_CHAR(A.UPDATE_TIME, 'YYYY-MM-DD HH24:MI:SS') UPDATE_TIME,
       A.UPDATE_STAFF_ID,
       A.UPDATE_DEPART_ID,
       A.REMARK,
       A.RSRV_STR1,
       A.RSRV_STR2,
       A.RSRV_STR3,
       A.RSRV_STR4,
       A.RSRV_STR5,
       A.RSRV_STR6,
       A.RSRV_STR7,
       A.RSRV_STR8,
       A.RSRV_STR9,
       A.RSRV_STR10
  FROM TF_B_TRADE A
 WHERE A.SERIAL_NUMBER = :SERIAL_NUMBER
   AND A.CANCEL_TAG = :CANCEL_TAG
   AND (A.TRADE_TYPE_CODE = :TRADE_TYPE_CODE1 OR
       A.TRADE_TYPE_CODE = :TRADE_TYPE_CODE2)