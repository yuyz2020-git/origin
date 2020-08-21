INSERT INTO TI_B_USER_DISCNT
  (SYNC_SEQUENCE,
   MODIFY_TAG,
   TRADE_ID,
   PARTITION_ID,
   USER_ID,
   USER_ID_A,
   PRODUCT_ID,
   PACKAGE_ID,
   DISCNT_CODE,
   SPEC_TAG,
   RELATION_TYPE_CODE,
   INST_ID,
   CAMPN_ID,
   START_DATE,
   END_DATE,
   UPDATE_TIME,
   UPDATE_STAFF_ID,
   UPDATE_DEPART_ID,
   REMARK)
VALUES
  (TO_NUMBER(:SYNC_SEQUENCE),
   :MODIFY_TAG,
   TO_NUMBER(:TRADE_ID),
   MOD(TO_NUMBER(:USER_ID), 10000),
   TO_NUMBER(:USER_ID),
   TO_NUMBER(:USER_ID_A),
   TO_NUMBER(:PRODUCT_ID),
   TO_NUMBER(:PACKAGE_ID),
   TO_NUMBER(:DISCNT_CODE),
   :SPEC_TAG,
   :RELATION_TYPE_CODE,
   TO_NUMBER(:INST_ID),
   TO_NUMBER(:CAMPN_ID),
   TO_DATE(:START_DATE, 'YYYY-MM-DD HH24:MI:SS'),
   TO_DATE(:END_DATE, 'YYYY-MM-DD HH24:MI:SS'),
   TO_DATE(:UPDATE_TIME, 'YYYY-MM-DD HH24:MI:SS'),
   :UPDATE_STAFF_ID,
   :UPDATE_DEPART_ID,
   :REMARK)