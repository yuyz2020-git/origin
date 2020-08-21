SELECT USER_ID,
       SERVICE_ID,
       SERIAL_NUMBER,
       SP_CODE,
       BIZ_CODE,
       BIZ_TYPE_CODE,
       BIZ_STATE_CODE,
       ORG_DOMAIN
  FROM TF_F_USER_PLATSVC A
 WHERE A.PARTITION_ID = MOD(:USER_ID, 10000)
   AND A.USER_ID = :USER_ID
   AND SERVICE_ID = :SERVICE_ID
   AND BIZ_STATE_CODE IN ('A','N','L')
   AND SYSDATE BETWEEN START_DATE AND END_DATE   
   AND  (SP_CODE NOT LIKE 'SW%' OR OPER_CODE NOT IN ('89', '99') )
