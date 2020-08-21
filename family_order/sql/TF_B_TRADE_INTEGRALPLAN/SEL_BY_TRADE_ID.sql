SELECT
to_char(TRADE_ID) TRADE_ID,
ACCEPT_MONTH,
INTEGRAL_PLAN_INST_ID,
INTEGRAL_ACCT_ID,
INTEGRAL_PLAN_ID,
CUST_ID,
ACCT_ID,
to_char(USER_ID) USER_ID,
to_char(START_DATE,'YYYY-MM-DD HH24:MI:SS') START_DATE,
to_char(END_DATE,'YYYY-MM-DD HH24:MI:SS') END_DATE,
STATUS,
MODIFY_TAG,
to_char(UPDATE_TIME,'YYYY-MM-DD HH24:MI:SS') UPDATE_TIME,
UPDATE_STAFF_ID,
UPDATE_DEPART_ID,
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
RSRV_STR10,
RSRV_NUM1,
RSRV_NUM2,
RSRV_NUM3,
RSRV_NUM4,
RSRV_NUM5,
to_char(RSRV_DATE1,'YYYY-MM-DD HH24:MI:SS') RSRV_DATE1,
to_char(RSRV_DATE2,'YYYY-MM-DD HH24:MI:SS') RSRV_DATE2,
to_char(RSRV_DATE3,'YYYY-MM-DD HH24:MI:SS') RSRV_DATE3,
RSRV_TAG1,
RSRV_TAG2,
RSRV_TAG3
FROM TF_B_TRADE_INTEGRALPLAN
 WHERE TRADE_ID = :TRADE_ID
   AND ACCEPT_MONTH = TO_NUMBER(SUBSTR(:TRADE_ID, 5, 2))