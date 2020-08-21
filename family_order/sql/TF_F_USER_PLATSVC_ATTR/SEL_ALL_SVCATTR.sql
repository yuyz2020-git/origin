SELECT A.SERIAL_NUMBER,B.SERVICE_ID, C.ATTR_CODE,C.ATTR_VALUE
,C.ATTR_VALUE INFO_VALUE  FROM TF_F_USER A, TF_F_USER_PLATSVC B,TF_F_USER_ATTR C
 WHERE  A.SERIAL_NUMBER=:SERIAL_NUMBER 
   AND  A.REMOVE_TAG='0'
   AND  B.USER_ID =A.USER_ID
   AND  B.PARTITION_ID=A.PARTITION_ID
   AND  C.USER_ID = A.USER_ID
   AND  C.PARTITION_ID=A.PARTITION_ID
   AND  C.RELA_INST_ID = B.INST_ID
   AND  (B.SERVICE_ID=TO_NUMBER(:SERVICE_ID) OR :SERVICE_ID IS  NULL)
   AND  (C.ATTR_CODE=:INFO_CODE OR :INFO_CODE IS  NULL)
   AND   B.BIZ_STATE_CODE IN ('A','N')
   AND   SYSDATE BETWEEN B.START_DATE AND B.END_DATE
   AND   SYSDATE BETWEEN C.START_DATE AND C.END_DATE