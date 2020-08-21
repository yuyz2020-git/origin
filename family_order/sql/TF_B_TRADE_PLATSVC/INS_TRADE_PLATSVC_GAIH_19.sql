INSERT INTO TF_B_TRADE_PLATSVC
  (TRADE_ID,
   ACCEPT_MONTH,
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
  SELECT :TRADE_ID,
         SUBSTR(:TRADE_ID, 5, 2),
         USER_ID,
         PRODUCT_ID,
         PACKAGE_ID,
         SERVICE_ID,
         :SERIAL_NUMBER,
         SP_CODE,
         BIZ_CODE,
         BIZ_TYPE_CODE,
         BIZ_STATE_CODE,
         PRODUCT_NO,
         ORG_DOMAIN,
         DECODE(A.BIZ_TYPE_CODE||A.BIZ_CODE,'16+MAILMF','06','23IIC','06','72YDCY','06','17'),
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
         TO_DATE(:UPDATE_TIME, 'yyyy-mm-dd hh24:mi:ss'),
         :UPDATE_STAFF_ID,
         :UPDATE_DEPART_ID,
         '用户改号',
         DECODE(A.BIZ_TYPE_CODE,'10','7',DECODE(A.BIZ_TYPE_CODE||A.BIZ_CODE,'16+MAILMF','7','23IIC','7','72YDCY','7','2')),
         RSRV_NUM2,
         RSRV_NUM3,
         RSRV_NUM4,
         RSRV_NUM5,
         RSRV_STR1,
         :OLD_SERIAL_NUMBER,
         RSRV_STR3,
         RSRV_STR4,
         RSRV_STR5,
         RSRV_STR6,
         RSRV_STR7,
         '',
         RSRV_STR9,
         RSRV_STR10,
         RSRV_DATE1,
         RSRV_DATE2,
         RSRV_DATE3,
         RSRV_TAG1,
         DECODE(A.BIZ_TYPE_CODE||A.BIZ_CODE,'16+MAILMF','1','23IIC','1','72YDCY','1',DECODE(A.BIZ_TYPE_CODE,'78','0',RSRV_TAG2)),
         RSRV_TAG3
    FROM TF_F_USER_PLATSVC A
   WHERE PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)
     AND USER_ID = :USER_ID
     AND BIZ_STATE_CODE IN ('A')
     AND (A.BIZ_TYPE_CODE='19' OR A.BIZ_TYPE_CODE='10' OR A.BIZ_TYPE_CODE||A.BIZ_CODE IN('16+MAILMF','23IIC','72YDCY'))
     AND SYSDATE BETWEEN START_DATE AND END_DATE