UPDATE TF_B_TRADE_NP
   SET CANCEL_TAG     = :CANCEL_TAG
 WHERE TRADE_ID = TO_NUMBER(:TRADE_ID)
   AND ACCEPT_MONTH = TO_NUMBER(SUBSTR(:TRADE_ID, 5, 2))