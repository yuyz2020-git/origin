SELECT COUNT(1) RECORD_COUNT
  FROM TF_B_TRADE_PLATSVC
 WHERE ACCEPT_MONTH = TO_NUMBER(SUBSTR(:TRADE_ID, 5, 2))
   AND TRADE_ID = TO_NUMBER(:TRADE_ID)
   AND RSRV_STR1 = 'U'