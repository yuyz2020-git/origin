UPDATE TF_F_USER
   SET USER_TAG_SET = :USER_TAG_SET
 WHERE PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)
   AND USER_ID = TO_NUMBER(:USER_ID)