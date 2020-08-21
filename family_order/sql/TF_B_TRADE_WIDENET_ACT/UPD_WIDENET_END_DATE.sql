UPDATE TF_B_TRADE_WIDENET_ACT
   SET END_DATE = TO_DATE(:END_DATE, 'YYYY-MM-DD HH24:MI:SS')
 WHERE TRADE_ID = TO_NUMBER(:TRADE_ID)
   AND ACCEPT_MONTH = TO_NUMBER(SUBSTR(:TRADE_ID, 5, 2))