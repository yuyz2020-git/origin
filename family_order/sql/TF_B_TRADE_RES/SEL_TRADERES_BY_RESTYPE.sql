SELECT   to_char(TRADE_ID) TRADE_ID, ACCEPT_MONTH, to_char(USER_ID) USER_ID, to_char(USER_ID_A) USER_ID_A, RES_TYPE_CODE, RES_CODE, IMSI, KI, to_char(INST_ID) INST_ID, to_char(CAMPN_ID) CAMPN_ID, to_char(START_DATE,'yyyy-mm-dd hh24:mi:ss') START_DATE, to_char(END_DATE,'yyyy-mm-dd hh24:mi:ss') END_DATE, MODIFY_TAG, to_char(UPDATE_TIME,'yyyy-mm-dd hh24:mi:ss') UPDATE_TIME, UPDATE_STAFF_ID, UPDATE_DEPART_ID, REMARK, RSRV_NUM1, RSRV_NUM2, RSRV_NUM3, to_char(RSRV_NUM4) RSRV_NUM4, to_char(RSRV_NUM5) RSRV_NUM5, RSRV_STR1, RSRV_STR2, RSRV_STR3, RSRV_STR4, RSRV_STR5, to_char(RSRV_DATE1,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE1, to_char(RSRV_DATE2,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE2, to_char(RSRV_DATE3,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE3, RSRV_TAG1, RSRV_TAG2, RSRV_TAG3
  FROM tf_b_trade_res
 WHERE trade_id = TO_NUMBER(:TRADE_ID)
   AND accept_month = TO_NUMBER(SUBSTR(:TRADE_ID,5,2))
   AND (modify_tag = '0' or modify_tag = '3')
   AND res_type_code = :RES_TYPE_CODE