select to_char(T.USER_ID) USER_ID,
       T.PARTITION_ID,
       T.ACCT_DAY,
       T.CHG_TYPE,
       T.CHG_MODE,
       to_char(T.CHG_DATE, 'yyyy-mm-dd hh24:mi:ss') CHG_DATE,
       to_char(T.FIRST_DATE, 'yyyy-mm-dd hh24:mi:ss') FIRST_DATE,
       T.INST_ID,
       to_char(T.START_DATE, 'yyyy-mm-dd hh24:mi:ss') START_DATE,
       to_char(T.END_DATE, 'yyyy-mm-dd hh24:mi:ss') END_DATE,
       to_char(T.UPDATE_TIME, 'yyyy-mm-dd hh24:mi:ss') UPDATE_TIME,
       T.UPDATE_STAFF_ID,
       T.UPDATE_DEPART_ID,
       T.REMARK,
       T.RSRV_NUM1,
       T.RSRV_NUM2,
       T.RSRV_NUM3,
       T.RSRV_NUM4,
       T.RSRV_NUM5,
       T.RSRV_STR1,
       T.RSRV_STR2,
       T.RSRV_STR3,
       T.RSRV_STR4,
       T.RSRV_STR5,
       to_char(T.RSRV_DATE1, 'yyyy-mm-dd hh24:mi:ss') RSRV_DATE1,
       to_char(T.RSRV_DATE2, 'yyyy-mm-dd hh24:mi:ss') RSRV_DATE2,
       to_char(T.RSRV_DATE3, 'yyyy-mm-dd hh24:mi:ss') RSRV_DATE3,
       T.RSRV_TAG1,
       T.RSRV_TAG2,
       T.RSRV_TAG3
  from TF_F_USER_ACCTDAY T
 where T.USER_ID = to_number(:USER_ID)
   AND T.PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)
   AND T.END_DATE > T.START_DATE
   AND T.END_DATE > TO_DATE(:NOW_DATE, 'YYYY-MM-DD HH24:mi:ss')
 ORDER BY T.START_DATE DESC