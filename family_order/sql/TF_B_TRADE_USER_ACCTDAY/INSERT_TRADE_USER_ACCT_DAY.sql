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
VALUES
  (to_number(:TRADE_ID),
   to_number(:ACCEPT_MONTH),
   to_number(:USER_ID),
   to_number(:ACCT_DAY),
   :CHG_TYPE,
   :CHG_MODE,
   to_date(:CHG_DATE, 'yyyy-mm-dd hh24:mi:ss'),
   to_date(:FIRST_DATE, 'yyyy-mm-dd hh24:mi:ss'),
   to_number(:INST_ID),
   to_date(:START_DATE, 'yyyy-mm-dd hh24:mi:ss'),
   to_date(:END_DATE, 'yyyy-mm-dd hh24:mi:ss'),
   :MODIFY_TAG,
   to_date(:UPDATE_TIME, 'yyyy-mm-dd hh24:mi:ss'),
   :UPDATE_STAFF_ID,
   :UPDATE_DEPART_ID,
   :REMARK,
   to_number(:RSRV_NUM1),
   to_number(:RSRV_NUM2),
   to_number(:RSRV_NUM3),
   to_number(:RSRV_NUM4),
   to_number(:RSRV_NUM5),
   :RSRV_STR1,
   :RSRV_STR2,
   :RSRV_STR3,
   :RSRV_STR4,
   :RSRV_STR5,
   to_date(:RSRV_DATE1, 'yyyy-mm-dd hh24:mi:ss'),
   to_date(:RSRV_DATE2, 'yyyy-mm-dd hh24:mi:ss'),
   to_date(:RSRV_DATE3, 'yyyy-mm-dd hh24:mi:ss'),
   :RSRV_TAG1,
   :RSRV_TAG2,
   :RSRV_TAG3)