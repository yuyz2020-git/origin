SELECT COUNT(1) AS SERIALNUMBER
 FROM TL_F_CALLING_CHECK T 
 WHERE 
    1=1
   and T.USER_NUMBER = :SERIAL_NUMBER
   AND T.CHECK_DATE >= :BEGINDATE 
   AND T.CHECK_DATE <= :ENDDATE
