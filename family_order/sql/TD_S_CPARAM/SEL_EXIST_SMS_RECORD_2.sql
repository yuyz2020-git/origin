SELECT T.SERIAL_NUMBER
  FROM TI_O_TRADE_SMS T
 WHERE T.SERIAL_NUMBER = :SERIAL_NUMBER
   AND T.ACCEPT_DATE >= TRUNC(SYSDATE - :DAYS)
   AND T.MONTHID = :MONTHID
   AND T.IN_MODE_CODE=:IN_MODE_CODE