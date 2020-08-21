UPDATE tf_f_user_newscore
   SET score=score-TO_NUMBER(:SCORE),rsrv_num2=TO_NUMBER(:SCORE)  
 WHERE user_id=TO_NUMBER(:USER_ID)
   AND partition_id=MOD(TO_NUMBER(:USER_ID),10000)
   AND year_id=:YEAR_ID
   AND acyc_id=:ACYC_ID
   AND id_type=:ID_TYPE
   AND score_type_code=:SCORE_TYPE_CODE