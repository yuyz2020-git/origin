SELECT T.BATCH_ID,
       T.SERIAL_NUMBER,
       T.PRODUCT_ID,
       T.PACKAGE_ID,
       T.ACCEPT_MONTH,
       T.IMPORT_TIME,
       T.ACCEPT_TIME,
       T.STATUS,
       T.TRADE_STAFF_ID,
       T.TRADE_DEPART_ID,
       T.TRADE_CITY_CODE,
       T.UPDATE_TIME,
       T.REQUEST_ID,
       T.RSRV_STR1,
       T.RSRV_STR2,
       T.RSRV_STR3,
       T.RSRV_STR4,
       T.RSRV_STR5
  FROM TF_B_SALEACTIVE_BAT T
 WHERE 1 = 1
   AND T.REQUEST_ID = :REQUEST_ID