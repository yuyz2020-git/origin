UPDATE TF_B_TRADE
   SET CANCEL_TAG  = :CANCEL_TAG,
       UPDATE_TIME = SYSDATE,
       CANCEL_DATE = SYSDATE
 WHERE TRADE_ID = TO_NUMBER(:TRADE_ID)
   AND SUBSCRIBE_STATE = '0'