UPDATE TF_F_USER_OTHERSERV
   SET PROCESS_TAG = :PROCESS_TAG,
       END_DATE    = TO_DATE(:END_DATE, 'YYYY-MM-DD HH24:MI:SS'),
       REMARK      = :REMARK,
       STAFF_ID    = :STAFF_ID,
       DEPART_ID   = :DEPART_ID       
 WHERE USER_ID = TO_NUMBER(:USER_ID)
   AND PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)
   AND SERVICE_MODE = :SERVICE_MODE
   and RSRV_STR3   = :RSRV_STR3
   AND END_DATE < SYSDATE