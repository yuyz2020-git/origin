UPDATE Tf_B_TRADE_Widenet SET RSRV_STR2 =:CF_PORT,RSRV_STR3 =:CF_ROOM,RSRV_STR4=:CF_TTAREA
WHERE  TRADE_ID = TO_NUMBER(:TRADE_ID)
   AND ACCEPT_MONTH = TO_NUMBER(SUBSTR(:TRADE_ID, 5, 2))
   and end_date > sysdate