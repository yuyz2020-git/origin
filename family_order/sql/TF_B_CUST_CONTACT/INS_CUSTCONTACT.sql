INSERT INTO tf_b_cust_contact(accept_month,cust_contact_id,cust_id,cust_name,pspt_type_code,pspt_id,in_mode_code,serial_number,user_id,product_id,staff_id,depart_id,start_time,finish_time,contact_desc,city_code,eparchy_code,rsrv_str1,rsrv_str2,rsrv_str3,rsrv_str4,rsrv_str5,rsrv_str6,rsrv_str7,rsrv_str8,rsrv_str9,rsrv_str10,remark,language_code,access_code,contact_mode,parent_contact_id,sub_in_mode_code,media_type_code,callcenter,device_id,usereparchycode,vip_class,brand,cust_state,contact,contact_phone,post_address,post_code,email,fax_nbx,contact_type_code)
 VALUES(:ACCEPT_MONTH,TO_NUMBER(:CUST_CONTACT_ID),TO_NUMBER(:CUST_ID),:CUST_NAME,:PSPT_TYPE_CODE,:PSPT_ID,:IN_MODE_CODE,:SERIAL_NUMBER,TO_NUMBER(:USER_ID),:PRODUCT_ID,:STAFF_ID,:DEPART_ID,TO_DATE(:START_TIME,'YYYY-MM-DD HH24:MI:SS'),TO_DATE(:FINISH_TIME,'YYYY-MM-DD HH24:MI:SS'),:CONTACT_DESC,:CITY_CODE,:EPARCHY_CODE,:RSRV_STR1,:RSRV_STR2,:RSRV_STR3,:RSRV_STR4,:RSRV_STR5,:RSRV_STR6,:RSRV_STR7,:RSRV_STR8,:RSRV_STR9,:RSRV_STR10,:REMARK,:LANGUAGE_CODE,:ACCESS_CODE,:CONTACT_MODE,TO_NUMBER(:PARENT_CONTACT_ID),:SUB_IN_MODE_CODE,:MEDIA_TYPE_CODE,:CALLCENTER,:DEVICE_ID,:USEREPARCHYCODE,:VIP_CLASS,:BRAND,:CUST_STATE,:CONTACT,:CONTACT_PHONE,:POST_ADDRESS,:POST_CODE,:EMAIL,:FAX_NBX,:CONTACT_TYPE_CODE)