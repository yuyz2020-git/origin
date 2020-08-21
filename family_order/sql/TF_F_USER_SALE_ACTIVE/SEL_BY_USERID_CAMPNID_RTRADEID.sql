select t.PARTITION_ID, t.USER_ID, t.SERIAL_NUMBER, t.SERIAL_NUMBER_B, t.PRODUCT_MODE, t.PRODUCT_ID, t.PRODUCT_NAME, t.PACKAGE_ID, t.PACKAGE_NAME, t.CAMPN_ID, t.CAMPN_CODE, t.CAMPN_NAME, t.CAMPN_TYPE, t.OPER_FEE, t.FOREGIFT, t.ADVANCE_PAY, t.SCORE_CHANGED, t.CREDIT_VALUE, t.MONTHS, t.END_MODE, t.ACTOR_PSPT_ID, t.ACTOR_PSPT_TYPE_CODE, t.ACTOR_PHONE, t.ACTOR_NAME, t.APPR_STAFF_ID, t.APPR_TIME, t.OUT_NET_PHONE, t.CONTRACT_ID, t.PROCESS_TAG, t.ACCEPT_DATE, t.TRADE_STAFF_ID, t.RELATION_TRADE_ID, t.CANCEL_DATE, t.CANCEL_STAFF_ID, t.CANCEL_CAUSE, t.START_DATE, t.END_DATE, t.UPDATE_TIME, t.UPDATE_STAFF_ID, t.UPDATE_DEPART_ID, t.REMARK, t.RSRV_NUM1, t.RSRV_NUM2, t.RSRV_NUM3, t.RSRV_NUM4, t.RSRV_NUM5, t.RSRV_STR1, t.RSRV_STR2, t.RSRV_STR3, t.RSRV_STR4, t.RSRV_STR5, t.RSRV_STR6, t.RSRV_STR7, t.RSRV_STR8, t.RSRV_STR9, t.RSRV_STR10, t.RSRV_STR11, t.RSRV_STR12, t.RSRV_STR13, t.RSRV_STR14, t.RSRV_STR15, t.RSRV_STR16, t.RSRV_STR17, t.RSRV_STR18, t.RSRV_STR19, t.RSRV_STR20, t.RSRV_STR21, t.RSRV_STR22, t.RSRV_STR23, t.RSRV_STR24, t.RSRV_STR25, t.RSRV_DATE1, t.RSRV_DATE2, t.RSRV_DATE3, t.RSRV_TAG1, t.RSRV_TAG2, t.RSRV_TAG3, t.INST_ID 
  from TF_F_USER_SALE_ACTIVE t 
    where t.PARTITION_ID = Mod(:USER_ID,10000) 
      and t.USER_ID = :USER_ID 
      and t.RELATION_TRADE_ID = :RELATION_TRADE_ID 
      and t.CAMPN_ID = :CAMPN_ID 
       