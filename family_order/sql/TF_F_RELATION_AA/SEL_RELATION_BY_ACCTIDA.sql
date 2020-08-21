SELECT PARTITION_ID,ACCT_ID_A,USER_ID_A,ACCT_ID_B,USER_ID_B,PAYITEM_CODE,RELATION_TYPE_CODE,
ROLE_CODE_A,ROLE_CODE_B,ORDERNO,INST_ID,LIMIT_TYPE,LIMIT_VALUE,
to_char(START_DATE,'yyyy-mm-dd hh24:mi:ss') START_DATE,
to_char(END_DATE,'yyyy-mm-dd hh24:mi:ss') END_DATE,
UPDATE_TIME,UPDATE_STAFF_ID,UPDATE_DEPART_ID,REMARK,RSRV_NUM1,RSRV_NUM2,RSRV_NUM3,RSRV_STR1,
RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5,RSRV_DATE1,RSRV_DATE2,RSRV_DATE3,RSRV_TAG1,RSRV_TAG2,RSRV_TAG3
FROM TF_F_RELATION_AA
WHERE ACCT_ID_A = :ACCT_ID_A
AND RELATION_TYPE_CODE = :RELATION_TYPE_CODE
AND SYSDATE BETWEEN START_DATE AND END_DATE