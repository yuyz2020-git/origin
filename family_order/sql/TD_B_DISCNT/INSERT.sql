INSERT INTO td_b_discnt(discnt_code,discnt_name,discnt_explain,b_discnt_code,a_discnt_code,obj_type_code,enable_tag,define_months,months,discnt_type_code,start_date,end_date,tag_set,rsrv_str1,rsrv_str2,rsrv_str3,rsrv_str4,rsrv_str5,update_staff_id,update_depart_id,update_time)
 VALUES(:DISCNT_CODE,:DISCNT_NAME,:DISCNT_EXPLAIN,:B_DISCNT_CODE,:A_DISCNT_CODE,:OBJ_TYPE_CODE,:ENABLE_TAG,:DEFINE_MONTHS,:MONTHS,:DISCNT_TYPE_CODE,TO_DATE(:START_DATE,'YYYY-MM-DD HH24:MI:SS'),TO_DATE(:END_DATE,'YYYY-MM-DD HH24:MI:SS'),:TAG_SET,:RSRV_STR1,:RSRV_STR2,:RSRV_STR3,:RSRV_STR4,:RSRV_STR5,:UPDATE_STAFF_ID,:UPDATE_DEPART_ID,sysdate)