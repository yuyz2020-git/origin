SELECT USER_ID,
       SERIAL_NUMBER,
       TRADE_TYPE_CODE,
       ELEMENT_ID,
       OCCUPY_TIME,
       TRADE_DEPART_ID,
       TRADE_STAFF_ID,
       REMARK,
       RSRV_STR1,
       RSRV_STR2,
       RSRV_STR3,
       RSRV_NUM1,
       RSRV_NUM2,
       RSRV_NUM3,
       RSRV_DATE1,
       RSRV_DATE2,
       RSRV_DATE3
  FROM TF_F_USER_LIMIT T
 WHERE T.USER_ID = :USER_ID
   AND T.TRADE_TYPE_CODE = :TRADE_TYPE_CODE
   AND T.ELEMENT_ID = :SERVICE_ID