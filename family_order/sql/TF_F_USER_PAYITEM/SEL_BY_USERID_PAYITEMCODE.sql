SELECT   
     PARTITION_ID, to_char(USER_ID) USER_ID, to_char(PLAN_ID) PLAN_ID, PAYITEM_CODE, BIND_TYPE, ACT_TAG, LIMIT_TYPE, to_char(LIMIT) LIMIT, COMPLEMENT_TAG, RULE_ID, START_CYCLE_ID, END_CYCLE_ID, to_char(UPDATE_TIME,'yyyy-mm-dd hh24:mi:ss') UPDATE_TIME, UPDATE_STAFF_ID, UPDATE_DEPART_ID, REMARK, RSRV_STR1, RSRV_STR2, RSRV_STR3, RSRV_STR4, RSRV_STR5, RSRV_STR6, RSRV_STR7, RSRV_STR8, RSRV_STR9, RSRV_STR10
 FROM TF_F_USER_PAYITEM
 WHERE USER_ID=:USER_ID 
  AND PARTITION_ID = MOD(TO_NUMBER(:USER_ID),10000)
  AND PLAN_ID=:PLAN_ID
  AND PAYITEM_CODE=:PAYITEM_CODE
  AND ACT_TAG='1'
  AND START_CYCLE_ID<=to_char(SYSDATE,'yyyyMMdd')
  AND END_CYCLE_ID>=to_char(SYSDATE,'yyyyMMdd')