SELECT to_char(TRADE_ID) TRADE_ID,
       ACCEPT_MONTH,
       to_char(USER_ID) USER_ID,
       ACCT_ID,
       PAYITEM_CODE,
       ACCT_PRIORITY,
       USER_PRIORITY,
       ADDUP_MONTHS,
       ADDUP_METHOD,
       BIND_TYPE,
       ACT_TAG,
       DEFAULT_TAG,
       LIMIT_TYPE,
       LIMIT,
       COMPLEMENT_TAG,
       to_char(INST_ID) INST_ID,
       START_CYCLE_ID,
       END_CYCLE_ID,
       MODIFY_TAG,
       to_char(UPDATE_TIME, 'yyyy-MM-dd HH24:mi:ss') UPDATE_TIME,
       UPDATE_STAFF_ID,
       UPDATE_DEPART_ID,
       REMARK,
       RSRV_STR1,
       RSRV_STR2,
       RSRV_STR3,
       RSRV_STR4,
       RSRV_STR5,
       RSRV_STR6,
       RSRV_STR7,
       RSRV_STR8,
       RSRV_STR9,
       RSRV_STR10
  FROM TF_B_TRADE_PAYRELATION
 WHERE trade_id = :TRADE_ID
   and accept_month = TO_NUMBER(SUBSTR(:TRADE_ID, 5, 2))