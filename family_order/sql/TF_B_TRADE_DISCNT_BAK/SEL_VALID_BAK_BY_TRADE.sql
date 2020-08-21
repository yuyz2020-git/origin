SELECT 
to_char(TRADE_ID) TRADE_ID,
ACCEPT_MONTH,
PARTITION_ID,
to_char(USER_ID) USER_ID,
to_char(USER_ID_A) USER_ID_A,
DISCNT_CODE,
SPEC_TAG,
RELATION_TYPE_CODE,
to_char(INST_ID) INST_ID,
to_char(CAMPN_ID) CAMPN_ID,
to_char(START_DATE,'yyyy-MM-dd HH24:mi:ss') START_DATE,
to_char(END_DATE,'yyyy-MM-dd HH24:mi:ss') END_DATE,
to_char(UPDATE_TIME,'yyyy-MM-dd HH24:mi:ss') UPDATE_TIME,
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
to_char(RSRV_DATE1,'yyyy-MM-dd HH24:mi:ss') RSRV_DATE1,
to_char(RSRV_DATE2,'yyyy-MM-dd HH24:mi:ss') RSRV_DATE2,
to_char(RSRV_DATE3,'yyyy-MM-dd HH24:mi:ss') RSRV_DATE3,
RSRV_TAG1,
RSRV_TAG2,
RSRV_TAG3
FROM TF_B_TRADE_DISCNT_BAK
where trade_id = TO_NUMBER(:TRADE_ID)
and accept_month = TO_NUMBER(SUBSTR(:TRADE_ID,5,2))
AND END_DATE > SYSDATE