INSERT INTO tf_f_user_widenet
  (PARTITION_ID,
   USER_ID,
   STAND_ADDRESS,
   DETAIL_ADDRESS,
   SIGN_PATH,
   PORT_TYPE,
   ACCT_PASSWD,
   STAND_ADDRESS_CODE,
   PHONE,
   CONTACT,
   CONTACT_PHONE,
   INST_ID,
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
   RSRV_DATE1,
   RSRV_DATE2,
   RSRV_DATE3,
   RSRV_TAG1,
   RSRV_TAG2,
   RSRV_TAG3)
  select mod(USER_ID, 10000),
         USER_ID,
         STAND_ADDRESS,
         DETAIL_ADDRESS,
         SIGN_PATH,
         PORT_TYPE,
         ACCT_PASSWD,
         STAND_ADDRESS_CODE,
         PHONE,
         CONTACT,
         CONTACT_PHONE,         
         INST_ID,
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
         RSRV_DATE1,
         RSRV_DATE2,
         RSRV_DATE3,
         RSRV_TAG1,
         RSRV_TAG2,
         RSRV_TAG3
    from tf_b_trade_widenet
   where trade_id = to_number(:TRADE_ID)