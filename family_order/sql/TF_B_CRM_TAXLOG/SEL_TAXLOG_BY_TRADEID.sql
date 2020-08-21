SELECT TRADE_ID,
       ACCEPT_MONTH,
       TRADE_TYPE_CODE,
       TRADE_TYPE_NAME,
       CUST_ID,
       CUST_NAME,
       ACCT_ID,
       SERIAL_NUMBER,
       FEE,
       ACCEPT_DATE,
       TRADE_EPARCHY_CODE,
       TRADE_CITY_CODE,
       UPDATE_TIME,
       UPDATE_STAFF_ID,
       UPDATE_DEPART_ID,
       RSRV_STR1,
       RSRV_STR2,
       RSRV_STR3,
       RSRV_NUM1,
       RSRV_NUM2,
       RSRV_NUM3,
       RSRV_DATE1,
       RSRV_TAG1
  FROM TF_B_CRM_TAXLOG
 WHERE trade_id = TO_NUMBER(:TRADE_ID)
   AND accept_month = TO_NUMBER(SUBSTR(:TRADE_ID, 5, 2))