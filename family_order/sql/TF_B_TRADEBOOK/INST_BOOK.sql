INSERT INTO TF_B_TRADE_BOOK
  (TRADE_ID,
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
   BOOK_DATE,
   BOOK_STATUS,
   BOOK_PHONE,
   GOODS_ID,
   BOOK_END_DATE,
   DOOR_END_DATE,
   TRADE_STAFF_ID,
   TRADE_DEPART_ID,
   TRADE_CITY_CODE,
   TRADE_EPARCHY_CODE,
   REMARK,
   RSRV_DATE2,
   RSRV_STR1,
   RSRV_STR2)
VALUES
  (:TRADE_ID,
   :ACCEPT_MONTH,
   :USER_ID,
   :SERIAL_NUMBER,
   :PSPT_TYPE_CODE,
   :PSPT_ID,
   :CUST_NAME,
   :CONTACT_PHONE,
   :IN_MOD_CODE,
   :BOOK_TYPE_CODE,
   :BOOK_TYPE,
   TO_DATE(:BOOK_DATE,'YYYY-MM-DD hh24:mi:ss'),
   :BOOK_STATUS,
   :BOOK_PHONE,
   :GOODS_ID,
   TO_DATE(:BOOK_END_DATE,'YYYY-MM-DD hh24:mi:ss'),
   :DOOR_END_DATE,
   :TRADE_STAFF_ID,
   :TRADE_DEPART_ID,
   :TRADE_CITY_CODE,
   :TRADE_EPARCHY_CODE,
   :REMARK,
   SYSDATE,
   :DEPART_NAME,
   :TRADE_TYPE)