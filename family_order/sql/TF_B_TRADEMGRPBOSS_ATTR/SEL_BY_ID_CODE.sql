SELECT TRADE_ID, ORDER_ID, ACCEPT_MONTH, ATTR_CODE, SEQ, ATTR_NAME,
       ATTR_VALUE, UPDATE_TIME, REMARK, RSRV_NUM1, RSRV_NUM2, RSRV_NUM3,
       RSRV_NUM4, RSRV_NUM5, RSRV_STR6, RSRV_STR7, RSRV_STR3, RSRV_STR4,
       RSRV_STR5, RSRV_DATE1, RSRV_DATE2, RSRV_DATE3, RSRV_TAG1, RSRV_TAG2,
       RSRV_TAG3
  FROM TF_B_TRADEMGRPBOSS_ATTR
 WHERE TRADE_ID = :TRADE_ID
   AND ATTR_CODE = :ATTR_CODE