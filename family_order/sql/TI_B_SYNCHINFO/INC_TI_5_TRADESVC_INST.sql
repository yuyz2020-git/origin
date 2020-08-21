INSERT INTO TI_B_USER_SVC (SYNC_SEQUENCE,MODIFY_TAG,TRADE_ID,PARTITION_ID,USER_ID,USER_ID_A,PRODUCT_ID,PACKAGE_ID,SERVICE_ID,MAIN_TAG,INST_ID,CAMPN_ID,START_DATE,END_DATE,UPDATE_TIME,UPDATE_STAFF_ID,UPDATE_DEPART_ID,REMARK,RSRV_NUM1,RSRV_NUM2,RSRV_NUM3,RSRV_NUM4,RSRV_NUM5,RSRV_STR1,RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5,RSRV_DATE1,RSRV_DATE2,RSRV_DATE3,RSRV_TAG1,RSRV_TAG2,RSRV_TAG3) 
 SELECT TO_NUMBER(:SYNC_SEQUENCE),:MODIFY_TAG,TO_NUMBER(:TRADE_ID),PARTITION_ID,USER_ID,USER_ID_A,PRODUCT_ID,PACKAGE_ID,SERVICE_ID,MAIN_TAG,INST_ID,CAMPN_ID,START_DATE,END_DATE,UPDATE_TIME,UPDATE_STAFF_ID,UPDATE_DEPART_ID,REMARK,RSRV_NUM1,RSRV_NUM2,RSRV_NUM3,RSRV_NUM4,RSRV_NUM5,RSRV_STR1,RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5,RSRV_DATE1,RSRV_DATE2,RSRV_DATE3,RSRV_TAG1,RSRV_TAG2,RSRV_TAG3 
 FROM TF_F_USER_SVC a 
 WHERE (PARTITION_ID, a.USER_ID, a.service_id, a.inst_id) IN 
                 ( select mod(t1.USER_ID,10000), t1.USER_ID, t1.service_id, t1.inst_id 
                      from tf_b_trade_svc t1 
                      where trade_id = TO_NUMBER(:TRADE_ID) 
                      and accept_month = TO_NUMBER(SUBSTR(:TRADE_ID,5,2))) 
 AND NOT EXISTS (select 1 from TI_B_USER_SVC c 
                 where c.sync_sequence=TO_NUMBER(:SYNC_SEQUENCE) 
                 and a.partition_id=c.partition_id 
                 and a.USER_ID=c.USER_ID 
                 and a.USER_ID_A=c.USER_ID_A 
                 and a.PRODUCT_ID = c.PRODUCT_ID
                 and a.PACKAGE_ID =c.PACKAGE_ID
                 and a.SERVICE_ID = c.SERVICE_ID
                 and a.start_date=c.start_date)