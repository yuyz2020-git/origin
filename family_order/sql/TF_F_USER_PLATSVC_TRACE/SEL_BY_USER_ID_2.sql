SELECT C.*
  FROM TF_F_USER_PLATSVC_TRACE C
 WHERE C.PARTITION_ID = MOD(:USER_ID, 10000)
   AND C.USER_ID = :USER_ID
   AND SYSDATE BETWEEN C.START_DATE AND C.END_DATE