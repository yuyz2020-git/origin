INSERT INTO tf_f_user_mbmp_plus(partition_id,user_id,serial_number,biz_type_code,org_domain,info_code,info_value,rsrv_num1,rsrv_num2,rsrv_str1,rsrv_str2,rsrv_date1,rsrv_date2,rsrv_date3,remark,update_staff_id,update_depart_id,update_time)
 VALUES(MOD(:USER_ID,10000),TO_NUMBER(:USER_ID),:SERIAL_NUMBER,:BIZ_TYPE_CODE,:ORG_DOMAIN,:INFO_CODE,:INFO_VALUE,TO_NUMBER(:RSRV_NUM1),TO_NUMBER(:RSRV_NUM2),:RSRV_STR1,:RSRV_STR2,TO_DATE(:RSRV_DATE1,'YYYY-MM-DD HH24:MI:SS'),TO_DATE(:RSRV_DATE2,'YYYY-MM-DD HH24:MI:SS'),TO_DATE(:RSRV_DATE3,'YYYY-MM-DD HH24:MI:SS'),:REMARK,:UPDATE_STAFF_ID,:UPDATE_DEPART_ID,sysdate)