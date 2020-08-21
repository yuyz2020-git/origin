SELECT TRADE_ID,
       ACCEPT_MONTH,
       TRADE_TYPE_CODE,
       PRIORITY,
       SUBSCRIBE_TYPE,
       SUBSCRIBE_STATE,
       CUST_ID,
       CUST_NAME,
       ACCT_ID,
       USER_ID,
       SERIAL_NUMBER,
       EPARCHY_CODE,
       CITY_CODE,
       PRODUCT_ID,
       ACCEPT_DATE,
       TRADE_STAFF_ID,
       TRADE_DEPART_ID,
       TRADE_CITY_CODE,
       FINISH_DATE,
       TO_CHAR(EXEC_TIME, 'yyyy-mm-dd hh24:mi:ss') EXEC_TIME,
       EXEC_RESULT,
       EXEC_DESC,
       CANCEL_TAG,
       CANCEL_DATE,
       CANCEL_STAFF_ID,
       CANCEL_DEPART_ID,
       CANCEL_CITY_CODE,
       CANCEL_EPARCHY_CODE,
       UPDATE_TIME,
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
       RSRV_DATE1,
       RSRV_DATE2,
       RSRV_DATE3,
       RSRV_DATE4,
       RSRV_DATE5,
       RSRV_TAG1,
       RSRV_TAG2,
       RSRV_TAG3
  FROM TI_B_TRADE_INTERFACE A
 WHERE A.EXEC_TIME < SYSDATE
   AND A.TRADE_ID = :TRADE_ID
   AND A.SERIAL_NUMBER = 'KD_' || :SERIAL_NUMBER
   AND A.EXEC_RESULT like '%' || :EXEC_RESULT || '%'
   AND A.TRADE_TYPE_CODE = :TRADE_TYPE_CODE
   AND A.ACCEPT_DATE >= TO_DATE(:BEGIN_DATE, 'yyyy-mm-dd')
   AND A.ACCEPT_DATE <= TO_DATE(:END_DATE, 'yyyy-mm-dd') + 1
 ORDER BY A.SUBSCRIBE_STATE, ACCEPT_DATE