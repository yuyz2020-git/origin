INSERT INTO TF_B_TRADE_DISCNT
  (TRADE_ID,
   ACCEPT_MONTH,
   USER_ID,
   USER_ID_A,
   PACKAGE_ID,
   PRODUCT_ID,
   DISCNT_CODE,
   SPEC_TAG,
   RELATION_TYPE_CODE,
   INST_ID,
   CAMPN_ID,
   START_DATE,
   END_DATE,
   MODIFY_TAG,
   UPDATE_TIME,
   UPDATE_STAFF_ID,
   UPDATE_DEPART_ID,
   REMARK,
   RSRV_NUM1,
   RSRV_NUM2,
   RSRV_NUM3,
   RSRV_NUM4,
   RSRV_NUM5,
   RSRV_STR1,
   RSRV_STR2,
   RSRV_STR3,
   RSRV_STR4,
   RSRV_STR5,
   RSRV_DATE1,
   RSRV_DATE2,
   RSRV_DATE3,
   RSRV_TAG1,
   RSRV_TAG2,
   RSRV_TAG3)
  SELECT TO_NUMBER(:TRADE_ID),
         TO_NUMBER(SUBSTR(:TRADE_ID, 5, 2)),
         TO_NUMBER(:USER_ID),
         TO_NUMBER(:USER_ID_A),
         :PACKAGE_ID,
         :PRODUCT_ID,
         TO_NUMBER(:DISCNT_CODE),
         :SPEC_TAG,
         :RELATION_TYPE_CODE,
         TO_NUMBER(:INST_ID),
         TO_NUMBER(:CAMPN_ID),
         TO_DATE(:START_DATE, 'YYYY-MM-DD HH24:MI:SS'),
         NVL(TO_DATE(:END_DATE, 'YYYY-MM-DD HH24:MI:SS'), SYSDATE),
         :MODIFY_TAG,
         SYSDATE,
         :UPDATE_STAFF_ID,
         :UPDATE_DEPART_ID,
         :REMARK,
         NULL,
         NULL,
         NULL,
         NULL,
         NULL,
         NULL,
         NULL,
         NULL,
         NULL,
         NULL,
         NULL,
         NULL,
         NULL,
         NULL,
         NULL,
         NULL
    FROM DUAL
   WHERE EXISTS
   (SELECT 1
            FROM TF_F_USER_DISCNT A1
           WHERE A1.PARTITION_ID = MOD(:USER_ID, 10000)
             AND A1.USER_ID = TO_NUMBER(:USER_ID)
             AND A1.DISCNT_CODE = TO_NUMBER(:DISCNT_CODE)
             AND A1.END_DATE > NVL(TO_DATE(:END_DATE, 'YYYY-MM-DD HH24:MI:SS'), SYSDATE)
             AND A1.END_DATE > SYSDATE)