SELECT to_char(TRADE_ID) TRADE_ID, ACCEPT_MONTH, to_char(BATCH_ID) BATCH_ID, to_char(ORDER_ID) ORDER_ID, to_char(PROD_ORDER_ID) PROD_ORDER_ID, BPM_ID, to_char(CAMPN_ID) CAMPN_ID, TRADE_TYPE_CODE, PRIORITY, SUBSCRIBE_TYPE, SUBSCRIBE_STATE, NEXT_DEAL_TAG, IN_MODE_CODE, to_char(CUST_ID) CUST_ID, CUST_NAME, to_char(USER_ID) USER_ID, to_char(ACCT_ID) ACCT_ID, SERIAL_NUMBER, NET_TYPE_CODE, EPARCHY_CODE, CITY_CODE, PRODUCT_ID, BRAND_CODE, to_char(CUST_ID_B) CUST_ID_B, to_char(USER_ID_B) USER_ID_B, to_char(ACCT_ID_B) ACCT_ID_B, SERIAL_NUMBER_B, CUST_CONTACT_ID, SERV_REQ_ID, INTF_ID, to_char(ACCEPT_DATE,'yyyy-mm-dd hh24:mi:ss') ACCEPT_DATE, TRADE_STAFF_ID, TRADE_DEPART_ID, TRADE_CITY_CODE, TRADE_EPARCHY_CODE, TERM_IP, to_char(OPER_FEE) OPER_FEE, to_char(FOREGIFT) FOREGIFT, to_char(ADVANCE_PAY) ADVANCE_PAY, INVOICE_NO, FEE_STATE, to_char(FEE_TIME,'yyyy-mm-dd hh24:mi:ss') FEE_TIME, FEE_STAFF_ID, PROCESS_TAG_SET, OLCOM_TAG, to_char(FINISH_DATE,'yyyy-mm-dd hh24:mi:ss') FINISH_DATE, to_char(EXEC_TIME,'yyyy-mm-dd hh24:mi:ss') EXEC_TIME, EXEC_ACTION, EXEC_RESULT, EXEC_DESC, CANCEL_TAG, to_char(CANCEL_DATE,'yyyy-mm-dd hh24:mi:ss') CANCEL_DATE, CANCEL_STAFF_ID, CANCEL_DEPART_ID, CANCEL_CITY_CODE, CANCEL_EPARCHY_CODE, to_char(UPDATE_TIME,'yyyy-mm-dd hh24:mi:ss') UPDATE_TIME, UPDATE_STAFF_ID, UPDATE_DEPART_ID, REMARK, RSRV_STR1, RSRV_STR2, RSRV_STR3, RSRV_STR4, RSRV_STR5, RSRV_STR6, RSRV_STR7, RSRV_STR8, RSRV_STR9, RSRV_STR10
  FROM tf_b_trade a
 WHERE a.USER_ID = TO_NUMBER(:USER_ID)
   AND a.USER_ID_B = TO_NUMBER(:USER_ID_B)
   AND a.trade_type_code = :TRADE_TYPE_CODE
   AND a.cancel_tag = :CANCEL_TAG