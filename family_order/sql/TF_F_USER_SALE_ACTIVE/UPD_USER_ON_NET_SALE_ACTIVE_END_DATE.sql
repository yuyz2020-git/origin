UPDATE TF_F_USER_SALE_ACTIVE
   SET RSRV_DATE2       = SYSDATE,
       RSRV_STR22       = :REMARK,
       UPDATE_TIME      = SYSDATE,
       UPDATE_STAFF_ID  = :UPDATE_STAFF_ID,
       UPDATE_DEPART_ID = :UPDATE_DEPART_ID
 WHERE USER_ID = TO_NUMBER(:USER_ID)
   AND PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)
   AND INST_ID = :INST_ID