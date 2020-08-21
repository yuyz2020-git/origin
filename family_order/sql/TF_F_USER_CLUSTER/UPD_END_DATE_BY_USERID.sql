UPDATE TF_F_USER_CLUSTER A
   SET END_DATE         = TO_DATE(:END_DATE,'yyyy-mm-dd hh24:mi:ss'),
       UPDATE_TIME      = SYSDATE,
       UPDATE_STAFF_ID  = :UPDATE_STAFF_ID,
       UPDATE_DEPART_ID = :UPDATE_DEPART_ID
 WHERE A.GROUP_ID = :GROUP_ID
   AND SYSDATE BETWEEN START_DATE AND END_DATE