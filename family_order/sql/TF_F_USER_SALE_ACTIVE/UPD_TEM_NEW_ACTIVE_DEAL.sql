update TF_F_NEW_ACTIVE_TEMPLATE t
set  T.DEAL_TAG=:DEAL_TAG,T.RSRV_STR1=:ACTIVE_TRADE_ID,T.RSRV_STR2=:SVC_TRADE_ID,t.PACKAGE_ID=:PACKAGE_ID,t.PACKAGE_ID_B=:PACKAGE_ID_B
 where t.trade_type_code=:TRADE_TYPE_CODE 
 AND T.SERIAL_NUMBER=:SERIAL_NUMBER 
 AND T.USER_ID=:USER_ID 
 AND T.DEAL_TAG='0' 
 AND T.DEAL_TIME >= SYSDATE-2
 AND T.PRODUCT_ID=:PRODUCT_ID 