SELECT TRADE_ID,
       ACCEPT_MONTH,
       USER_ID,
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
       INST_ID,
       START_CYCLE_ID,
       END_CYCLE_ID,
       MODIFY_TAG,
       UPDATE_TIME,
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
 where TRADE_ID = :TRADE_ID
   and ACCEPT_MONTH = TO_NUMBER(SUBSTR(:TRADE_ID, 5, 2))