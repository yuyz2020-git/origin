UPDATE TF_B_TRADE_PRICE_PLAN T
   SET T.START_DATE = TO_DATE(:START_DATE, 'YYYY-MM-DD HH24:MI:SS')
 WHERE T.TRADE_ID = TO_NUMBER(:TRADE_ID)
   AND T.OFFER_TYPE = :OFFER_TYPE
   AND T.ACCEPT_MONTH = TO_NUMBER(SUBSTR(:TRADE_ID, 5, 2))