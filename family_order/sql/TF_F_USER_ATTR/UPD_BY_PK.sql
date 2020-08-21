UPDATE TF_F_USER_ATTR
   SET ATTR_VALUE = :ATTR_VALUE,
       START_DATE = :START_DATE,
       END_DATE   = :END_DATE,       
       UPDATE_TIME = :UPDATE_TIME,
       UPDATE_STAFF_ID = :UPDATE_STAFF_ID,
       UPDATE_DEPART_ID   = :UPDATE_DEPART_ID
       REMARK = :REMARK,
       RSRV_STR1 = :RSRV_STR1,
       RSRV_STR2   = :RSRV_STR2
       RSRV_STR3 = :RSRV_STR3,
       RSRV_STR4 = :RSRV_STR4,
       RSRV_STR5  = :RSRV_STR5       
 WHERE TO_CHAR(USER_ID) = :USER_ID
   AND PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)
   AND substr(INST_TYPE, 0, 1) = :INST_TYPE
   AND INST_ID = :INST_ID
   AND ATTR_CODE = :ATTR_CODE
   AND start_date = TO_DATE(:START_DATE, 'YYYY-MM-DD HH24:MI:SS')