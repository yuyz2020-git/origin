--IS_CACHE=Y
SELECT prorate,per_charge,max_day,max_month,start_time,end_time,sign_en,sign_cn,info_code,info_value,default_sign,is_sign,increment_serv_type,access_mode,access_tag,out_type,app_type,serv_id,serv_code,serv_name,serv_type,product_code,serv_area_type,serv_state,serv_kind,innovation_id,serv_cop_type,cop_serv,cop_product,product_part,industry,serv_intro,serv_price,serv_rate_type,serv_attr,busi_plan,cust_serv_plan,tech_plan,sms_corp_code,sms_serv_code,mms_corp_code,mms_serv_code,wap_corp_code,to_char(submit_date,'yyyy-mm-dd hh24:mi:ss') submit_date,serv_faq,cust_serv_docu,state,to_char(update_time,'yyyy-mm-dd hh24:mi:ss') update_time,update_staff_id,update_depart_id,remark,trail_state,trail_staff_id,to_char(trail_time,'yyyy-mm-dd hh24:mi:ss') trail_time,out_state,to_char(rsrv_num3) rsrv_num3,rsrv_str1,rsrv_str2,rsrv_str3,rsrv_str4,rsrv_str5,rsrv_str6,rsrv_str7,rsrv_str8,to_char(rsrv_date1,'yyyy-mm-dd hh24:mi:ss') rsrv_date1,to_char(rsrv_date2,'yyyy-mm-dd hh24:mi:ss') rsrv_date2,to_char(rsrv_date3,'yyyy-mm-dd hh24:mi:ss') rsrv_date3,rsrv_tag1,rsrv_tag2,rsrv_tag3 
  FROM tf_cop_service
 WHERE serv_code=:SERV_CODE
   AND state=:STATE