UPDATE TF_B_SALEACTIVE_BAT T
   SET T.STATUS = :STATUS, T.RSRV_STR1 = :RSRV_STR1, T.UPDATE_TIME = SYSDATE
 WHERE T.BATCH_ID = :BATCH_ID
   AND T.SERIAL_NUMBER = :SERIAL_NUMBER