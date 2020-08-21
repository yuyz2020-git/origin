SELECT T.BEGIN_MSISDN,
       T.END_MSISDN,
       T.AREA_CODE,
       T.PROV_CODE,
       T.SERV_TYPE,
       T.ASP,
       T.HOME_TYPE,
       T.CALLED_TYPE,
       T.BEGIN_TIME,
       T.END_TIME
  FROM TD_MSISDN T
 WHERE T.ASP != '1'
   AND T.PROV_CODE = :PROV_CODE
   AND T.END_TIME >= TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS')
   AND :SERIAL_NUMBER BETWEEN T.BEGIN_MSISDN AND T.END_MSISDN
