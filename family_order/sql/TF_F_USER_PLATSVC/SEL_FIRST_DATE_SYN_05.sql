SELECT FIRST_DATE,FIRST_DATE_MON
FROM TF_F_USER_PLATSVC A
 WHERE A.PARTITION_ID = MOD(:USER_ID, 10000)
   AND A.USER_ID = :USER_ID
   AND A.SERVICE_ID = :SERVICE_ID
   AND A.BIZ_STATE_CODE = 'N'
   AND SYSDATE BETWEEN A.START_DATE AND A.END_DATE
   AND ROWNUM < 2