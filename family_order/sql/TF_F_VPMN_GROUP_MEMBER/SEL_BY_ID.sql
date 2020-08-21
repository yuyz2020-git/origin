SELECT to_char(user_id) user_id,vpmn_group_id,serial_number,to_char(member_user_id) member_user_id,to_char(start_date,'yyyy-mm-dd hh24:mi:ss') start_date,to_char(end_date,'yyyy-mm-dd hh24:mi:ss') end_date 
  FROM tf_f_vpmn_group_member
 WHERE user_id=TO_NUMBER(:USER_ID)
   AND vpmn_group_id=:VPMN_GROUP_ID and sysdate between start_date and end_date