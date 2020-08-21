INSERT INTO tf_f_account_acctday(PARTITION_ID, ACCT_ID, ACCT_DAY, CHG_TYPE, CHG_MODE, CHG_DATE, FIRST_DATE, INST_ID, START_DATE,END_DATE,UPDATE_TIME,UPDATE_STAFF_ID,UPDATE_DEPART_ID,REMARK,RSRV_NUM1,RSRV_NUM2,RSRV_NUM3,RSRV_NUM4,RSRV_NUM5,RSRV_STR1,RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5,RSRV_DATE1,RSRV_DATE2,RSRV_DATE3,RSRV_TAG1,RSRV_TAG2,RSRV_TAG3)
SELECT MOD(a.acct_id, 10000), a.acct_id, a.ACCT_DAY, a.CHG_TYPE, a.CHG_MODE, a.CHG_DATE, a.FIRST_DATE, a.INST_ID, a.START_DATE, a.END_DATE,a.UPDATE_TIME, :UPDATE_STAFF_ID, :UPDATE_DEPART_ID, a.REMARK, a.RSRV_NUM1, RSRV_NUM2, RSRV_NUM3, RSRV_NUM4,RSRV_NUM5,RSRV_STR1,RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5,RSRV_DATE1,RSRV_DATE2,RSRV_DATE3,RSRV_TAG1,RSRV_TAG2,RSRV_TAG3 
  FROM tf_b_trade_account_acctday_bak a
 WHERE trade_id = :TRADE_ID
   AND accept_month = TO_NUMBER(SUBSTR(:TRADE_ID,5,2))
   AND acct_id = :ACCT_ID