INSERT INTO TF_B_TRADE_DISCNT
        (TRADE_ID,
         ACCEPT_MONTH,
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
        SELECT :TRADE_ID,
               SUBSTR(:TRADE_ID, 5, 2),
               USER_ID,
               '-1',
               :PRODUCT_ID,
               :PACKAGE_ID,
               :DISCNT_CODE,
               '0',
               '',
               :INST_ID,
               '',
               TO_DATE(:START_DATE, 'YYYY-MM-DD HH24:MI:SS'),
               TO_DATE(:END_DATE, 'YYYY-MM-DD HH24:MI:SS'),
               '1',
               SYSDATE,
               :UPDATE_STAFF_ID,
               :UPDATE_DEPART_ID,
               '统一资费，终止优惠',
               '',
               '',
               '',
               '',
               '',
               'UNIFIED',
               '',
               '',
               '',
               '',
               '',
               '',
               '',
               '',
               '',
               ''
          FROM TF_B_TRADE
         WHERE TRADE_ID = :TRADE_ID