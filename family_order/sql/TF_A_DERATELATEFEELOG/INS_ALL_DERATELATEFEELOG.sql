INSERT INTO tf_a_deratelatefeelog(eparchy_code,derate_id,user_id,partition_id,acyc_id,derate_mode,derate_fee,derate_per,derate_time,derate_eparchy_code,derate_city_code,derate_depart_id,derate_staff_id,derate_reason_code,remark)
 VALUES(:EPARCHY_CODE,TO_NUMBER(:DERATE_ID),TO_NUMBER(:USER_ID),:PARTITION_ID,:ACYC_ID,:DERATE_MODE,TO_NUMBER(:DERATE_FEE),TO_NUMBER(:DERATE_PER),TO_DATE(:DERATE_TIME,'YYYY-MM-DD HH24:MI:SS'),:DERATE_EPARCHY_CODE,:DERATE_CITY_CODE,:DERATE_DEPART_ID,:DERATE_STAFF_ID,:DERATE_REASON_CODE,:REMARK)