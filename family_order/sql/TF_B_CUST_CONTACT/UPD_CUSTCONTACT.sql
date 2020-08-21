UPDATE tf_b_cust_contact
SET cust_id=TO_NUMBER(:CUST_ID)
	,cust_name=:CUST_NAME
	,user_id=TO_NUMBER(:USER_ID)
	,serial_number=:SERIAL_NUMBER
	,product_id=:PRODUCT_ID
	,eparchy_code=:EPARCHY_CODE
	,city_code=:CITY_CODE
	,contact_mode=:CONTACT_MODE
	,in_mode_code=:IN_MODE_CODE
	,in_media_code=:IN_MEDIA_CODE
	,channel_id=:CHANNEL_ID
	,sub_channel_id =:SUB_CHANNEL_ID
	,start_time=TO_DATE(:START_TIME, 'YYYY-MM-DD HH24:MI:SS')
  ,finish_time=TO_DATE(:FINISH_TIME, 'YYYY-MM-DD HH24:MI:SS')
  ,contact_state=:CONTACT_STATE
  ,rsrv_str1=:RSRV_STR1
  ,rsrv_str2=:RSRV_STR2
  ,rsrv_str3=:RSRV_STR3
  ,rsrv_str4=:RSRV_STR4
  ,rsrv_str5=:RSRV_STR5
  ,rsrv_str6=:RSRV_STR6
  ,rsrv_str7=:RSRV_STR7
  ,rsrv_str8=:RSRV_STR8
  ,rsrv_str9=:RSRV_STR9
  ,rsrv_str10=:RSRV_STR10
  ,remark=:REMARK 
 WHERE accept_month=:ACCEPT_MONTH
AND cust_contact_id=TO_NUMBER(:CUST_CONTACT_ID)