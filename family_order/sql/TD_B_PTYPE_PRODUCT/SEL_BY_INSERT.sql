--IS_CACHE=Y
INSERT INTO td_b_ptype_product(product_type_code,product_id,start_date,end_date,update_staff_id,update_depart_id,update_time)
 VALUES(:PRODUCT_TYPE_CODE,:PRODUCT_ID,TO_DATE(:START_DATE,'YYYY-MM-DD HH24:MI:SS'),TO_DATE(:END_DATE,'YYYY-MM-DD HH24:MI:SS'),:UPDATE_STAFF_ID,:UPDATE_DEPART_ID,TO_DATE(:UPDATE_TIME,'YYYY-MM-DD HH24:MI:SS'))