insert into TF_F_USER_WIDENET ( partition_id, USER_ID, STAND_ADDRESS, DETAIL_ADDRESS, SIGN_PATH, PORT_TYPE, INST_ID, START_DATE, END_DATE, UPDATE_TIME, UPDATE_STAFF_ID, UPDATE_DEPART_ID, REMARK, RSRV_NUM1, RSRV_NUM2, RSRV_NUM3, RSRV_NUM4, RSRV_NUM5, RSRV_STR1, RSRV_STR2, RSRV_STR3, RSRV_STR4, RSRV_STR5, RSRV_DATE1, RSRV_DATE2, RSRV_DATE3, RSRV_TAG1, RSRV_TAG2, RSRV_TAG3)
select MOD(TO_NUMBER(USER_ID), 10000), USER_ID, STAND_ADDRESS, DETAIL_ADDRESS, SIGN_PATH, PORT_TYPE, INST_ID, START_DATE, END_DATE, UPDATE_TIME, UPDATE_STAFF_ID, UPDATE_DEPART_ID, REMARK, RSRV_NUM1, RSRV_NUM2, RSRV_NUM3, RSRV_NUM4, RSRV_NUM5, RSRV_STR1, RSRV_STR2, RSRV_STR3, RSRV_STR4, RSRV_STR5, RSRV_DATE1, RSRV_DATE2, RSRV_DATE3, RSRV_TAG1, RSRV_TAG2, RSRV_TAG3
from TF_B_TRADE_WIDENET 
where TO_CHAR(TRADE_ID) = :TRADE_ID 
   AND MODIFY_TAG='0'
   AND ACCEPT_MONTH = TO_NUMBER(SUBSTR(:TRADE_ID, 5, 2))