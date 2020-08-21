UPDATE TF_A_PAYRELATION SET 
ACCT_PRIORITY = :ACCT_PRIORITY, USER_PRIORITY = :USER_PRIORITY, ADDUP_MONTHS = to_number(:ADDUP_MONTHS), ADDUP_METHOD = :ADDUP_METHOD, BIND_TYPE = :BIND_TYPE, DEFAULT_TAG = :DEFAULT_TAG, ACT_TAG = :ACT_TAG, LIMIT_TYPE = :LIMIT_TYPE, LIMIT = to_number(:LIMIT), COMPLEMENT_TAG = :COMPLEMENT_TAG, INST_ID = to_number(:INST_ID), END_CYCLE_ID = :END_CYCLE_ID, UPDATE_TIME = to_date(:UPDATE_TIME,'yyyy-mm-dd hh24:mi:ss'), UPDATE_STAFF_ID = :UPDATE_STAFF_ID, UPDATE_DEPART_ID = :UPDATE_DEPART_ID, REMARK = :REMARK, RSRV_STR1 = :RSRV_STR1, RSRV_STR2 = :RSRV_STR2, RSRV_STR3 = :RSRV_STR3, RSRV_STR4 = :RSRV_STR4, RSRV_STR5 = :RSRV_STR5, RSRV_STR6 = :RSRV_STR6, RSRV_STR7 = :RSRV_STR7, RSRV_STR8 = :RSRV_STR8, RSRV_STR9 = :RSRV_STR9, RSRV_STR10 = :RSRV_STR10
WHERE PARTITION_ID = MOD(to_number(:USER_ID),10000) and USER_ID = to_number(:USER_ID) and ACCT_ID = to_number(:ACCT_ID) and PAYITEM_CODE = :PAYITEM_CODE and START_CYCLE_ID = :START_CYCLE_ID