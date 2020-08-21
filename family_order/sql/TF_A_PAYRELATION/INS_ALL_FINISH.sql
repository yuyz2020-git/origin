INSERT INTO TF_A_PAYRELATION(PARTITION_ID, USER_ID, ACCT_ID, PAYITEM_CODE, ACCT_PRIORITY, USER_PRIORITY, ADDUP_MONTHS, ADDUP_METHOD, BIND_TYPE, DEFAULT_TAG, ACT_TAG, LIMIT_TYPE, LIMIT, COMPLEMENT_TAG, INST_ID, START_CYCLE_ID, END_CYCLE_ID, UPDATE_TIME, UPDATE_STAFF_ID, UPDATE_DEPART_ID, REMARK, RSRV_STR1, RSRV_STR2, RSRV_STR3, RSRV_STR4, RSRV_STR5, RSRV_STR6, RSRV_STR7, RSRV_STR8, RSRV_STR9, RSRV_STR10) 
VALUES (MOD(to_number(:USER_ID),10000), to_number(:USER_ID) , to_number(:ACCT_ID) , :PAYITEM_CODE, :ACCT_PRIORITY, :USER_PRIORITY, to_number(:ADDUP_MONTHS) , :ADDUP_METHOD, :BIND_TYPE, :DEFAULT_TAG, :ACT_TAG, :LIMIT_TYPE, to_number(:LIMIT) , :COMPLEMENT_TAG, to_number(:INST_ID) , :START_CYCLE_ID, :END_CYCLE_ID, to_date(:UPDATE_TIME,'yyyy-mm-dd hh24:mi:ss') , :UPDATE_STAFF_ID, :UPDATE_DEPART_ID, :REMARK, :RSRV_STR1, :RSRV_STR2, :RSRV_STR3, :RSRV_STR4, :RSRV_STR5, :RSRV_STR6, :RSRV_STR7, :RSRV_STR8, :RSRV_STR9, :RSRV_STR10)