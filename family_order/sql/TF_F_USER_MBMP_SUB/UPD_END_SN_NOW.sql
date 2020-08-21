UPDATE tf_f_user_mbmp_sub
   SET end_date=TO_DATE(:END_DATE, 'YYYY-MM-DD HH24:MI:SS') - 1/24/3600  
 WHERE serial_number=:SERIAL_NUMBER
   AND sp_id=:SP_ID
   AND biz_type_code=:BIZ_TYPE_CODE
   AND org_domain=:ORG_DOMAIN
   AND sp_svc_id=:SP_SVC_ID
   AND TO_DATE(:END_DATE, 'YYYY-MM-DD HH24:MI:SS') between start_date and end_date