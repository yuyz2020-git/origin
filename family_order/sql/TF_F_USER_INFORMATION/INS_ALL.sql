INSERT INTO tf_f_user_information(trade_id,user_id,notice_content,trade_attr,enable_tag,remark,start_date,end_date,update_staff_id,update_depart_id,update_time)
 VALUES(TO_NUMBER(:TRADE_ID),TO_NUMBER(:USER_ID),:NOTICE_CONTENT,:TRADE_ATTR,:ENABLE_TAG,:REMARK,TO_DATE(:START_DATE,'YYYY-MM-DD HH24:MI:SS'),TO_DATE(:END_DATE,'YYYY-MM-DD HH24:MI:SS'),:UPDATE_STAFF_ID,:UPDATE_DEPART_ID,TO_DATE(:UPDATE_TIME,'YYYY-MM-DD HH24:MI:SS'))