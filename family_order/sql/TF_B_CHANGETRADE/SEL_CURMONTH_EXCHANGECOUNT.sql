SELECT COUNT(1) SMS_COUNT
  FROM TF_B_CHANGETRADE A
 WHERE 1 = 1
   AND A.SERIAL_NUMBER = :SERIAL_NUMBER
   AND A.ACCEPT_MONTH = TO_NUMBER(TO_CHAR(SYSDATE, 'mm'))