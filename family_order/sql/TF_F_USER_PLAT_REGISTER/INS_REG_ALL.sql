INSERT INTO tf_f_user_plat_register(partition_id,user_id,serial_number,biz_type_code,org_domain,opr_source,passwd,biz_state_code,open_tag,svc_level,start_date,end_date,rsrv_num1,rsrv_num2,rsrv_num3,rsrv_num4,rsrv_num5,rsrv_str1,rsrv_str2,rsrv_str3,rsrv_str4,rsrv_str5,rsrv_date1,rsrv_date2,rsrv_date3,remark,update_staff_id,update_depart_id,update_time)
 VALUES(MOD(TO_NUMBER(:USER_ID),10000),TO_NUMBER(:USER_ID),:SERIAL_NUMBER,:BIZ_TYPE_CODE,:ORG_DOMAIN,:OPR_SOURCE,:PASSWD,:BIZ_STATE_CODE,:OPEN_TAG,:SVC_LEVEL,TO_DATE(:START_DATE,'YYYY-MM-DD HH24:MI:SS'),TO_DATE(:END_DATE,'YYYY-MM-DD HH24:MI:SS'),:RSRV_NUM1,:RSRV_NUM2,:RSRV_NUM3,TO_NUMBER(:RSRV_NUM4),TO_NUMBER(:RSRV_NUM5),:RSRV_STR1,:RSRV_STR2,:RSRV_STR3,:RSRV_STR4,:RSRV_STR5,TO_DATE(:RSRV_DATE1,'YYYY-MM-DD HH24:MI:SS'),TO_DATE(:RSRV_DATE2,'YYYY-MM-DD HH24:MI:SS'),TO_DATE(:RSRV_DATE3,'YYYY-MM-DD HH24:MI:SS'),:REMARK,:UPDATE_STAFF_ID,:UPDATE_DEPART_ID,sysdate)