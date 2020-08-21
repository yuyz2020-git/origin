SELECT SERVICE_ID
  FROM TF_F_USER_SVC
 where user_id = TO_NUMBER(:USER_ID)
   AND partition_id = MOD(TO_NUMBER(:USER_ID), 10000)
   and end_date > SYSDATE
   AND MAIN_TAG = :MAIN_TAG