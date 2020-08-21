UPDATE tf_f_user_infochange
   SET end_date = TO_DATE(:END_DATE, 'YYYY-MM-DD HH24:MI:SS')-1/24/3600  ,UPDATE_TIME=Sysdate , UPDATE_STAFF_ID=:UPDATE_STAFF_ID,UPDATE_DEPART_ID=:UPDATE_DEPART_ID
 WHERE user_id = TO_NUMBER(:USER_ID)
   AND partition_id = MOD(TO_NUMBER(:USER_ID),10000)
   AND end_date >= TO_DATE(:END_DATE, 'YYYY-MM-DD HH24:MI:SS')