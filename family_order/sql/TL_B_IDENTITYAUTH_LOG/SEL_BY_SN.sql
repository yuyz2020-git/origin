SELECT ACCEPT_MONTH,SERIAL_NUMBER,CUST_NAME,EPARCHY_CODE,CITY_CODE,IDENTITY_CHECK_TAG,INFO_CONTENT,START_DATE,END_DATE,RSRV_STR1,RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5,TRADE_DEPART_ID,UPDATE_DEPART_ID,UPDATE_STAFF_ID,UPDATE_TIME,REMARK
  FROM TL_B_IDENTITYAUTH_LOG
 WHERE SERIAL_NUMBER = :SERIAL_NUMBER