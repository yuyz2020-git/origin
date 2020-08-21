SELECT T.IBSYSID,
       T.TRADE_ID,
       T.PRODUCT_TYPE_CODE,
       T.PRODUCT_ID,
       T.PRODUCT_NAME,
       T.USER_ID,
       TO_CHAR(T.PLAN_OPEN_DATE, 'YYYY-MM-DD HH24:MI:SS') PLAN_OPEN_DATE,
       TO_CHAR(T.REAL_OPEN_DATE, 'YYYY-MM-DD HH24:MI:SS') REAL_OPEN_DATE,
       TO_CHAR(T.UPDATE_TIME, 'YYYY-MM-DD HH24:MI:SS') UPDATE_TIME,
       T.VALID_TAG,
       T.ACCEPT_MONTH,
       T.RECORD_NUM,
       T.REMARK,
       T.RSRV_STR1,
       T.RSRV_STR2,
       T.RSRV_STR3,
       T.RSRV_STR4,
       T.RSRV_STR5,
       T.SERIAL_NUMBER,
       T.BATCH_ID
  FROM TF_BH_EOP_PRODUCT T
 WHERE IBSYSID = :IBSYSID
  AND  VALID_TAG = :VALID_TAG
