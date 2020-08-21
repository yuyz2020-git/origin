UPDATE tf_b_pretrade 
 SET ORDER_ID=to_number(:ORDER_ID),
  BPM_ID=:BPM_ID,
  TRADE_TYPE_CODE=to_number(:TRADE_TYPE_CODE),
  PRIORITY=to_number(:PRIORITY),
  SUBSCRIBE_TYPE=to_number(:SUBSCRIBE_TYPE),
  SUBSCRIBE_STATE=:SUBSCRIBE_STATE,
  IN_MODE_CODE=:IN_MODE_CODE,
  CUST_ID=to_number(:CUST_ID),
  CUST_NAME=:CUST_NAME,
  USER_ID=to_number(:USER_ID),
  ACCT_ID=to_number(:ACCT_ID),
  SERIAL_NUMBER=:SERIAL_NUMBER,
  NET_TYPE_CODE=:NET_TYPE_CODE,
  EPARCHY_CODE=:EPARCHY_CODE,
  CITY_CODE=:CITY_CODE,
  PRODUCT_ID=to_number(:PRODUCT_ID),
  BRAND_CODE=:BRAND_CODE,
  ACCEPT_DATE=to_date(:ACCEPT_DATE,'yyyy-mm-dd hh24:mi:ss'),
  FINISH_DATE=to_date(:FINISH_DATE,'yyyy-mm-dd hh24:mi:ss'),
  EXEC_TIME=to_date(:EXEC_TIME,'yyyy-mm-dd hh24:mi:ss'),
  EXEC_ACTION=:EXEC_ACTION,
  EXEC_RESULT=:EXEC_RESULT,
  EXEC_DESC=:EXEC_DESC,
  ATTACH=:ATTACH,
  RET_ATTACH=:RET_ATTACH,
  RET_REMARK=:RET_REMARK,
  REMARK=:REMARK,
  RSRV_STR1=:RSRV_STR1,
  RSRV_STR2=:RSRV_STR2,
  RSRV_STR3=:RSRV_STR3,
  RSRV_STR4=:RSRV_STR4,
  RSRV_STR5=:RSRV_STR5,
  RSRV_STR6=:RSRV_STR6,
  RSRV_STR7=:RSRV_STR7,
  RSRV_STR8=:RSRV_STR8,
  RSRV_STR9=:RSRV_STR9,
  RSRV_STR10=:RSRV_STR10
 WHERE 1=1
   AND trade_id = TO_NUMBER(:TRADE_ID)
   AND accept_month = TO_NUMBER(SUBSTR(:TRADE_ID,5,2))