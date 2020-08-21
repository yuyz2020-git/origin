INSERT INTO tf_b_trade_plat_order
  (PARTITION_ID,
   TRADE_ID,
   USER_ID,
   SERIAL_NUMBER,
   BIZ_CODE,
   SP_CODE,
   PRODUCT_NO,
   BIZ_TYPE_CODE,
   ORG_DOMAIN,
   OPR_SOURCE,
   BIZ_STATE_CODE,
   START_DATE,
   END_DATE,
   FIRST_DATE,
   FIRST_DATE_MON,
   GIFT_SERIAL_NUMBER,
   GIFT_USER_ID,
   BILL_TYPE,
   PRICE,
   SUBSCRIBE_ID,
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
   RSRV_DATE4,
   RSRV_DATE5,
   REMARK,
   UPDATE_STAFF_ID,
   UPDATE_DEPART_ID,
   UPDATE_TIME,
   OPER_CODE)
  SELECT MOD(TO_NUMBER(:TRADE_ID),10000),
         :TRADE_ID,
         to_char(user_id) user_id,
         serial_number,
         biz_code,
         sp_code,
         product_no,
         biz_type_code,
         org_domain,
         opr_source,
         biz_state_code,
         start_date,
         to_date(:END_DATE, 'yyyy-mm-dd hh24:mi:ss') end_date,
         first_date,
         first_date_mon,
         gift_serial_number,
         gift_user_id,
         bill_type,
         price,
         to_char(subscribe_id) subscribe_id,
         rsrv_num1,
         rsrv_num2,
         rsrv_num3,
         to_char(rsrv_num4) rsrv_num4,
         to_char(rsrv_num5) rsrv_num5,
         rsrv_str1,
         rsrv_str2,
         rsrv_str3,
         rsrv_str4,
         rsrv_str5,
         rsrv_str6,
         rsrv_str7,
         rsrv_str8,
         rsrv_str9,
         rsrv_str10,
         rsrv_date1,
         rsrv_date2,
         rsrv_date3,
         rsrv_date4,
         rsrv_date5,
         remark,
         update_staff_id,
         update_depart_id,
         update_time,
         :OPER_CODE
    FROM tf_f_user_plat_order
    WHERE partition_id=MOD(TO_NUMBER(:USER_ID),10000)
      AND user_id=TO_NUMBER(:USER_ID)
      AND biz_code=:BIZ_CODE
      AND sysdate between start_date and end_date