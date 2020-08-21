SELECT T.PARTITION_ID,
       TO_CHAR(T.USER_ID) USER_ID,
       TO_CHAR(T.ACCT_ID) ACCT_ID,
       T.PAYITEM_CODE,
       T.ACCT_PRIORITY,
       T.USER_PRIORITY,
       TO_CHAR(T.ADDUP_MONTHS) ADDUP_MONTHS,
       T.ADDUP_METHOD,
       T.BIND_TYPE,
       T.DEFAULT_TAG,
       T.ACT_TAG,
       T.LIMIT_TYPE,
       TO_CHAR(T.LIMIT) LIMIT,
       T.COMPLEMENT_TAG,
       TO_CHAR(T.INST_ID) INST_ID,
       T.START_CYCLE_ID,
       T.END_CYCLE_ID,
       TO_CHAR(T.UPDATE_TIME, 'YYYY-MM-DD HH24:MI:SS') UPDATE_TIME,
       T.UPDATE_STAFF_ID,
       T.UPDATE_DEPART_ID,
       T.REMARK,
       T.RSRV_STR1,
       T.RSRV_STR2,
       T.RSRV_STR3,
       T.RSRV_STR4,
       T.RSRV_STR5,
       T.RSRV_STR6,
       T.RSRV_STR7,
       T.RSRV_STR8,
       T.RSRV_STR9,
       T.RSRV_STR10,
       A.EPARCHY_CODE,
       A.PAY_MODE_CODE,
	   A.PAY_NAME
  FROM TF_A_PAYRELATION T,TF_F_ACCOUNT A
 WHERE 1 = 1
   AND T.PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)
   AND T.USER_ID = :USER_ID
   AND T.ACT_TAG = '1'
   AND A.PARTITION_ID = MOD(A.ACCT_ID, 10000)
   AND T.ACCT_ID = A.ACCT_ID   
   AND TO_CHAR(SYSDATE, 'YYYYMMDD') BETWEEN START_CYCLE_ID AND END_CYCLE_ID