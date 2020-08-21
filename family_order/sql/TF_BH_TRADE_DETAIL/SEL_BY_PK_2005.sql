SELECT to_char(trade_id) trade_id,accept_month,to_char(open_date,'yyyy-mm-dd hh24:mi:ss') open_date,to_char(develop_date,'yyyy-mm-dd hh24:mi:ss') develop_date,develop_staff_id,develop_depart_id,remove_reason_code,develop_no,user_type_code,user_passwd,to_char(assure_cust_id) assure_cust_id,assure_type_code,to_char(assure_date,'yyyy-mm-dd') assure_date,assure_name,assure_pspt_type_code,assure_pspt_id,assure_contact,cust_passwd,open_limit,pspt_type_code,pspt_id,pspt_addr,to_char(pspt_end_date,'yyyy-mm-dd') pspt_end_date,sex,to_char(birthday,'yyyy-mm-dd') birthday,nationality_code,local_native_code,population,language_code,folk_code,phone,post_code,post_address,fax_nbr,email,contact,contact_phone,home_address,work_name,work_depart,job,job_type_code,educate_degree_code,religion_code,revenue_level_code,marriage,character_type_code,webuser_id,web_passwd,contact_type_code,community_id,pay_name,pay_mode_code,bank_acct_no,bank_code,contract_no 
  FROM tf_bhb_trade_detail_2005
 WHERE trade_id=TO_NUMBER(:TRADE_ID)
   AND accept_month = TO_NUMBER(SUBSTR(:TRADE_ID,5,2))