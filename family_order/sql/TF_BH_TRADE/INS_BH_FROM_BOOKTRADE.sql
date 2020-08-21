INSERT INTO TF_BH_TRADE
  (TRADE_ID,
   ACCEPT_MONTH,
   BATCH_ID,
   ORDER_ID,
   PROD_ORDER_ID,
   BPM_ID,
   CAMPN_ID,
   TRADE_TYPE_CODE,
   PRIORITY,
   SUBSCRIBE_TYPE,
   SUBSCRIBE_STATE,
   NEXT_DEAL_TAG,
   IN_MODE_CODE,
   CUST_ID,
   CUST_NAME,
   USER_ID,
   ACCT_ID,
   SERIAL_NUMBER,
   NET_TYPE_CODE,
   EPARCHY_CODE,
   CITY_CODE,
   PRODUCT_ID,
   BRAND_CODE,
   CUST_ID_B,
   USER_ID_B,
   ACCT_ID_B,
   SERIAL_NUMBER_B,
   CUST_CONTACT_ID,
   SERV_REQ_ID,
   INTF_ID,
   ACCEPT_DATE,
   TRADE_STAFF_ID,
   TRADE_DEPART_ID,
   TRADE_CITY_CODE,
   TRADE_EPARCHY_CODE,
   TERM_IP,
   OPER_FEE,
   FOREGIFT,
   ADVANCE_PAY,
   INVOICE_NO,
   FEE_STATE,
   FEE_TIME,
   FEE_STAFF_ID,
   PROCESS_TAG_SET,
   OLCOM_TAG,
   FINISH_DATE,
   EXEC_TIME,
   EXEC_ACTION,
   EXEC_RESULT,
   EXEC_DESC,
   CANCEL_TAG,
   CANCEL_DATE,
   CANCEL_STAFF_ID,
   CANCEL_DEPART_ID,
   CANCEL_CITY_CODE,
   CANCEL_EPARCHY_CODE,
   UPDATE_TIME,
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
   RSRV_STR10,
   PF_TYPE,
   IS_NEED_HUMANCHECK,
   FREE_RESOURCE_TAG)
  SELECT TRADE_ID,
         ACCEPT_MONTH,
         BATCH_ID,
         ORDER_ID,
         PROD_ORDER_ID,
         BPM_ID,
         CAMPN_ID,
         TRADE_TYPE_CODE,
         PRIORITY,
         SUBSCRIBE_TYPE,
         SUBSCRIBE_STATE,
         NEXT_DEAL_TAG,
         IN_MODE_CODE,
         CUST_ID,
         CUST_NAME,
         USER_ID,
         ACCT_ID,
         SERIAL_NUMBER,
         NET_TYPE_CODE,
         EPARCHY_CODE,
         CITY_CODE,
         PRODUCT_ID,
         BRAND_CODE,
         CUST_ID_B,
         USER_ID_B,
         ACCT_ID_B,
         SERIAL_NUMBER_B,
         CUST_CONTACT_ID,
         SERV_REQ_ID,
         INTF_ID,
         ACCEPT_DATE,
         TRADE_STAFF_ID,
         TRADE_DEPART_ID,
         TRADE_CITY_CODE,
         TRADE_EPARCHY_CODE,
         TERM_IP,
         OPER_FEE,
         FOREGIFT,
         ADVANCE_PAY,
         INVOICE_NO,
         FEE_STATE,
         FEE_TIME,
         FEE_STAFF_ID,
         PROCESS_TAG_SET,
         OLCOM_TAG,
         FINISH_DATE,
         EXEC_TIME,
         EXEC_ACTION,
         EXEC_RESULT,
         EXEC_DESC,
         CANCEL_TAG,
         CANCEL_DATE,
         CANCEL_STAFF_ID,
         CANCEL_DEPART_ID,
         CANCEL_CITY_CODE,
         CANCEL_EPARCHY_CODE,
         UPDATE_TIME,
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
         RSRV_STR10,
         PF_TYPE,
         IS_NEED_HUMANCHECK,
         FREE_RESOURCE_TAG
    FROM TF_B_TRADE
   WHERE TRADE_ID = TO_NUMBER(:TRADE_ID)