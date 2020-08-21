SELECT *
  FROM TF_F_USER_DATALINE T
 WHERE T.PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)
   AND T.USER_ID = :USER_ID
   AND T.END_DATE > SYSDATE
