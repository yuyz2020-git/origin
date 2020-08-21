SELECT T.*
  FROM TL_B_CHECKNPOUT_LOG T
 WHERE (T.SERIAL_NUMBER = :SERIAL_NUMBER OR :SERIAL_NUMBER IS NULL)
   AND (T.CITY_CODE = :CITY_CODE OR :CITY_CODE IS NULL)
   AND (T.SMS_RESULT = :SMS_RESULT OR :SMS_RESULT IS NULL)
   AND T.SMS_TIME >= TRUNC(TO_DATE(:START_DATE, 'YYYY-MM-DD HH24:MI:SS'))
   AND (SMS_TIME <
       TRUNC(TO_DATE(:FINISH_DATE, 'YYYY-MM-DD HH24:MI:SS')) + 1 OR
       :FINISH_DATE IS NULL)
 ORDER BY T.SMS_TIME DESC