INSERT INTO TF_B_TRADE_USER_ACCTDAY
  (TRADE_ID,
   ACCEPT_MONTH,
   USER_ID,
   ACCT_DAY,
   CHG_TYPE,
   CHG_MODE,
   CHG_DATE,
   FIRST_DATE,
   INST_ID,
   START_DATE,
   END_DATE,
   MODIFY_TAG,
   UPDATE_TIME,
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
   RSRV_DATE1,
   RSRV_DATE2,
   RSRV_DATE3,
   RSRV_TAG1,
   RSRV_TAG2,
   RSRV_TAG3)
  SELECT
   to_number(:TRADE_ID),
   SUBSTR(:TRADE_ID, 5, 2),
   USER_ID,
   ACCT_DAY,
   CHG_TYPE,
   CHG_MODE,
   CHG_DATE,
   FIRST_DATE,
   INST_ID,
   START_DATE,
   to_date(:END_DATE, 'yyyy-mm-dd hh24:mi:ss'),
   '1',
   SYSDATE,
   '',
   '',
   '',
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
   RSRV_DATE1,
   RSRV_DATE2,
   RSRV_DATE3,
   RSRV_TAG1,
   RSRV_TAG2,
   RSRV_TAG3
FROM TF_F_USER_ACCTDAY 
   WHERE USER_ID = TO_NUMBER(:USER_ID)
     AND PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)
     AND END_DATE>to_date(:END_DATE, 'yyyy-mm-dd hh24:mi:ss')