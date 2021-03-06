select TRADE_ID,
       ACCEPT_MONTH,
       USER_ID,
       SERIAL_NUMBER,
       SERIAL_NUMBER_B,
       PRODUCT_MODE,
       PRODUCT_ID,
       PRODUCT_NAME,
       PACKAGE_ID,
       PACKAGE_NAME,
       CAMPN_ID,
       CAMPN_CODE,
       CAMPN_NAME,
       CAMPN_TYPE,
       BOOK_TYPE,
       DEVICE_BRAND_CODE,
       RES_CODE,
       DEVICE_BRAND,
       DEVICE_MODEL_CODE,
       DEVICE_MODEL,
       PRODUCT_ID_B,
       PACKAGE_ID_B,
       ACCEPT_TRADE_ID,
       DEAL_STATE_CODE,
       OPER_FEE,
       FOREGIFT,
       ADVANCE_PAY,
       SCORE_CHANGED,
       CREDIT_VALUE,
       MONTHS,
       PROCESS_TAG,
       MODIFY_TAG,
       TO_CHAR(ACCEPT_DATE, 'yyyy-MM-dd HH24:mi:ss') ACCEPT_DATE,
       TRADE_STAFF_ID,
       RELATION_TRADE_ID,
       TO_CHAR(CANCEL_DATE, 'yyyy-MM-dd HH24:mi:ss') CANCEL_DATE,
       CANCEL_STAFF_ID,
       CANCEL_CAUSE,
       INST_ID,
       TO_CHAR(START_DATE, 'yyyy-MM-dd HH24:mi:ss') START_DATE,
       TO_CHAR(END_DATE, 'yyyy-MM-dd HH24:mi:ss') END_DATE,
       TO_CHAR(UPDATE_TIME, 'yyyy-MM-dd HH24:mi:ss') UPDATE_TIME,
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
       RSRV_STR11,
       RSRV_STR12,
       RSRV_STR13,
       RSRV_STR14,
       RSRV_STR15,
       RSRV_STR16,
       RSRV_STR17,
       RSRV_STR18,
       RSRV_STR19,
       RSRV_STR20,
       RSRV_STR21,
       RSRV_STR22,
       RSRV_STR23,
       RSRV_STR24,
       RSRV_STR25,
       TO_CHAR(RSRV_DATE1, 'yyyy-MM-dd HH24:mi:ss') RSRV_DATE1,
       TO_CHAR(RSRV_DATE2, 'yyyy-MM-dd HH24:mi:ss') RSRV_DATE2,
       TO_CHAR(RSRV_DATE3, 'yyyy-MM-dd HH24:mi:ss') RSRV_DATE3,
       RSRV_TAG1,
       RSRV_TAG2,
       RSRV_TAG3
  from TF_B_TRADE_SALEACTIVE_BOOK
 where TRADE_ID = :TRADE_ID
   and ACCEPT_MONTH = TO_NUMBER(SUBSTR(:TRADE_ID, 5, 2))
