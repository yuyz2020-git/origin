INSERT INTO TF_F_RELATION_AA
  (PARTITION_ID,
   ACCT_ID_A,
   USER_ID_A,
   ACCT_ID_B,
   USER_ID_B,
   PAYITEM_CODE,
   RELATION_TYPE_CODE,
   ROLE_CODE_A,
   ROLE_CODE_B,
   ORDERNO,
   INST_ID,
   LIMIT_TYPE,
   LIMIT_VALUE,
   ACT_TAG,
   START_DATE,
   END_DATE,
   UPDATE_TIME,
   UPDATE_STAFF_ID,
   UPDATE_DEPART_ID,
   REMARK,
   RSRV_NUM1,
   RSRV_NUM2,
   RSRV_NUM3,
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
  (MOD(to_number(:ACCT_ID_B),10000),
   to_number(:ACCT_ID_A),
   to_number(:USER_ID_A),
   to_number(:ACCT_ID_B),
   to_number(:USER_ID_B),
   :PAYITEM_CODE,
   :RELATION_TYPE_CODE,
   :ROLE_CODE_A,
   :ROLE_CODE_B,
   :ORDERNO,
   to_number(:INST_ID),
   :LIMIT_TYPE,
   :LIMIT_VALUE,
   :ACT_TAG,
   :START_DATE,
   :END_DATE,
   to_date(:UPDATE_TIME, 'yyyy-mm-dd hh24:mi:ss'),
   :UPDATE_STAFF_ID,
   :UPDATE_DEPART_ID,
   :REMARK,
   :RSRV_NUM1,
   to_number(:RSRV_NUM2),
   to_number(:RSRV_NUM3),
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