SELECT TRADE_ID, OUTER_TRADE_ID, SERIAL_NUMBER, REVERT_DATE, NOTICE_CONTENT,
       REMARK, RSRV_STR1, RSRV_STR2, RSRV_STR3, RSRV_STR4, RSRV_STR5,
       EXEC_FLAG
  FROM TF_B_TWO_CHECK
 WHERE TRADE_ID = :TRADE_ID
   AND SERIAL_NUMBER = :SERIAL_NUMBER