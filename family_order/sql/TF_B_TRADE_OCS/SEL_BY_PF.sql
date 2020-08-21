select TO_CHAR(TRADE_ID) TRADE_ID,ACCEPT_MONTH,INST_ID,TO_CHAR(USER_ID) USER_ID,USER_TYPE_CODE,MONITOR_TYPE,SERIAL_NUMBER,EPARCHY_CODE,STATUS,BIZ_TYPE,MONITOR_FLAG,MONITOR_RULE_CODE,START_DATE,END_DATE,MODIFY_TAG,UPDATE_TIME,UPDATE_STAFF_ID,UPDATE_DEPART_ID,REMARK,RSRV_NUM1,RSRV_NUM2,RSRV_NUM3,RSRV_NUM4,RSRV_NUM5,RSRV_STR1,RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5,RSRV_DATE1,RSRV_DATE2,RSRV_DATE3,RSRV_TAG1,RSRV_TAG2,RSRV_TAG3 
  from TF_B_TRADE_OCS 
 where trade_id = TO_NUMBER(:TRADE_ID)
   AND accept_month = TO_NUMBER(SUBSTR(:TRADE_ID,5,2))