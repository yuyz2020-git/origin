UPDATE TI_B_USER_VALIDCHANGE t SET t.modify_tag = '2'
        WHERE EXISTS (SELECT 1 FROM (SELECT PARTITION_ID,USER_ID,START_DATE,END_DATE,UPDATE_TIME,UPDATE_STAFF_ID,UPDATE_DEPART_ID,REMARK,RSRV_NUM1,RSRV_NUM2,RSRV_NUM3,RSRV_NUM4,RSRV_NUM5,RSRV_STR1,RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5,RSRV_DATE1,RSRV_DATE2,RSRV_DATE3,RSRV_TAG1,RSRV_TAG2,RSRV_TAG3
                               FROM TI_B_USER_VALIDCHANGE
                               WHERE sync_sequence = to_number(:SYNC_SEQUENCE)
                               AND modify_tag='9'
                             MINUS
                             SELECT PARTITION_ID,USER_ID,START_DATE,END_DATE,UPDATE_TIME,UPDATE_STAFF_ID,UPDATE_DEPART_ID,REMARK,RSRV_NUM1,RSRV_NUM2,RSRV_NUM3,RSRV_NUM4,RSRV_NUM5,RSRV_STR1,RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5,RSRV_DATE1,RSRV_DATE2,RSRV_DATE3,RSRV_TAG1,RSRV_TAG2,RSRV_TAG3
                               FROM TF_B_TRADE_VALIDCHANGE_BAK
                               WHERE trade_id=:TRADE_ID
                               AND accept_month=:ACCEPT_MONTH ) b
               WHERE b.user_id = t.user_id)
       AND sync_sequence = to_number(:SYNC_SEQUENCE)
       AND modify_tag = '9'