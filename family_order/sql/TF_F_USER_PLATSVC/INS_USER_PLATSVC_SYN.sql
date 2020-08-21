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
   REMARK)
  SELECT :PARTITION_ID,
         :USER_ID,
         :PRODUCT_ID,
         :PACKAGE_ID,
         :SERVICE_ID,
         :SERIAL_NUMBER,
         :SP_CODE,
         :BIZ_CODE,
         :BIZ_TYPE_CODE,
         decode(:OPER_CODE,'04','N',:BIZ_STATE_CODE),
         :PRODUCT_NO,
         :ORG_DOMAIN,
         :OPER_CODE,
         :OPR_SOURCE,
         :BILL_TYPE,
         :PRICE,
         to_date(:FIRST_DATE,'YYYY-MM-DD HH24:MI:SS'),
         to_date(:FIRST_DATE_MON,'YYYY-MM-DD HH24:MI:SS'),
         :GIFT_SERIAL_NUMBER,
         :GIFT_USER_ID,
         :SUBSCRIBE_ID,
         to_date(:START_DATE,'YYYY-MM-DD HH24:MI:SS'),
         to_date(:END_DATE,'YYYY-MM-DD HH24:MI:SS'),
         to_date(:UPDATE_TIME,'YYYY-MM-DD HH24:MI:SS'),
         :UPDATE_STAFF_ID,
         :UPDATE_DEPART_ID,
         :REMARK
    FROM DUAL