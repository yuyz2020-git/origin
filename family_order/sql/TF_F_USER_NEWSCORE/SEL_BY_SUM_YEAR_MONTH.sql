SELECT :USER_ID user_id,MOD(TO_NUMBER(:USER_ID),10000) partition_id,'' year_id,0 acyc_id,'' id_type,
'' score_type_code,to_char(sum(nvl(score,0))) score,'' rsrv_str1,'' rsrv_str2,'' rsrv_num1,'' rsrv_num2,'' rsrv_date1,'' rsrv_date2 
  FROM tf_f_user_newscore
 WHERE user_id=TO_NUMBER(:USER_ID)
   AND partition_id=MOD(TO_NUMBER(:USER_ID),10000)
   AND acyc_id<= (select acyc_id from td_a_acycpara where to_date(:RSRV_STR1,'YYYY-MM-DD') between acyc_start_time and acyc_end_time)