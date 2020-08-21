--IS_CACHE=N
SELECT COUNT(1) 平台业务数
  FROM TF_F_USER_PLATSVC A
 WHERE A.USER_ID = TO_NUMBER(:USER_ID)
   AND A.PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)
   AND A.START_DATE <=
       ADD_MONTHS(TO_DATE(TO_CHAR(SYSDATE, 'YYYYMM'), 'YYYYMM'), -2)
   AND A.END_DATE >=
       TRUNC(LAST_DAY(ADD_MONTHS(SYSDATE, -1)) + 1) - 1 / 86400
   AND EXISTS (SELECT 1 FROM TD_CHL_COLLECT C WHERE C.COLLECT_ID=:COLLECT_ID AND C.COLLECT_DEF=A.SERVICE_ID)