insert into tf_bh_trade
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
   RSRV_STR10)
values
  (TO_NUMBER(:TRADE_ID),
   :ACCEPT_MONTH,
   TO_NUMBER(:BATCH_ID),
   TO_NUMBER(:ORDER_ID),
   TO_NUMBER(:PROD_ORDER_ID),
   :BPM_ID,
   TO_NUMBER(:CAMPN_ID),
   :TRADE_TYPE_CODE,
   :PRIORITY,
   :SUBSCRIBE_TYPE,
   :SUBSCRIBE_STATE,
   :NEXT_DEAL_TAG,
   :IN_MODE_CODE,
   TO_NUMBER(:CUST_ID),
   :CUST_NAME,
   TO_NUMBER(:USER_ID),
   TO_NUMBER(:ACCT_ID),
   :SERIAL_NUMBER,
   :NET_TYPE_CODE,
   :EPARCHY_CODE,
   :CITY_CODE,
   :PRODUCT_ID,
   :BRAND_CODE,
   TO_DATE(:ACCEPT_DATE,'YYYY-MM-DD HH24:MI:SS'),
   :TRADE_STAFF_ID,
   :TRADE_DEPART_ID,
   :TRADE_CITY_CODE,
   :TRADE_EPARCHY_CODE,
   :TERM_IP,
   TO_NUMBER(:OPER_FEE),
   TO_NUMBER(:FOREGIFT),
   TO_NUMBER(:ADVANCE_PAY),
   :INVOICE_NO,
   :FEE_STATE,
   TO_DATE(:FEE_TIME,'YYYY-MM-DD HH24:MI:SS'),
   :FEE_STAFF_ID,
   :PROCESS_TAG_SET,
   :OLCOM_TAG,
   TO_DATE(:FINISH_DATE,'YYYY-MM-DD HH24:MI:SS'),
   TO_DATE(:EXEC_TIME,'YYYY-MM-DD HH24:MI:SS'),
   :EXEC_ACTION,
   :EXEC_RESULT,
   :EXEC_DESC,
   :CANCEL_TAG,
   TO_DATE(:CANCEL_DATE,'YYYY-MM-DD HH24:MI:SS'),
   :CANCEL_STAFF_ID,
   :CANCEL_DEPART_ID,
   :CANCEL_CITY_CODE,
   :CANCEL_EPARCHY_CODE,
   TO_DATE(:UPDATE_TIME,'YYYY-MM-DD HH24:MI:SS'),
   :UPDATE_STAFF_ID,
   :UPDATE_DEPART_ID,
   :REMARK,
   :RSRV_STR1,
   :RSRV_STR2,
   :RSRV_STR3,
   :RSRV_STR4,
   :RSRV_STR5,
   :RSRV_STR6,
   :RSRV_STR7,
   :RSRV_STR8,
   :RSRV_STR9,
   :RSRV_STR10)