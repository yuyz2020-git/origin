INSERT INTO tf_a_payrelation(partition_id,user_id,acct_id,payitem_code,acct_priority,user_priority,bind_type,start_cycle_id,end_cycle_id,default_tag,act_tag,limit_type,limit,complement_tag,update_staff_id,update_depart_id,update_time)
 VALUES(MOD(TO_NUMBER(:USER_ID),10000),TO_NUMBER(:USER_ID),TO_NUMBER(:ACCT_ID),:PAYITEM_CODE,:ACCT_PRIORITY,:USER_PRIORITY,:BIND_TYPE,:START_CYCLE_ID,:END_CYCLE_ID,:DEFAULT_TAG,:ACT_TAG,:LIMIT_TYPE,TO_NUMBER(:LIMIT),:COMPLEMENT_TAG,:UPDATE_STAFF_ID,:UPDATE_DEPART_ID,TO_DATE(:UPDATE_TIME,'YYYY-MM-DD HH24:MI:SS'))