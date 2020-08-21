INSERT INTO TF_F_USER_OTHER
  (PARTITION_ID,
   USER_ID,
   RSRV_VALUE_CODE,
   RSRV_VALUE,
   STAFF_ID, 
   DEPART_ID,
   START_DATE,
   END_DATE,
   REMARK,
   INST_ID)
VALUES
  (MOD(TO_NUMBER(:USER_ID), 10000),
   TO_NUMBER(:USER_ID),
   :RSRV_VALUE_CODE,
   :RSRV_VALUE,
   :STAFF_ID,
   :DEPART_ID,
   TO_DATE(:START_DATE, 'YYYY-MM-DD HH24:MI:SS'),
   TO_DATE(:END_DATE, 'YYYY-MM-DD HH24:MI:SS'),
   :REMARK,
   :INST_ID)