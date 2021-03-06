SELECT A.SERIAL_NUMBER,
       A.RSRV_STR2,
       A.CUST_NAME,
       A.TRADE_STAFF_ID,
       A.ACCEPT_DATE,
       A.REMARK
FROM TF_BH_TRADE A
WHERE A.SERIAL_NUMBER = :SERIAL_NUMBER   
   AND A.ACCEPT_DATE+0 BETWEEN TO_DATE(:START_DATE, 'YYYY-MM-DD') AND TO_DATE(:END_DATE, 'YYYY-MM-DD') + 1
   AND A.TRADE_TYPE_CODE = 143