INSERT INTO TI_B_USER_SHARE_RELA
      (SYNC_SEQUENCE, SYNC_DAY, MODIFY_TAG, INST_ID, PARTITION_ID, SHARE_ID,
       SERIAL_NUMBER, USER_ID_B, TRADE_ID, EPARCHY_CODE, ROLE_CODE, START_DATE,
       END_DATE, UPDATE_TIME, UPDATE_STAFF_ID, UPDATE_DEPART_ID, REMARK,
       RSRV_NUM1, RSRV_NUM2, RSRV_NUM3, RSRV_STR1, RSRV_STR2, RSRV_STR3,
       RSRV_DATE1, RSRV_DATE2, RSRV_TAG1, RSRV_TAG2)
      SELECT :SYNC_SEQUENCE, substr(:SYNC_SEQUENCE,7,2), '8', B.INST_ID, PARTITION_ID,
             B.SHARE_ID, B.SERIAL_NUMBER, B.USER_ID_B, :TRADE_ID,
             B.EPARCHY_CODE, B.ROLE_CODE, B.START_DATE, B.END_DATE,
             B.UPDATE_TIME, B.UPDATE_STAFF_ID, B.UPDATE_DEPART_ID, B.REMARK,
             B.RSRV_NUM1, B.RSRV_NUM2, B.RSRV_NUM3, B.RSRV_STR1, B.RSRV_STR2,
             B.RSRV_STR3, B.RSRV_DATE1, B.RSRV_DATE2, B.RSRV_TAG1, B.RSRV_TAG2
        FROM TF_F_USER_SHARE_RELA B
       WHERE B.SHARE_ID = :SHARE_ID
