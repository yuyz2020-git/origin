UPDATE TF_B_TRADE_PRIORITY 
   SET SUBSCRIBE_STATE = :SUBSCRIBE_STATE 
 WHERE ORDER_ID = TO_NUMBER(:RELAT_TRADE_ID)