SELECT PARTITION_ID,
       USER_ID,
       SERIAL_NUMBER,
       SERIAL_NUMBER_B,
       PRODUCT_MODE,
       PRODUCT_ID,
       PRODUCT_NAME,
       PACKAGE_ID,
       PACKAGE_NAME,
       CAMPN_TYPE,
       DEVICE_MODEL_CODE PARA_CODE1,
       DEVICE_DEPART_ID PARA_CODE2,
       DEVICE_STAFF_ID PARA_CODE3,
       RES_CODE,
       RES_TYPE_CODE,
       IN_MODE_CODE,
       PROCESS_TAG,
       TO_CHAR(ACCEPT_DATE, 'yyyy-mm-dd hh24:mi:ss') ACCEPT_DATE,
       TRADE_STAFF_ID,
       RELATION_TRADE_ID,
       TO_CHAR(CANCEL_DATE, 'yyyy-mm-dd hh24:mi:ss') CANCEL_DATE,
       CANCEL_TRADE_ID,
       CANCEL_STAFF_ID,
       CANCEL_CAUSE,
       TO_CHAR(START_DATE, 'yyyy-mm-dd hh24:mi:ss') START_DATE,
       TO_CHAR(END_DATE, 'yyyy-mm-dd hh24:mi:ss') END_DATE,
       TO_CHAR(UPDATE_TIME, 'yyyy-mm-dd hh24:mi:ss') UPDATE_TIME,
       UPDATE_STAFF_ID,
       UPDATE_DEPART_ID
  FROM TF_F_USER_SALEACTIVE_BOOK A
 WHERE A.SERIAL_NUMBER = :SERIAL_NUMBER
   AND A.PROCESS_TAG = :PROCESS_TAG
   AND A.PRODUCT_ID = :PRODUCT_ID
   AND A.PACKAGE_ID = :PACKAGE_ID
   AND SYSDATE BETWEEN A.START_DATE AND A.END_DATE