UPDATE tf_f_relation_blacklist
   SET end_date=SYSDATE  
 WHERE user_id_b=TO_NUMBER(:USER_ID_B)
   AND user_id_a=TO_NUMBER(:USER_ID_A)
   AND (relation_type_code=:RELATION_TYPE_CODE OR relation_type_code='ZZ')
   AND start_date<=SYSDATE 
   AND end_date>=SYSDATE