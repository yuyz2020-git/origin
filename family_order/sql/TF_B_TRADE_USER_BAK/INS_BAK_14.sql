INSERT INTO TF_B_TRADE_SALE_ACTIVE_BAK (TRADE_ID,ACCEPT_MONTH,PARTITION_ID,USER_ID,SERIAL_NUMBER,SERIAL_NUMBER_B,PRODUCT_MODE,PRODUCT_ID,PRODUCT_NAME,PACKAGE_ID,PACKAGE_NAME,CAMPN_ID,CAMPN_CODE,CAMPN_NAME,CAMPN_TYPE,OPER_FEE,FOREGIFT,ADVANCE_PAY,SCORE_CHANGED,CREDIT_VALUE,MONTHS,END_MODE,ACTOR_PSPT_ID,ACTOR_PSPT_TYPE_CODE,ACTOR_PHONE,ACTOR_NAME,APPR_STAFF_ID,APPR_TIME,OUT_NET_PHONE,CONTRACT_ID,PROCESS_TAG,ACCEPT_DATE,TRADE_STAFF_ID,RELATION_TRADE_ID,CANCEL_DATE,CANCEL_STAFF_ID,CANCEL_CAUSE,START_DATE,END_DATE,UPDATE_TIME,UPDATE_STAFF_ID,UPDATE_DEPART_ID,REMARK,RSRV_NUM1,RSRV_NUM2,RSRV_NUM3,RSRV_NUM4,RSRV_NUM5,RSRV_STR1,RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5,RSRV_STR6,RSRV_STR7,RSRV_STR8,RSRV_STR9,RSRV_STR10,RSRV_STR11,RSRV_STR12,RSRV_STR13,RSRV_STR14,RSRV_STR15,RSRV_STR16,RSRV_STR17,RSRV_STR18,RSRV_STR19,RSRV_STR20,RSRV_STR21,RSRV_STR22,RSRV_STR23,RSRV_STR24,RSRV_STR25,RSRV_DATE1,RSRV_DATE2,RSRV_DATE3,RSRV_TAG1,RSRV_TAG2,RSRV_TAG3)
 SELECT TO_NUMBER(:TRADE_ID),TO_NUMBER(SUBSTR(:TRADE_ID, 5, 2)),PARTITION_ID,USER_ID,SERIAL_NUMBER,SERIAL_NUMBER_B,PRODUCT_MODE,PRODUCT_ID,PRODUCT_NAME,PACKAGE_ID,PACKAGE_NAME,CAMPN_ID,CAMPN_CODE,CAMPN_NAME,CAMPN_TYPE,OPER_FEE,FOREGIFT,ADVANCE_PAY,SCORE_CHANGED,CREDIT_VALUE,MONTHS,END_MODE,ACTOR_PSPT_ID,ACTOR_PSPT_TYPE_CODE,ACTOR_PHONE,ACTOR_NAME,APPR_STAFF_ID,APPR_TIME,OUT_NET_PHONE,CONTRACT_ID,PROCESS_TAG,ACCEPT_DATE,TRADE_STAFF_ID,RELATION_TRADE_ID,CANCEL_DATE,CANCEL_STAFF_ID,CANCEL_CAUSE,START_DATE,END_DATE,UPDATE_TIME,UPDATE_STAFF_ID,UPDATE_DEPART_ID,REMARK,RSRV_NUM1,RSRV_NUM2,RSRV_NUM3,RSRV_NUM4,RSRV_NUM5,RSRV_STR1,RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5,RSRV_STR6,RSRV_STR7,RSRV_STR8,RSRV_STR9,RSRV_STR10,RSRV_STR11,RSRV_STR12,RSRV_STR13,RSRV_STR14,RSRV_STR15,RSRV_STR16,RSRV_STR17,RSRV_STR18,RSRV_STR19,RSRV_STR20,RSRV_STR21,RSRV_STR22,RSRV_STR23,RSRV_STR24,RSRV_STR25,RSRV_DATE1,RSRV_DATE2,RSRV_DATE3,RSRV_TAG1,RSRV_TAG2,RSRV_TAG3
 FROM TF_F_USER_SALE_ACTIVE a
 WHERE USER_ID = TO_NUMBER(:USER_ID)
 AND PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)