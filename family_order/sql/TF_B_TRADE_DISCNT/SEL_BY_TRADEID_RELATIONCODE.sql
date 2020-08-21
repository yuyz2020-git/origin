select to_char(TRADE_ID) TRADE_ID,
       ACCEPT_MONTH,
       to_char(USER_ID) USER_ID,
       to_char(USER_ID_A) USER_ID_A,
       DISCNT_CODE,
       SPEC_TAG,
       RELATION_TYPE_CODE,
       to_char(INST_ID) INST_ID,
       to_char(CAMPN_ID) CAMPN_ID,
       START_DATE,
       END_DATE,
       MODIFY_TAG,
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
  FROM tf_b_trade_discnt
 WHERE trade_id = to_number(:TRADE_ID)
   AND user_id = to_number(:USER_ID)
   and accept_month = TO_NUMBER(SUBSTR(:TRADE_ID, 5, 2))
   AND relation_type_code = '20'
