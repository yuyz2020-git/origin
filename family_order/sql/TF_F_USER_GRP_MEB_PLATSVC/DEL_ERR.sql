DELETE FROM TF_F_USER_GRP_MEB_PLATSVC
 WHERE user_id=TO_NUMBER(:USER_ID)
   AND partition_id = MOD(TO_NUMBER(:USER_ID),10000)
   AND start_date > end_date