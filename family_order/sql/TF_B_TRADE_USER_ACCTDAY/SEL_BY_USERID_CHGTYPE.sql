SELECT TRADE_ID,
       ACCEPT_MONTH,
       USER_ID,
       ACCT_DAY,
       CHG_TYPE,
       CHG_MODE,
       TO_CHAR(CHG_DATE, 'YYYY-MM-DD HH24:MI:SS') CHG_DATE,
       TO_CHAR(FIRST_DATE, 'YYYY-MM-DD HH24:MI:SS') FIRST_DATE,
       INST_ID,
       TO_CHAR(START_DATE, 'YYYY-MM-DD HH24:MI:SS') START_DATE,
       TO_CHAR(END_DATE, 'YYYY-MM-DD HH24:MI:SS') END_DATE,
       MODIFY_TAG,
       TO_CHAR(UPDATE_TIME, 'YYYY-MM-DD HH24:MI:SS') UPDATE_TIME,
       UPDATE_STAFF_ID,
       UPDATE_DEPART_ID,
       REMARK,
       RSRV_NUM1,
       RSRV_NUM2,
       RSRV_NUM3,
       RSRV_NUM4,
       RSRV_NUM5,
       RSRV_STR1,
       RSRV_STR2,
       RSRV_STR3,
       RSRV_STR4,
       RSRV_STR5,
       TO_CHAR(RSRV_DATE1, 'YYYY-MM-DD HH24:MI:SS') RSRV_DATE1,
       TO_CHAR(RSRV_DATE2, 'YYYY-MM-DD HH24:MI:SS') RSRV_DATE2,
       TO_CHAR(RSRV_DATE3, 'YYYY-MM-DD HH24:MI:SS') RSRV_DATE3,
       RSRV_TAG1,
       RSRV_TAG2,
       RSRV_TAG3
  FROM TF_B_TRADE_USER_ACCTDAY T
 WHERE T.USER_ID = TO_NUMBER(:USER_ID)
   AND T.CHG_TYPE = :CHG_TYPE
 ORDER BY T.CHG_DATE DESC