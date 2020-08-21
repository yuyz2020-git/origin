INSERT INTO TI_B_USER_RES(SYNC_SEQUENCE,MODIFY_TAG,TRADE_ID,PARTITION_ID,USER_ID,USER_ID_A,RES_TYPE_CODE,RES_CODE,IMSI,KI,INST_ID,CAMPN_ID,START_DATE,END_DATE,UPDATE_TIME,UPDATE_STAFF_ID,UPDATE_DEPART_ID,REMARK,RSRV_NUM1,RSRV_NUM2,RSRV_NUM3,RSRV_NUM4,RSRV_NUM5,RSRV_STR1,RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5,RSRV_DATE1,RSRV_DATE2,RSRV_DATE3,RSRV_TAG1,RSRV_TAG2,RSRV_TAG3)
     select :SYNC_SEQUENCE,'2',:TRADE_ID,a.PARTITION_ID,a.USER_ID,a.USER_ID_A,a.RES_TYPE_CODE,a.RES_CODE,a.IMSI,a.KI,a.INST_ID,a.CAMPN_ID,a.START_DATE,b.END_DATE,a.UPDATE_TIME,a.UPDATE_STAFF_ID,a.UPDATE_DEPART_ID,a.REMARK,a.RSRV_NUM1,a.RSRV_NUM2,a.RSRV_NUM3,a.RSRV_NUM4,a.RSRV_NUM5,a.RSRV_STR1,a.RSRV_STR2,a.RSRV_STR3,a.RSRV_STR4,a.RSRV_STR5,a.RSRV_DATE1,a.RSRV_DATE2,a.RSRV_DATE3,a.RSRV_TAG1,a.RSRV_TAG2,a.RSRV_TAG3
       FROM TF_B_TRADE_RES_BAK a, TF_F_USER_RES b
      WHERE a.trade_id = :TRADE_ID
        AND a.accept_month = :ACCEPT_MONTH
        and b.user_id = a.user_id
        AND b.user_id_a = a.user_id_a
        AND b.res_type_code = a.res_type_code
        AND b.res_code = a.res_code
        and b.start_date = a.start_date
        and b.partition_id=mod(a.user_id,10000)
        AND NOT EXISTS (SELECT 1 FROM TI_B_USER_RES
                         WHERE sync_sequence = TO_NUMBER(:SYNC_SEQUENCE)
                           AND a.user_id = user_id
                           AND a.user_id_a = user_id_a
                           AND a.res_type_code = res_type_code
                           AND a.res_code = res_code
                           AND a.start_date = start_date)