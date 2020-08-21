SELECT TO_CHAR(USER_ID) USER_ID,
       TO_CHAR(ACCT_ID) ACCT_ID,
       PAYITEM_CODE,
       ACCT_PRIORITY,
       USER_PRIORITY,
       ADDUP_MONTHS,
       ADDUP_METHOD,
       BIND_TYPE,
       START_CYCLE_ID,
       END_CYCLE_ID,
       DEFAULT_TAG,
       ACT_TAG,
       LIMIT_TYPE,
       LIMIT,
       COMPLEMENT_TAG,
       INST_ID,
       UPDATE_STAFF_ID,
       UPDATE_DEPART_ID,
       UPDATE_TIME,
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
  FROM TF_A_PAYRELATION
 WHERE 1 = 1
   AND PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)
   AND USER_ID = TO_NUMBER(:USER_ID)
   AND ACCT_ID = TO_NUMBER(:ACCT_ID)
   AND ACT_TAG = '1'
   AND END_CYCLE_ID > START_CYCLE_ID
   AND END_CYCLE_ID > TO_CHAR(SYSDATE, 'YYYYMMDD')