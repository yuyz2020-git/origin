SELECT T.ACCT_DAY, TO_CHAR(T.FIRST_DATE, 'YYYY-MM-DD') FIRST_DATE,TO_CHAR(T.START_DATE, 'YYYY-MM-DD') START_DATE,TO_CHAR(T.END_DATE, 'YYYY-MM-DD') END_DATE
  FROM TF_F_USER_ACCTDAY T
 WHERE T.USER_ID = TO_NUMBER(:USER_ID)
   AND T.PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)
   AND T.END_DATE > SYSDATE
 ORDER BY T.START_DATE