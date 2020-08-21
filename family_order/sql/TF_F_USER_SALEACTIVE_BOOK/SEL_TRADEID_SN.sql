﻿SELECT A.PARTITION_ID,
       A.USER_ID,
       A.SERIAL_NUMBER,
       A.SERIAL_NUMBER_B,
       A.PRODUCT_MODE,
       A.PRODUCT_ID,
       A.PRODUCT_NAME,
       A.PACKAGE_ID,
       A.PACKAGE_NAME,
       A.CAMPN_ID,
       A.CAMPN_CODE,
       A.CAMPN_NAME,
       A.CAMPN_TYPE,
       A.PRODUCT_ID_B,
       A.PACKAGE_ID_B,
       A.ACCEPT_TRADE_ID,
       A.DEAL_STATE_CODE,
       A.OPER_FEE,
       A.FOREGIFT,
       A.ADVANCE_PAY,
       A.SCORE_CHANGED,
       A.CREDIT_VALUE,
       A.MONTHS,
       A.PROCESS_TAG,
       A.ACCEPT_DATE,
       A.TRADE_STAFF_ID,
       A.RELATION_TRADE_ID,
       A.CANCEL_DATE,
       A.CANCEL_STAFF_ID,
       A.CANCEL_CAUSE,
       A.START_DATE,
       A.END_DATE,
       A.UPDATE_TIME,
       A.UPDATE_STAFF_ID,
       A.UPDATE_DEPART_ID,
       A.REMARK,
       A.RSRV_NUM1,
       A.RSRV_NUM2,
       A.RSRV_NUM3,
       A.RSRV_NUM4,
       A.RSRV_NUM5,
       A.RSRV_STR1,
       A.RSRV_STR2,
       A.RSRV_STR3,
       A.RSRV_STR4,
       A.RSRV_STR5,
       A.RSRV_STR6,
       A.RSRV_STR7,
       A.RSRV_STR8,
       A.RSRV_STR9,
       A.RSRV_STR10,
       A.RSRV_STR11,
       A.RSRV_STR12,
       A.RSRV_STR13,
       A.RSRV_STR14,
       A.RSRV_STR15,
       A.RSRV_STR16,
       A.RSRV_STR17,
       A.RSRV_STR18,
       A.RSRV_STR19,
       A.RSRV_STR20,
       A.RSRV_STR21,
       A.RSRV_STR22,
       A.RSRV_STR23,
       A.RSRV_STR24,
       A.RSRV_STR25,
       A.RSRV_DATE1,
       A.RSRV_DATE2,
       A.RSRV_DATE3,
       A.RSRV_TAG1,
       A.RSRV_TAG2,
       A.RSRV_TAG3
  FROM TF_F_USER_SALEACTIVE_BOOK A
 WHERE A.PROCESS_TAG = '0'
   AND A.DEAL_STATE_CODE = '0'
   AND NVL(A.RSRV_DATE2, A.END_DATE) > SYSDATE
   AND A.ACCEPT_TRADE_ID = :TRADE_ID 
   AND A.SERIAL_NUMBER = :SERIAL_NUMBER