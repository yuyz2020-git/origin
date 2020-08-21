select
   to_char(trade_id)   trade_id,
   to_char(accept_month)   accept_month,
   to_char(cust_id)   cust_id,
   pspt_type_code,
   pspt_id,
   to_char(pspt_end_date,'yyyy-mm-dd hh24:mi:ss') pspt_end_date,
   pspt_addr,
   cust_name,
   sex,
   eparchy_code,
   city_code,
   to_char(birthday,'yyyy-mm-dd hh24:mi:ss') birthday,
   birthday_lunar,
   birthday_flag,
   post_address,
   post_code,
   post_person,
   phone,
   fax_nbr,
   email,
   home_address,
   home_phone,
   work_name,
   work_kind,
   work_address,
   work_phone,
   work_post_code,
   calling_type_code,
   sub_calling_type_code,
   work_depart,
   job,
   contact,
   contact_phone,
   contact_type_code,
   contact_freq,
   nationality_code,
   local_native_code,
   to_char(population)  population,
   language_code,
   folk_code,
   religion_code,
   job_type_code,
   revenue_level_code,
   educate_degree_code,
   educate_grade_code,
   graduate_school,
   speciality,
   character_type_code,
   health_state_code,
   marriage,
   webuser_id,
   web_passwd,
   community_id,
   remove_tag,
   to_char(remove_date,'yyyy-mm-dd hh24:mi:ss') remove_date,
   remove_staff_id,
   remove_change,
   modify_tag ,
   to_char(update_time,'yyyy-mm-dd hh24:mi:ss') update_time,
   update_staff_id,
   update_depart_id,
   remark,
   to_char(rsrv_num1) rsrv_num1,
   ro_char(rsrv_num2) rsrv_num2,
   to_char(rsrv_num3) rsrv_num3,
   rsrv_str1,
   rsrv_str2,
   rsrv_str3,
   rsrv_str4,
   rsrv_str5,
   rsrv_str6,
   rsrv_str7,
   rsrv_str8,
   to_char(rsrv_date1,'yyyy-mm-dd hh24:mi:ss') rsrv_date1,
   to_char(rsrv_date2,'yyyy-mm-dd hh24:mi:ss') rsrv_date2,
   to_char(rsrv_date3,'yyyy-mm-dd hh24:mi:ss') rsrv_date3,
   rsrv_tag1,
   rsrv_tag2,
   rsrv_tag3
 from tf_b_trade_cust_person t
 where t.trade_id=:TRADE_ID