SELECT to_char(user_id) user_id,to_char(old_score_value) old_score_value,staff_id,to_char(update_time,'yyyy-mm-dd hh24:mi:ss') update_time,remark 
  FROM tf_f_user_oldscore
 WHERE user_id = (select user_id from tf_f_user where remove_tag='0' and serial_number=to_char(:SERIAL_NUMBER))