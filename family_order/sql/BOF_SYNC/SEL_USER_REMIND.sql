SELECT :SYNC_SEQUENCE SYNC_SEQUENCE, :SYNC_DAY SYNC_DAY,
               DECODE(B.MODIFY_TAG, '0', '0', '1', '2', '2', '2', '2') MODIFY_TAG,
               B.TRADE_ID, MOD(B.USER_ID, 10000) PARTITION_ID, B.USER_ID, B.INST_ID,
               B.SERVICE_ID, B.START_DATE, B.END_DATE, B.UPDATE_TIME,
               B.UPDATE_STAFF_ID, B.UPDATE_DEPART_ID, B.REMARK, B.RSRV_STR1,
               B.RSRV_STR2, B.RSRV_STR3, B.RSRV_NUM1, B.RSRV_NUM2, B.RSRV_NUM3,
               B.RSRV_DATE1, B.RSRV_DATE2, B.RSRV_DATE3
          FROM TF_B_TRADE_SVC B
           WHERE B.TRADE_ID = :TRADE_ID
           AND B.ACCEPT_MONTH = :ACCEPT_MONTH
           AND B.MODIFY_TAG IN ('0', '1', '2', 'U')