SELECT TRADE_ID,
       USER_CLASS,
       USER_ID,
       SERIAL_NUMBER,
       GIVE_USER_ID,
       GIVE_SERIAL_NUMBER,
       FROMTRADEID,
       UPDATE_TIME,
       UPDATE_STAFF_ID,
       UPDATE_DEPART_ID,
       UPDATE_CITY_CODE,
TO_CHAR(START_DATE, 'yyyy-mm-dd hh24:mi:ss') START_DATE ,
TO_CHAR(END_DATE, 'yyyy-mm-dd hh24:mi:ss') END_DATE ,
       REMARK,
       RSRV_NUM1,
       RSRV_STR1,
       RSRV_STR2,
       RSRV_STR3,
       RSRV_DATE1,
       RSRV_TAG1
  FROM TL_B_USER_GIVE_CLASS_DETAIL T
 WHERE 1 = 1
   AND T.FROMTRADEID = :FROMTRADEID
