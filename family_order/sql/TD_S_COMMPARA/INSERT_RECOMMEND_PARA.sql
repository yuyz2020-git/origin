INSERT INTO td_s_commpara(subsys_code,param_attr,param_code,param_name,para_code1,para_code2,para_code3,para_code4,para_code5,para_code6,para_code7,para_code8,para_code9,para_code10,para_code20,start_date,end_date,eparchy_code,remark,update_staff_id,update_depart_id,update_time)
 VALUES(:SUBSYS_CODE,:PARAM_ATTR,:PARAM_CODE,:PARAM_NAME,:PARA_CODE1,:PARA_CODE2,:PARA_CODE3,:PARA_CODE4,:PARA_CODE5,:PARA_CODE6,:PARA_CODE7,:PARA_CODE8,:PARA_CODE9,:PARA_CODE10,:PARA_CODE20,TO_DATE(:START_DATE,'YYYY-MM-DD HH24:MI:SS'),TO_DATE(:END_DATE,'YYYY-MM-DD HH24:MI:SS'),:EPARCHY_CODE,:REMARK,:UPDATE_STAFF_ID,:UPDATE_DEPART_ID,TO_DATE(:UPDATE_TIME,'YYYY-MM-DD HH24:MI:SS'))