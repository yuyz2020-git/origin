INSERT INTO tf_f_relation_cc(cust_id,obj_cust_id,relation_type_code,role_code_a,role_code_b,start_date,end_date,update_time,update_staff_id,update_depart_id,remark)
 VALUES(TO_NUMBER(:CUST_ID),TO_NUMBER(:OBJ_CUST_ID),:RELATION_TYPE_CODE,:ROLE_CODE_A,:ROLE_CODE_B,TO_DATE(:START_DATE,'YYYY-MM-DD HH24:MI:SS'),TO_DATE(:END_DATE,'YYYY-MM-DD HH24:MI:SS'),TO_DATE(:UPDATE_TIME,'YYYY-MM-DD HH24:MI:SS'),:UPDATE_STAFF_ID,:UPDATE_DEPART_ID,:REMARK)