SELECT INTEGRAL_PLAN_INST_ID,
       PARTITION_ID,
       USER_ID,
       INTEGRAL_ACCT_ID,
       INTEGRAL_PLAN_ID,
       TO_CHAR(START_DATE, 'YYYY-MM-DD HH24:MI:SS') START_DATE,
       TO_CHAR(END_DATE, 'YYYY-MM-DD HH24:MI:SS') END_DATE,
       STATUS,
       REMARK,
       RSRV_STR1,
       RSRV_STR2,
       RSRV_STR3,
       RSRV_STR4,
       RSRV_STR5,
       RSRV_NUM1,
       RSRV_NUM2,
       RSRV_NUM3,
       RSRV_NUM4,
       RSRV_NUM5,
       TO_CHAR(RSRV_DATE1, 'YYYY-MM-DD HH24:MI:SS') RSRV_DATE1,
       TO_CHAR(RSRV_DATE2, 'YYYY-MM-DD HH24:MI:SS') RSRV_DATE2,
       TO_CHAR(RSRV_DATE3, 'YYYY-MM-DD HH24:MI:SS') RSRV_DATE3,
       RSRV_TAG1,
       RSRV_TAG2,
       RSRV_TAG3
  FROM TF_F_INTEGRAL_PLAN T
 WHERE T.USER_ID = TO_NUMBER(:USER_ID)
   AND T.PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)
   AND STATUS = :STATUS
   AND SYSDATE BETWEEN START_DATE AND END_DATE