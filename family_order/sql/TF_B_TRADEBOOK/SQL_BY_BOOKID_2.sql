SELECT 
  TRADE_ID,
  ACCEPT_MONTH,
  USER_ID,
  SERIAL_NUMBER,
  PSPT_TYPE_CODE,
  PSPT_ID,
  CUST_NAME,
  CONTACT_PHONE,
  IN_MOD_CODE,
  BOOK_TYPE_CODE,
  BOOK_TYPE,
  TO_CHAR(BOOK_DATE, 'YYYY-MM-DD HH24:mi:ss') AS BOOK_DATE,
  BOOK_STATUS,
  BOOK_PHONE,
  GOODS_ID,
  TO_CHAR(BOOK_END_DATE, 'YYYY-MM-DD HH24:mi:ss') AS BOOK_END_DATE,
  TO_CHAR(DOOR_END_DATE, 'YYYY-MM-DD HH24:mi:ss') AS DOOR_END_DATE,
  TRADE_STAFF_ID,
  TRADE_DEPART_ID,
  TRADE_CITY_CODE,
  TRADE_EPARCHY_CODE,
  RSRV_NUM1,
  RSRV_NUM2,
  RSRV_NUM3,
  RSRV_NUM4,
  RSRV_NUM5,
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
  RSRV_STR11,
  RSRV_STR12,
  RSRV_STR13,
  RSRV_STR14,
  RSRV_STR15,
  RSRV_STR16,
  RSRV_STR17,
  RSRV_STR18,
  RSRV_STR19,
  RSRV_STR20,
  RSRV_STR21,
  RSRV_STR22,
  RSRV_STR23,
  RSRV_STR24,
  RSRV_STR25,
  RSRV_STR26,
  RSRV_STR27,
  RSRV_STR28,
  RSRV_STR29,
  RSRV_STR30,
  TO_CHAR(RSRV_DATE1, 'YYYY-MM-DD HH24:mi:ss') AS DEAL_DATE,
  TO_CHAR(RSRV_DATE2, 'YYYY-MM-DD HH24:mi:ss') AS RSRV_DATE2,
  TO_CHAR(RSRV_DATE3, 'YYYY-MM-DD HH24:mi:ss') AS RSRV_DATE3,
  RSRV_TAG1,
  RSRV_TAG2,
  RSRV_TAG3,
  REMARK
  FROM TF_B_TRADE_BOOK T
 WHERE 1 = 1
   AND T.SERIAL_NUMBER = :SERIAL_NUMBER
   AND T.BOOK_DATE >= TO_DATE(:BOOK_DATE, 'YYYY-MM-DD hh24:mi:ss')
   AND T.BOOK_DATE <= TO_DATE(:BOOK_END_DATE, 'YYYY-MM-DD HH24:mi:ss')
 ORDER BY BOOK_DATE DESC