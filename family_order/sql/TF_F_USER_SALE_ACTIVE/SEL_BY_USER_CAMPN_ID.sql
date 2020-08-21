SELECT PARTITION_ID,
       TO_CHAR(USER_ID) USER_ID,
       SERIAL_NUMBER,
       SERIAL_NUMBER_B,
       PRODUCT_MODE,
       PRODUCT_ID,
       PRODUCT_NAME,
       PACKAGE_ID,
       PACKAGE_NAME,
       TO_CHAR(CAMPN_ID) CAMPN_ID,
       CAMPN_CODE,
       CAMPN_NAME,
       CAMPN_TYPE,
       TO_CHAR(OPER_FEE) OPER_FEE,
       TO_CHAR(FOREGIFT) FOREGIFT,
       TO_CHAR(ADVANCE_PAY) ADVANCE_PAY,
       TO_CHAR(SCORE_CHANGED) SCORE_CHANGED,
       TO_CHAR(CREDIT_VALUE) CREDIT_VALUE,
       MONTHS,
       END_MODE,
       ACTOR_PSPT_ID,
       ACTOR_PSPT_TYPE_CODE,
       ACTOR_PHONE,
       ACTOR_NAME,
       APPR_STAFF_ID,
       TO_CHAR(APPR_TIME, 'yyyy-mm-dd hh24:mi:ss') APPR_TIME,
       OUT_NET_PHONE,
       CONTRACT_ID,
       PROCESS_TAG,
       TO_CHAR(ACCEPT_DATE, 'yyyy-mm-dd hh24:mi:ss') ACCEPT_DATE,
       TRADE_STAFF_ID,
       TO_CHAR(RELATION_TRADE_ID) RELATION_TRADE_ID,
       TO_CHAR(CANCEL_DATE, 'yyyy-mm-dd hh24:mi:ss') CANCEL_DATE,
       CANCEL_STAFF_ID,
       CANCEL_CAUSE,
       TO_CHAR(START_DATE, 'yyyy-mm-dd hh24:mi:ss') START_DATE,
       TO_CHAR(END_DATE, 'yyyy-mm-dd hh24:mi:ss') END_DATE,
       TO_CHAR(UPDATE_TIME, 'yyyy-mm-dd hh24:mi:ss') UPDATE_TIME,
       UPDATE_STAFF_ID,
       UPDATE_DEPART_ID,
       REMARK,
       RSRV_NUM1,
       RSRV_NUM2,
       RSRV_NUM3,
       TO_CHAR(RSRV_NUM4) RSRV_NUM4,
       TO_CHAR(RSRV_NUM5) RSRV_NUM5,
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
       TO_CHAR(RSRV_DATE1, 'yyyy-mm-dd hh24:mi:ss') RSRV_DATE1,
       TO_CHAR(RSRV_DATE2, 'yyyy-mm-dd hh24:mi:ss') RSRV_DATE2,
       TO_CHAR(RSRV_DATE3, 'yyyy-mm-dd hh24:mi:ss') RSRV_DATE3,
       RSRV_TAG1,
       RSRV_TAG2,
       RSRV_TAG3
From tf_f_user_sale_active    
 WHERE user_id=TO_NUMBER(:USER_ID)
    And partition_id = Mod(:USER_ID,10000)
   AND (process_tag=:PROCESS_TAG OR :PROCESS_TAG='9')
   AND CAMPN_TYPE = :CAMPN_TYPE
   AND (SYSDATE < end_date AND :PROCESS_TAG='0' OR :PROCESS_TAG!='0')