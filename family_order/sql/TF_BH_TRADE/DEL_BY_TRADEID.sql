DELETE FROM tf_bh_trade
 WHERE trade_id=TO_NUMBER(:TRADE_ID)
and accept_month = TO_NUMBER(SUBSTR(:TRADE_ID,5,2))