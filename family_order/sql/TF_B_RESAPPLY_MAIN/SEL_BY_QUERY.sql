SELECT apply_no,to_char(apply_batch_id) apply_batch_id,apply_type_code,res_type_code,to_char(time_in,'yyyy-mm-dd hh24:mi:ss') time_in,apply_area_code,to_char(apply_date,'yyyy-mm-dd hh24:mi:ss') apply_date,apply_staff_id,apply_reason,apply_status,priority,audit_type_code,audit_state_code,cancel_reason,close_type_code,to_char(close_date,'yyyy-mm-dd hh24:mi:ss') close_date,close_staff_id,remark,rsrv_tag1,rsrv_tag2,rsrv_tag3,to_char(rsrv_date1,'yyyy-mm-dd hh24:mi:ss') rsrv_date1,to_char(rsrv_date2,'yyyy-mm-dd hh24:mi:ss') rsrv_date2,to_char(rsrv_date3,'yyyy-mm-dd hh24:mi:ss') rsrv_date3,rsrv_str1,rsrv_str2,rsrv_str3,rsrv_str4,rsrv_str5,rsrv_str6,rsrv_str7,rsrv_num1,rsrv_num2,rsrv_num3 
  FROM tf_b_resapply_main
 WHERE apply_date >= TO_DATE(:START_DATE,'yyyy-mm-dd hh24:mi:ss')
   AND apply_date <= TO_DATE(:END_DATE,'yyyy-mm-dd hh24:mi:ss')
   AND (:APPLY_TYPE_CODE is null or apply_type_code = :APPLY_TYPE_CODE)
   AND (:APPLY_NO is null or apply_no = :APPLY_NO)
   AND (:APPLY_BATCH_ID is null or apply_batch_id = :APPLY_BATCH_ID)
   AND (:APPLY_STAFF_ID is null or trim(apply_staff_id) = :APPLY_STAFF_ID)
   AND (:APPLY_AREA_CODE is null or apply_area_code = :APPLY_AREA_CODE)
   AND (:APPLY_STATUS is null or apply_status =:APPLY_STATUS )
   AND (:AUDIT_STATE_CODE is null or audit_state_code = :AUDIT_STATE_CODE)  
   AND (:AUDIT_TYPE_CODE is null or audit_type_code = :AUDIT_TYPE_CODE)