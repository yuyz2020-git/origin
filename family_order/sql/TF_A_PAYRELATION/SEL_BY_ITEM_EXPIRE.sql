SELECT PARTITION_ID,
       INST_ID,
       TO_CHAR(USER_ID) USER_ID,
       TO_CHAR(ACCT_ID) ACCT_ID,
       PAYITEM_CODE,
       ACCT_PRIORITY,
       USER_PRIORITY,
       BIND_TYPE,
       START_CYCLE_ID,
       END_CYCLE_ID,
       DEFAULT_TAG,
       ACT_TAG,
       LIMIT_TYPE,
       TO_CHAR(LIMIT) LIMIT,
       COMPLEMENT_TAG,
       UPDATE_STAFF_ID,
       UPDATE_DEPART_ID,
       TO_CHAR(UPDATE_TIME, 'yyyy-mm-dd hh24:mi:ss') UPDATE_TIME
  FROM TF_A_PAYRELATION T
 WHERE 1 = 1
   AND T.ACCT_ID = :ACCT_ID
   AND T.DEFAULT_TAG = '0'
   AND T.ACT_TAG = '1'
   AND T.PAYITEM_CODE = :PAYITEM_CODE
   AND T.END_CYCLE_ID<to_number(to_char(sysdate, 'yyyymmdd'))
