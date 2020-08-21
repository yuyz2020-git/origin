INSERT INTO TI_B_RELATION_AA
  (SYNC_SEQUENCE,
   MODIFY_TAG,
   TRADE_ID,
   PARTITION_ID,
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
  SELECT :SYNC_SEQUENCE,
         CASE MODIFY_TAG
           WHEN '0' THEN
            '0'
           WHEN '1' THEN
            '2'
           WHEN '2' THEN
            '2'
           ELSE
            '2'
         END MODIFY_TAG,
         TRADE_ID,
         MOD(TO_NUMBER(ACCT_ID_B), 10000),
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
         RSRV_TAG3
    FROM TF_B_TRADE_RELATION_AA A
   WHERE A.TRADE_ID = :TRADE_ID
     AND A.ACCEPT_MONTH = TO_NUMBER(SUBSTR(:TRADE_ID, 5, 2))
     AND NOT EXISTS
   (SELECT 1
            FROM TI_B_RELATION_AA B
           WHERE B.SYNC_SEQUENCE = TO_NUMBER(:SYNC_SEQUENCE)
             AND B.INST_ID = A.INST_ID)