INSERT INTO tf_f_customer(partition_id,cust_id,cust_name,cust_type,cust_state,pspt_type_code,pspt_id,open_limit,eparchy_code,city_code,cust_passwd,score_value,credit_class,basic_credit_value,credit_value,remove_tag,remove_date,develop_depart_id,develop_staff_id,in_depart_id,in_staff_id,in_date,remark,rsrv_str1,rsrv_str2,rsrv_str3,rsrv_str4,rsrv_str5,rsrv_str6,rsrv_str7,rsrv_str8,rsrv_str9,rsrv_str10)
 VALUES(MOD(TO_NUMBER(:CUST_ID),10000),TO_NUMBER(:CUST_ID),:CUST_NAME,:CUST_TYPE,:CUST_STATE,:PSPT_TYPE_CODE,:PSPT_ID,:OPEN_LIMIT,:EPARCHY_CODE,:CITY_CODE,:CUST_PASSWD,TO_NUMBER(:SCORE_VALUE),:CREDIT_CLASS,TO_NUMBER(:BASIC_CREDIT_VALUE),TO_NUMBER(:CREDIT_VALUE),:REMOVE_TAG,TO_DATE(:REMOVE_DATE,'YYYY-MM-DD HH24:MI:SS'),:DEVELOP_DEPART_ID,:DEVELOP_STAFF_ID,:IN_DEPART_ID,:IN_STAFF_ID,TO_DATE(:IN_DATE,'YYYY-MM-DD HH24:MI:SS'),:REMARK,:RSRV_STR1,:RSRV_STR2,:RSRV_STR3,:RSRV_STR4,:RSRV_STR5,:RSRV_STR6,:RSRV_STR7,:RSRV_STR8,:RSRV_STR9,:RSRV_STR10)