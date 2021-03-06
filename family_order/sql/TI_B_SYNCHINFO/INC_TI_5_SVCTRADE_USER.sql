INSERT INTO TI_B_USER_SVC (SYNC_SEQUENCE,MODIFY_TAG,TRADE_ID,PARTITION_ID,USER_ID,USER_ID_A,PRODUCT_ID,PACKAGE_ID,SERVICE_ID,MAIN_TAG,INST_ID,CAMPN_ID,START_DATE,END_DATE,UPDATE_TIME,UPDATE_STAFF_ID,UPDATE_DEPART_ID,REMARK,RSRV_NUM1,RSRV_NUM2,RSRV_NUM3,RSRV_NUM4,RSRV_NUM5,RSRV_STR1,RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5,RSRV_DATE1,RSRV_DATE2,RSRV_DATE3,RSRV_TAG1,RSRV_TAG2,RSRV_TAG3)
 SELECT TO_NUMBER(:SYNC_SEQUENCE),:MODIFY_TAG,TO_NUMBER(:TRADE_ID),PARTITION_ID,USER_ID,USER_ID_A,PRODUCT_ID,PACKAGE_ID,SERVICE_ID,MAIN_TAG,INST_ID,CAMPN_ID,START_DATE,END_DATE,UPDATE_TIME,UPDATE_STAFF_ID,UPDATE_DEPART_ID,REMARK,RSRV_NUM1,RSRV_NUM2,RSRV_NUM3,RSRV_NUM4,RSRV_NUM5,RSRV_STR1,RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5,RSRV_DATE1,RSRV_DATE2,RSRV_DATE3,RSRV_TAG1,RSRV_TAG2,RSRV_TAG3
 FROM TF_F_USER_SVC a 
         WHERE a.user_id IN (             
             SELECT b.user_id FROM tf_b_trade_svc b WHERE b.trade_id =:TRADE_ID
             and b.accept_month = TO_NUMBER(SUBSTR(:TRADE_ID,5,2))       
          )
            AND NOT EXISTS (SELECT 1 FROM TI_B_USER_SVC 
                         WHERE sync_sequence = TO_NUMBER(:SYNC_SEQUENCE)                           
                           AND a.partition_id = PARTITION_ID
                           AND a.user_id = USER_ID
                           AND a.USER_ID_A=USER_ID_A
                           AND a.PRODUCT_ID =PRODUCT_ID
                           AND a.PACKAGE_ID=PACKAGE_ID
                           AND a.SERVICE_ID=SERVICE_ID
                           AND a.START_DATE = START_DATE
                           )