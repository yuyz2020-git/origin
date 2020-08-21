INSERT INTO TF_F_USER_RES(
PARTITION_ID, USER_ID, USER_ID_A, RES_TYPE_CODE, RES_CODE, IMSI, KI, INST_ID, CAMPN_ID, START_DATE, END_DATE, UPDATE_TIME, UPDATE_STAFF_ID, UPDATE_DEPART_ID, REMARK, RSRV_NUM1, RSRV_NUM2, RSRV_NUM3, RSRV_NUM4, RSRV_NUM5, RSRV_STR1, RSRV_STR2, RSRV_STR3, RSRV_STR4, RSRV_STR5, RSRV_DATE1, RSRV_DATE2, RSRV_DATE3, RSRV_TAG1, RSRV_TAG2, RSRV_TAG3) 
SELECT 
MOD(TO_NUMBER(:USER_ID),10000),  TO_NUMBER(:USER_ID), USER_ID_A, RES_TYPE_CODE, RES_CODE, IMSI, KI, INST_ID,  CAMPN_ID,  START_DATE,  END_DATE, UPDATE_TIME, UPDATE_STAFF_ID, UPDATE_DEPART_ID, REMARK, RSRV_NUM1, RSRV_NUM2, RSRV_NUM3,  RSRV_NUM4, RSRV_NUM5, RSRV_STR1, RSRV_STR2, RSRV_STR3, RSRV_STR4, RSRV_STR5,  RSRV_DATE1,  RSRV_DATE2,  RSRV_DATE3, RSRV_TAG1, RSRV_TAG2, RSRV_TAG3
FROM tf_b_trade_res
   WHERE trade_id = TO_NUMBER(:TRADE_ID)
   AND (modify_tag = '0' OR  modify_tag = '3')