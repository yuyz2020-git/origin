 DELETE from TF_F_ACTIVE_TEMPLATE  t
 where t.trade_type_code=:TRADE_TYPE_CODE 
 AND T.USER_ID=:USER_ID 
 AND T.DEAL_TAG='0' 
 AND T.RSRV_STR5=:TO_DAY 
 and T.RSRV_STR2=:USER_PRODUCT
 AND T.RSRV_STR1=:CHECK_SN