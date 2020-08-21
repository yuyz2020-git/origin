UPDATE TF_B_TRADE_DISCNT T SET T.START_DATE=TO_DATE(:START_DATE,'yyyy-MM-dd hh24:mi:ss'),T.END_DATE = TO_DATE(:END_DATE,'yyyy-MM-dd hh24:mi:ss')
WHERE T.TRADE_ID = TO_NUMBER(:TRADE_ID)
AND T.ACCEPT_MONTH = TO_NUMBER(SUBSTR(:TRADE_ID, 5, 2))
AND T.PRODUCT_ID != -1