SELECT *
  FROM TD_B_POSTCARD_INFO
 WHERE SERIAL_NUMBER = :SERIAL_NUMBER
   AND STATE = '0'
 ORDER BY ACCEPT_DATE DESC
