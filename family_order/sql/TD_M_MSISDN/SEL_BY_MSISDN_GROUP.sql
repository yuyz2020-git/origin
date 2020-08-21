SELECT *
  FROM TD_MSISDN T
 WHERE T.ASP = '1'
   AND T.PROV_CODE = :PROV_CODE
   AND :SERIAL_NUMBER BETWEEN T.BEGIN_MSISDN AND T.END_MSISDN
   AND T.END_TIME >= TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS')