SELECT TO_CHAR(TASK_ID) TASK_ID,
       TO_CHAR(ACCEPT_MONTH) ACCEPT_MONTH,
       TO_CHAR(RECEIPT_ID) RECEIPT_ID,
       TO_CHAR(TRADE_ID) TRADE_ID,
       RECEIPT_TYPE,
       CUST_NAME,
       TAX_NO,
       BNK_ACCTID,
       SERIAL_NUMBER,
       REMARK,
       REVIEW,
       PAYEE,
       RECEIPT_SATE,
       TO_CHAR(RECEIPT_FEE) RECEIPT_FEE,
       PRINTED_TAG,
       TO_CHAR(UPDATE_TIME, 'YYYY-MM-DD HH24:MI:SS') UPDATE_TIME,
       OPERATER_MOBILE,
       UPDATE_STAFF_ID,
       UPDATE_DEPART_ID,
       RSRV_STR1,
       RSRV_STR2,
       RSRV_STR3,
       TO_CHAR(RSRV_NUM1) RSRV_NUM1,
       TO_CHAR(RSRV_NUM2) RSRV_NUM2,
       TO_CHAR(RSRV_NUM3) RSRV_NUM3,
       TO_CHAR(RSRV_DATE1, 'YYYY-MM-DD HH24:MI:SS') RSRV_DATE1,
       RSRV_TAG1
  FROM TF_LOG_APPROVE_RECEIPT
  WHERE TASK_ID = TO_NUMBER(:TASK_ID)
  AND ACCEPT_MONTH = TO_NUMBER(SUBSTR(:TASK_ID, 5, 2))

