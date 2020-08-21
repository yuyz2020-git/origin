DELETE FROM TF_F_USER_ATTR A
 WHERE A.USER_ID = TO_NUMBER(:USER_ID)
   AND A.PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)
   And INST_ID=:INST_ID 
   And end_date>Sysdate