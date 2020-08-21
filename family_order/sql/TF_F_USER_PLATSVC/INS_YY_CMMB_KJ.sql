INSERT INTO TF_F_USER_PLATSVC
  (PARTITION_ID,
   USER_ID,
   PRODUCT_ID,
   PACKAGE_ID,
   SERVICE_ID,
   SERIAL_NUMBER,
   SP_CODE,
   BIZ_CODE,
   BIZ_TYPE_CODE,
   BIZ_STATE_CODE,
   PRODUCT_NO,
   ORG_DOMAIN,
   OPER_CODE,      
   OPR_SOURCE,
   BILL_TYPE,
   PRICE,
   FIRST_DATE,
   FIRST_DATE_MON,
   GIFT_SERIAL_NUMBER,
   GIFT_USER_ID,
   SUBSCRIBE_ID,
   START_DATE,
   END_DATE,
   UPDATE_TIME,
   UPDATE_STAFF_ID,
   UPDATE_DEPART_ID,
   REMARK,
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
   RSRV_DATE1,
   RSRV_DATE2,
   RSRV_DATE3,
   RSRV_TAG1,
   RSRV_TAG2,
   RSRV_TAG3)
  SELECT MOD(USER_ID, 10000),
         USER_ID,
         PRODUCT_ID,
         PACKAGE_ID,
         SERVICE_ID,
         SERIAL_NUMBER,
         SP_CODE,
         BIZ_CODE,
         BIZ_TYPE_CODE,
         BIZ_STATE_CODE,
         PRODUCT_NO,
         ORG_DOMAIN,
         OPER_CODE,
         OPR_SOURCE,
         BILL_TYPE,
         PRICE,
         FIRST_DATE,
         FIRST_DATE_MON,
         GIFT_SERIAL_NUMBER,
         GIFT_USER_ID,
         :TRADE_ID,
         to_date(:START_DATE,'YYYY-MM-DD hh24:mi:ss'),
         END_DATE,
         SYSDATE,
         UPDATE_STAFF_ID,
         UPDATE_DEPART_ID,
         REMARK,
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
         RSRV_DATE1,
         RSRV_DATE2,
         RSRV_DATE3,
         RSRV_TAG1,
         RSRV_TAG2,
         RSRV_TAG3
    FROM TF_B_TRADE_PLATSVC
   WHERE ACCEPT_MONTH = TO_NUMBER(SUBSTR(:TRADE_ID, 5, 2))
     AND TRADE_ID = :TRADE_ID
     AND USER_ID = :USER_ID
     AND SERVICE_ID = :SERVICE_ID
     AND OPER_CODE = :OPER_CODE