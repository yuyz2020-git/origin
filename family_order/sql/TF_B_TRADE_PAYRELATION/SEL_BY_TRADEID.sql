SELECT A.TRADE_ID TRADE_ID,A.ACCEPT_MONTH ACCEPT_MONTH,A.USER_ID USER_ID,A.ACCT_ID ACCT_ID,A.PAYITEM_CODE PAYITEM_CODE,
       A.ACCT_PRIORITY ACCT_PRIORITY,A.USER_PRIORITY USER_PRIORITY, A.ADDUP_MONTHS ADDUP_MONTHS,A.ADDUP_METHOD ADDUP_METHOD,
       A.BIND_TYPE BIND_TYPE,A.ACT_TAG ACT_TAG,A.DEFAULT_TAG DEFAULT_TAG,A.LIMIT_TYPE LIMIT_TYPE,A.LIMIT LIMIT,A.COMPLEMENT_TAG COMPLEMENT_TAG,
       A.INST_ID INST_ID,A.START_CYCLE_ID START_CYCLE_ID,A.END_CYCLE_ID END_CYCLE_ID,A.MODIFY_TAG MODIFY_TAG,A.UPDATE_TIME UPDATE_TIME,
       A.UPDATE_STAFF_ID UPDATE_STAFF_ID,A.UPDATE_DEPART_ID UPDATE_DEPART_ID,A.REMARK REMARK,A.RSRV_STR1 RSRV_STR1,A.RSRV_STR2 RSRV_STR2,
       A.RSRV_STR3 RSRV_STR3,A.RSRV_STR4 RSRV_STR4,A.RSRV_STR5 RSRV_STR5,A.RSRV_STR6 RSRV_STR6,A.RSRV_STR7 RSRV_STR7,A.RSRV_STR8 RSRV_STR8,
       A.RSRV_STR9 RSRV_STR9,A.RSRV_STR10 RSRV_STR10
FROM TF_B_TRADE_PAYRELATION A
WHERE A.TRADE_ID = TO_NUMBER(:TRADE_ID) AND A.MODIFY_TAG = :MODIFY_TAG