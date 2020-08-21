UPDATE TF_B_TRADE_PAYRELATION
   SET START_CYCLE_ID = :START_CYCLE_ID
 WHERE TRADE_ID = TO_NUMBER(:TRADE_ID)
   AND ACCEPT_MONTH = TO_NUMBER(SUBSTR(:TRADE_ID, 5, 2))