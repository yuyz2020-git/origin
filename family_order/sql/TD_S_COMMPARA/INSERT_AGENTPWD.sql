INSERT INTO td_s_commpara(subsys_code,param_attr,param_code,param_name,para_code1,para_code2,start_date,end_date,eparchy_code,remark,update_staff_id,update_depart_id,update_time)
 VALUES(:SUBSYS_CODE,:PARAM_ATTR,:PARAM_CODE,:PARAM_NAME,:PARA_CODE1,:PARA_CODE2,TO_DATE('2008-05-01','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2050-01-01','YYYY-MM-DD HH24:MI:SS'),:EPARCHY_CODE,'代理商密码',:UPDATE_STAFF_ID,:UPDATE_DEPART_ID,SYSDATE)