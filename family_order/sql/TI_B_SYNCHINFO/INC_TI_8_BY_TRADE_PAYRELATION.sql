INSERT INTO TI_B_PAYRELATION (SYNC_SEQUENCE,MODIFY_TAG,TRADE_ID,PARTITION_ID,USER_ID,ACCT_ID,PAYITEM_CODE,ACCT_PRIORITY,USER_PRIORITY,ADDUP_MONTHS,ADDUP_METHOD,BIND_TYPE,DEFAULT_TAG,ACT_TAG,LIMIT_TYPE,LIMIT,COMPLEMENT_TAG,INST_ID,START_CYCLE_ID,END_CYCLE_ID,UPDATE_TIME,UPDATE_STAFF_ID,UPDATE_DEPART_ID,REMARK,RSRV_STR1,RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5,RSRV_STR6,RSRV_STR7,RSRV_STR8,RSRV_STR9,RSRV_STR10) 
 SELECT TO_NUMBER(:SYNC_SEQUENCE),:MODIFY_TAG,TO_NUMBER(:TRADE_ID),PARTITION_ID,USER_ID,ACCT_ID,PAYITEM_CODE,ACCT_PRIORITY,USER_PRIORITY,ADDUP_MONTHS,ADDUP_METHOD,BIND_TYPE,DEFAULT_TAG,ACT_TAG,LIMIT_TYPE,LIMIT,COMPLEMENT_TAG,INST_ID,START_CYCLE_ID,END_CYCLE_ID,UPDATE_TIME,UPDATE_STAFF_ID,UPDATE_DEPART_ID,REMARK,RSRV_STR1,RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5,RSRV_STR6,RSRV_STR7,RSRV_STR8,RSRV_STR9,RSRV_STR10 
 FROM TF_A_PAYRELATION a 
 WHERE (PARTITION_ID, a.USER_ID) IN 
                 ( select mod(t1.USER_ID,10000), t1.USER_ID 
                      from TF_B_TRADE_PAYRELATION t1 
                      where trade_id = TO_NUMBER(:TRADE_ID) 
                      and accept_month = TO_NUMBER(SUBSTR(:TRADE_ID,5,2))) 
 AND NOT EXISTS (select 1 from TI_B_PAYRELATION c 
                 where c.sync_sequence=TO_NUMBER(:SYNC_SEQUENCE) 
                 and a.partition_id=c.partition_id 
                 and a.USER_ID = c.USER_ID 
                 and a.acct_id = c.acct_id
                 and a.payitem_code =c.payitem_code
                 and a.START_CYCLE_ID=c.START_CYCLE_ID)