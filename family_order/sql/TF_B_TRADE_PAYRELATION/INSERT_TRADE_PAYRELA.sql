INSERT INTO tf_b_trade_payrelation(trade_id,accept_month,user_id,acct_id,payitem_code,acct_priority,user_priority,bind_type,start_cycle_id,end_cycle_id,act_tag,default_tag,limit_type,limit,complement_tag,update_time,UPDATE_STAFF_ID,UPDATE_DEPART_ID,REMARK,ADDUP_MONTHS,ADDUP_METHOD,INST_ID,MODIFY_TAG,RSRV_STR1,RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5,RSRV_STR6,RSRV_STR7,RSRV_STR8,RSRV_STR9,RSRV_STR10)
 VALUES(TO_NUMBER(:TRADE_ID),:ACCEPT_MONTH,TO_NUMBER(:USER_ID),TO_NUMBER(:ACCT_ID),:PAYITEM_CODE,:ACCT_PRIORITY,:USER_PRIORITY,:BIND_TYPE,:START_CYCLE_ID,:END_CYCLE_ID,:ACT_TAG,:DEFAULT_TAG,:LIMIT_TYPE,TO_NUMBER(:LIMIT),:COMPLEMENT_TAG,TO_DATE(:UPDATE_TIME,'yyyy-mm-dd hh24:mi:ss'),:UPDATE_STAFF_ID,:UPDATE_DEPART_ID,:REMARK,TO_NUMBER(:ADDUP_MONTHS),:ADDUP_METHOD,TO_NUMBER(:INST_ID),:MODIFY_TAG,:RSRV_STR1,:RSRV_STR2,:RSRV_STR3,:RSRV_STR4,:RSRV_STR5,:RSRV_STR6,:RSRV_STR7,:RSRV_STR8,:RSRV_STR9,:RSRV_STR10 )