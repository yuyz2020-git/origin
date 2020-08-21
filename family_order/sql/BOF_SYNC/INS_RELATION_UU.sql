INSERT INTO TI_B_RELATION_UU
        (SYNC_SEQUENCE, SYNC_DAY, MODIFY_TAG, TRADE_ID, PARTITION_ID, USER_ID_A,
         SERIAL_NUMBER_A, USER_ID_B, SERIAL_NUMBER_B, RELATION_TYPE_CODE,
         ROLE_TYPE_CODE, ROLE_CODE_A, ROLE_CODE_B, ORDERNO, SHORT_CODE, INST_ID,
         START_DATE, END_DATE, UPDATE_TIME, UPDATE_STAFF_ID, UPDATE_DEPART_ID,
         REMARK, RSRV_NUM1, RSRV_NUM2, RSRV_NUM3, RSRV_NUM4, RSRV_NUM5,
         RSRV_STR1, RSRV_STR2, RSRV_STR3, RSRV_STR4, RSRV_STR5, RSRV_DATE1,
         RSRV_DATE2, RSRV_DATE3, RSRV_TAG1, RSRV_TAG2, RSRV_TAG3)
        SELECT :SYNC_SEQUENCE, :SYNC_DAY,
               DECODE(MODIFY_TAG, '0', '0', '1', '2', '2', '2', '2'), TRADE_ID,
               MOD(USER_ID_B, 10000), USER_ID_A, SERIAL_NUMBER_A, USER_ID_B,
               SERIAL_NUMBER_B, RELATION_TYPE_CODE, ROLE_TYPE_CODE, ROLE_CODE_A,
               ROLE_CODE_B, ORDERNO, SHORT_CODE, INST_ID, START_DATE, END_DATE,
               UPDATE_TIME, UPDATE_STAFF_ID, UPDATE_DEPART_ID, REMARK, RSRV_NUM1,
               RSRV_NUM2, RSRV_NUM3, RSRV_NUM4, RSRV_NUM5, RSRV_STR1, RSRV_STR2,
               RSRV_STR3, RSRV_STR4, RSRV_STR5, RSRV_DATE1, RSRV_DATE2,
               RSRV_DATE3, RSRV_TAG1, RSRV_TAG2, RSRV_TAG3
          FROM TF_B_TRADE_RELATION B
         WHERE B.TRADE_ID = :TRADE_ID
           AND B.ACCEPT_MONTH = :ACCEPT_MONTH