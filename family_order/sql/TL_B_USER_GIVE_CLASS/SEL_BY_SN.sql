SELECT

TRADEID,
TRADE_TYPE_CODE,
PRODUCT_ID,
USER_ID,
SERIAL_NUMBER,
USER_CLASS,
TOTAL_NUM,
USED_NUM,
UNUSED_NUM,
UPDATE_TIME,
UPDATE_STAFF_ID,
UPDATE_DEPART_ID,
UPDATE_CITY_CODE,
TO_CHAR(START_DATE, 'yyyy-mm-dd hh24:mi:ss') START_DATE ,
TO_CHAR(END_DATE, 'yyyy-mm-dd hh24:mi:ss') END_DATE ,
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

FROM TL_B_USER_GIVE_CLASS T
WHERE 1=1
AND T.SERIAL_NUMBER=:SERIAL_NUMBER
AND SYSDATE > T.START_DATE AND SYSDATE< T.END_DATE
