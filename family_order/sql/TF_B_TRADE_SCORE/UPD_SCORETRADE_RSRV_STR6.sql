UPDATE TF_B_TRADE_SCORE
SET RSRV_STR6 = 'cancel_movies' 
WHERE TRADE_ID = TO_NUMBER(:TRADE_ID)
AND ACCEPT_MONTH = TO_NUMBER(SUBSTR(:TRADE_ID,5,2))