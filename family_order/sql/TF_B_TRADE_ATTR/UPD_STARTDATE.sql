UPDATE TF_B_TRADE_ATTR
   SET START_DATE = TO_DATE(:START_DATE, 'YYYY-MM-DD HH24:MI:SS')
 WHERE TRADE_ID = TO_NUMBER(:TRADE_ID)
   AND ACCEPT_MONTH = TO_NUMBER(SUBSTR(:TRADE_ID, 5, 2))