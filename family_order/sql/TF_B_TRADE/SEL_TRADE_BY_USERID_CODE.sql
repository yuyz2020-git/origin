SELECT TO_CHAR(TRADE_ID) TRADE_ID,
       ACCEPT_MONTH,
       TO_CHAR(BATCH_ID) BATCH_ID,
       TO_CHAR(ORDER_ID) ORDER_ID,
       TO_CHAR(PROD_ORDER_ID) PROD_ORDER_ID,
       BPM_ID,
       TO_CHAR(CAMPN_ID) CAMPN_ID,
       TRADE_TYPE_CODE,
       PRIORITY,
       SUBSCRIBE_TYPE,
       SUBSCRIBE_STATE,
       NEXT_DEAL_TAG,
       IN_MODE_CODE,
       TO_CHAR(CUST_ID) CUST_ID,
       CUST_NAME,
       TO_CHAR(USER_ID) USER_ID,
       TO_CHAR(ACCT_ID) ACCT_ID,
       SERIAL_NUMBER,
       NET_TYPE_CODE,
       EPARCHY_CODE,
       CITY_CODE,
       PRODUCT_ID,
       BRAND_CODE,
       TO_CHAR(CUST_ID_B) CUST_ID_B,
       TO_CHAR(USER_ID_B) USER_ID_B,
       TO_CHAR(ACCT_ID_B) ACCT_ID_B,
       SERIAL_NUMBER_B,
       CUST_CONTACT_ID,
       SERV_REQ_ID,
       INTF_ID,
       TO_CHAR(ACCEPT_DATE, 'yyyy-mm-dd hh24:mi:ss') ACCEPT_DATE,
       TRADE_STAFF_ID,
       TRADE_DEPART_ID,
       TRADE_CITY_CODE,
       TRADE_EPARCHY_CODE,
       TERM_IP,
       TO_CHAR(OPER_FEE) OPER_FEE,
       TO_CHAR(FOREGIFT) FOREGIFT,
       TO_CHAR(ADVANCE_PAY) ADVANCE_PAY,
       INVOICE_NO,
       FEE_STATE,
       TO_CHAR(FEE_TIME, 'yyyy-mm-dd hh24:mi:ss') FEE_TIME,
       FEE_STAFF_ID,
       PROCESS_TAG_SET,
       OLCOM_TAG,
       TO_CHAR(FINISH_DATE, 'yyyy-mm-dd hh24:mi:ss') FINISH_DATE,
       TO_CHAR(EXEC_TIME, 'yyyy-mm-dd hh24:mi:ss') EXEC_TIME,
       EXEC_ACTION,
       EXEC_RESULT,
       EXEC_DESC,
       CANCEL_TAG,
       TO_CHAR(CANCEL_DATE, 'yyyy-mm-dd hh24:mi:ss') CANCEL_DATE,
       CANCEL_STAFF_ID,
       CANCEL_DEPART_ID,
       CANCEL_CITY_CODE,
       CANCEL_EPARCHY_CODE,
       TO_CHAR(UPDATE_TIME, 'yyyy-mm-dd hh24:mi:ss') UPDATE_TIME,
       UPDATE_STAFF_ID,
       UPDATE_DEPART_ID,
       REMARK,
       RSRV_STR1,
       RSRV_STR2,
       RSRV_STR3,
       RSRV_STR4,
       RSRV_STR5,
       RSRV_STR6,
       RSRV_STR7,
       RSRV_STR8,
       RSRV_STR9,
       RSRV_STR10
  FROM TF_B_TRADE
 WHERE TRADE_TYPE_CODE = :TRADE_TYPE_CODE
   AND USER_ID = TO_NUMBER(:USER_ID)
   AND CANCEL_TAG = :CANCEL_TAG