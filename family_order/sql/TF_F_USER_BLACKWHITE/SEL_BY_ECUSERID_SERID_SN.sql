SELECT INST_ID,
       USER_ID,
       USER_TYPE_CODE,
       BIZ_IN_CODE,
       EC_SERIAL_NUMBER,
       SERV_CODE,
       BIZ_CODE,
       BIZ_NAME,
       START_DATE,
       END_DATE
  FROM TF_F_USER_BLACKWHITE
 WHERE EC_USER_ID = :EC_USER_ID
   AND SERVICE_ID = :SERVICE_ID
   AND SERIAL_NUMBER = :SERIAL_NUMBER
   AND SYSDATE BETWEEN START_DATE AND END_DATE