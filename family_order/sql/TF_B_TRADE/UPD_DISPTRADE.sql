UPDATE tf_b_trade
   SET bpm_id=TO_NUMBER(:BPM_ID),subscribe_state=:SUBSCRIBE_STATE  
 WHERE trade_id=TO_NUMBER(:TRADE_ID)
   AND cancel_tag=:CANCEL_TAG
and accept_month = TO_NUMBER(SUBSTR(:TRADE_ID,5,2))