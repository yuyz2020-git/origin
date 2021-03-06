UPDATE TI_O_TRADE_SMS T
   SET T.SMS_STATE          = '1',
       T.REVERT_SMS_STATE   = '1',
       T.REVERT_SMS_CONTENT = :REVERT_SMS_CONTENT,
       T.REVERT_DATE        = SYSDATE
 WHERE T.SERIAL_NUMBER = :SERIAL_NUMBER
   AND T.ACCEPT_DATE >= TRUNC(SYSDATE - :DAYS)
   AND MONTHID IN (TO_NUMBER(TO_CHAR(SYSDATE, 'mm')), TO_NUMBER(TO_CHAR(SYSDATE - :DAYS, 'mm')))