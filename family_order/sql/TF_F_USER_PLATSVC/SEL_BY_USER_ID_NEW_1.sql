SELECT T.*
  FROM TF_F_USER_PLATSVC T
 WHERE 1 = 1
   AND T.USER_ID = TO_NUMBER(:USER_ID)
   AND T.PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)
   AND T.SERVICE_ID In ('3455', '3456')
   AND T.BIZ_STATE_CODE In ('A', 'N')
   AND SYSDATE BETWEEN T.START_DATE AND T.END_DATE
