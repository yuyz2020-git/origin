UPDATE tf_f_fixedfee_specinfo
   SET  modify_tag='2', TRADE_ID=:TRADE_ID,end_acyc_id=:END_ACYC_ID,update_time=TO_DATE(:UPDATE_TIME,'YYYY-MM-DD HH24:MI:SS'),update_depart_id=:UPDATE_DEPART_ID,update_staff_id=:UPDATE_STAFF_ID  
 WHERE user_id=TO_NUMBER(:USER_ID)
   AND user_mode=:USER_MODE
   AND end_acyc_id>to_char(sysdate,'YYYYMM')
   AND act_mode=:ACT_MODE
   AND service_id=:SERVICE_ID