INSERT INTO tf_b_resapply_detail          
(apply_detail_no,res_type_code,start_res_no,end_res_no,res_kind_code,capacity_type_code,apply_num,
factory_code,brand_code,audit_no,audit_staff_id,audit_depart_id,audit_date,audit_remark,audit_type_code,
remind_code_a,remind_date_a,remind_code_b,remind_date_b,apply_no,apply_batch_id,remark,rsrv_tag1,rsrv_tag2,
rsrv_tag3,rsrv_date1,rsrv_date2,rsrv_date3,rsrv_str1,rsrv_str2,rsrv_str3,rsrv_str4,rsrv_str5,rsrv_str6,
rsrv_str7,rsrv_num1,rsrv_num2,rsrv_num3)
VALUES(:APPLY_DETAIL_NO,:RES_TYPE_CODE,:START_RES_NO,:END_RES_NO,:RES_KIND_CODE,:CAPACITY_TYPE_CODE,
TO_NUMBER(:APPLY_NUM),:FACTORY_CODE,:BRAND_CODE,:AUDIT_NO,'','','','','0',:REMIND_CODE_A,
TO_DATE(:REMIND_DATE_A,'YYYY-MM-DD HH24:MI:SS'),:REMIND_CODE_B,
TO_DATE(:REMIND_DATE_B,'YYYY-MM-DD HH24:MI:SS'),:APPLY_NO,TO_NUMBER(:APPLY_BATCH_ID),
:REMARK,'','','','','','',:RSRV_STR1,:RSRV_STR2,:RSRV_STR3,:RSRV_STR4,:RSRV_STR5,:RSRV_STR6,:RSRV_STR7,'','','')