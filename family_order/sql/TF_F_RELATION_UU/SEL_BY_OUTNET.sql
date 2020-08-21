SELECT partition_id
      ,to_char(user_id_a) user_id_a
      ,serial_number_a
      ,to_char(user_id_b) user_id_b
      ,serial_number_b
      ,relation_type_code
      ,role_code_a
      ,role_code_b
      ,orderno
      ,short_code
      ,to_char(start_date, 'yyyy-mm-dd hh24:mi:ss') start_date
      ,to_char(end_date, 'yyyy-mm-dd hh24:mi:ss') end_date
 FROM tf_f_relation_uu
 WHERE 1=1
 	AND user_id_a = :USER_ID_A
      AND serial_number_b = :SERIAL_NUMBER_B
      AND short_code = :SHORT_CODE
      AND relation_type_code = :RELATION_TYPE_CODE
      AND SYSDATE BETWEEN start_date + 0 AND end_date + 0