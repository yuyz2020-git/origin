SELECT WIDENET_SYNC_ID,
       SERIAL_NUMBER,
       CUST_NAME,
       PSPT_TYPE_CODE,
       PSPT_ID,
       PSPT_ADDR,
       PHONE,
       NET_WIDE,
       DISCNT_TYPE,
       WIDENET_ADDR,
       TO_CHAR(ACCEPT_DATE, 'YYYY-MM-DD HH24:MI:SS') ACCEPT_DATE,
       ACCEPT_TAG,
       UPDATE_STAFF_ID,
       UPDATE_DEPART_ID,
       TO_CHAR(CANCEL_DATE, 'YYYY-MM-DD HH24:MI:SS') CANCEL_DATE,
       TO_CHAR(OPEN_DATE, 'YYYY-MM-DD HH24:MI:SS') OPEN_DATE,
       REMARKS,
       UPDATE_TIME,
       RSRV_NUM1,
       RSRV_NUM2,
       RSRV_NUM3,
       RSRV_STR1,
       RSRV_STR2,
       RSRV_STR3
  FROM TF_F_WIDENET_SYNC
 WHERE 1 = 1
   AND SERIAL_NUMBER = :SERIAL_NUMBER
   AND ACCEPT_TAG = :ACCEPT_TAG
   ORDER BY ACCEPT_DATE