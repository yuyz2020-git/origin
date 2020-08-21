SELECT to_char(user_id) user_id,vpmn_group_id,serial_number,to_char(member_user_id) member_user_id,to_char(start_date,'yyyy-mm-dd hh24:mi:ss') start_date,to_char(end_date,'yyyy-mm-dd hh24:mi:ss') end_date 
  FROM tf_f_vpmn_group_member
 WHERE serial_number=:SERIAL_NUMBER
   AND member_user_id=TO_NUMBER(:MEMBER_USER_ID)
   AND end_date>sysdate