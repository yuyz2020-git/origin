INSERT INTO tf_b_resapply_main(apply_no,apply_batch_id,apply_type_code,res_type_code,time_in,apply_area_code,apply_date,apply_staff_id,apply_reason,apply_status,priority,audit_type_code,audit_state_code,cancel_reason,close_type_code,close_date,close_staff_id,remark,rsrv_tag1,rsrv_tag2,rsrv_tag3,rsrv_date1,rsrv_date2,rsrv_date3,rsrv_str1,rsrv_str2,rsrv_str3,rsrv_str4,rsrv_str5,rsrv_str6,rsrv_str7,rsrv_num1,rsrv_num2,rsrv_num3)
 VALUES(:APPLY_NO,TO_NUMBER(:APPLY_BATCH_ID),:APPLY_TYPE_CODE,:RES_TYPE_CODE,sysdate,:APPLY_AREA_CODE,decode(TO_DATE(:APPLY_DATE,'yyyy-mm-dd hh24:mi:ss'),null,sysdate,TO_DATE(:APPLY_DATE,'yyyy-mm-dd hh24:mi:ss')),:APPLY_STAFF_ID,:APPLY_REASON,:APPLY_STATUS,:PRIORITY,:AUDIT_TYPE_CODE,0,'','','','',:REMARK,'','','',sysdate,null,null,:APPLY_STOCK_ID,:OPER_STAFF_ID,'','','','','',null,null,null)