UPDATE TF_B_TRADE_DISCNT T
   SET T.END_DATE = to_date(substr(:START_DATE,0,10) || ' 23:59:59','yyyy-MM-dd hh24:mi:ss')+T.RSRV_NUM1
 WHERE T.TRADE_ID = TO_NUMBER(:TRADE_ID)
   AND T.ACCEPT_MONTH = TO_NUMBER(SUBSTR(:TRADE_ID, 5, 2))
   AND T.PRODUCT_ID != '-1'