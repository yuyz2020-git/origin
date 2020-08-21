UPDATE tf_f_user_widenet
   SET end_date = TRUNC(LAST_DAY(SYSDATE))+1-1/24/3600
 WHERE user_id = TO_NUMBER(:USER_ID)
   AND partition_id = MOD(TO_NUMBER(:USER_ID),10000)
   AND end_date+0 >= TRUNC(LAST_DAY(SYSDATE))+1