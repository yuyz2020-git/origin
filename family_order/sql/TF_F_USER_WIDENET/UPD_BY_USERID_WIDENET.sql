UPDATE TF_F_USER_WIDENET
   SET END_DATE  = to_date(to_char(:END_DATE_USER),'yyyy-mm-dd hh24:mi:ss')
 WHERE PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)
   AND USER_ID = TO_NUMBER(:USER_ID)
   AND SYSDATE BETWEEN START_DATE AND END_DATE