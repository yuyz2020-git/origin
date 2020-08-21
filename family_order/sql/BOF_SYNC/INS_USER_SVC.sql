INSERT INTO TI_B_USER_SVC
        (SYNC_SEQUENCE, SYNC_DAY, MODIFY_TAG, TRADE_ID, PARTITION_ID, USER_ID,
         USER_ID_A, PRODUCT_ID, PACKAGE_ID, SERVICE_ID, MAIN_TAG, INST_ID,
         CAMPN_ID, START_DATE, END_DATE, UPDATE_TIME, UPDATE_STAFF_ID,
         UPDATE_DEPART_ID, REMARK, RSRV_NUM1, RSRV_NUM2, RSRV_NUM3, RSRV_NUM4,
         RSRV_NUM5, RSRV_STR1, RSRV_STR2, RSRV_STR3, RSRV_STR4, RSRV_STR5,
         RSRV_STR6, RSRV_STR7, RSRV_STR8, RSRV_STR9, RSRV_STR10, RSRV_DATE1,
         RSRV_DATE2, RSRV_DATE3, RSRV_TAG1, RSRV_TAG2, RSRV_TAG3)
        SELECT :SYNC_SEQUENCE, :SYNC_DAY,
               DECODE(B.MODIFY_TAG, '0', '0', '1', '2', '2', '2', '2'),
               B.TRADE_ID, MOD(B.USER_ID, 10000), B.USER_ID, B.USER_ID_A,
               '-1', '-1', B.SERVICE_ID, B.MAIN_TAG, B.INST_ID,
               B.CAMPN_ID, B.START_DATE, B.END_DATE, B.UPDATE_TIME,
               B.UPDATE_STAFF_ID, B.UPDATE_DEPART_ID, B.REMARK, B.RSRV_NUM1,
               B.RSRV_NUM2, B.RSRV_NUM3, B.RSRV_NUM4, B.RSRV_NUM5, B.RSRV_STR1,
               B.RSRV_STR2, B.RSRV_STR3, B.RSRV_STR4, B.RSRV_STR5, B.RSRV_STR6,
               B.RSRV_STR7, B.RSRV_STR8, B.RSRV_STR9, B.RSRV_STR10, B.RSRV_DATE1,
               B.RSRV_DATE2, B.RSRV_DATE3, B.RSRV_TAG1, B.RSRV_TAG2, B.RSRV_TAG3
          FROM TF_B_TRADE_SVC B
         WHERE B.TRADE_ID = :TRADE_ID
           AND B.ACCEPT_MONTH = :ACCEPT_MONTH
           AND B.MODIFY_TAG IN ('0', '1', '2', 'U')