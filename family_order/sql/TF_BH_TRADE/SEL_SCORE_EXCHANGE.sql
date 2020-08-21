SELECT A.SERIAL_NUMBER,
       A.RSRV_STR2,
       A.CUST_NAME,
       A.TRADE_STAFF_ID,
       A.ACCEPT_DATE,
       A.REMARK,
       A.TRADE_ID
FROM TF_BH_TRADE A
WHERE A.SERIAL_NUMBER = :SERIAL_NUMBER   
   AND A.RSRV_STR6 = :RSRV_STR6
   AND A.TRADE_TYPE_CODE = :TRADE_TYPE_CODE