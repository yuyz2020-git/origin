select partition_id,to_char(user_id) user_id,to_char(cust_id) cust_id,to_char(usecust_id) usecust_id,brand_code,product_id,eparchy_code,city_code,user_passwd,user_type_code,serial_number,to_char(score_value) score_value,credit_class,to_char(basic_credit_value) basic_credit_value,to_char(credit_value) credit_value,acct_tag,prepay_tag,to_char(in_date,'yyyy-mm-dd hh24:mi:ss') in_date,to_char(open_date,'yyyy-mm-dd hh24:mi:ss') open_date,remove_tag,to_char(destroy_time,'yyyy-mm-dd hh24:mi:ss') destroy_time,to_char(pre_destroy_time,'yyyy-mm-dd hh24:mi:ss') pre_destroy_time,to_char(first_call_time,'yyyy-mm-dd hh24:mi:ss') first_call_time,to_char(last_stop_time,'yyyy-mm-dd hh24:mi:ss') last_stop_time,open_mode,user_state_codeset,mpute_month_fee,to_char(mpute_date,'yyyy-mm-dd hh24:mi:ss') mpute_date,rsrv_str1,rsrv_str2,rsrv_str3,rsrv_str4,rsrv_str5,rsrv_str6,rsrv_str7,rsrv_str8,rsrv_str9,rsrv_str10,to_char(usr.update_time,'yyyy-mm-dd hh24:mi:ss') update_time 
    from tf_f_user usr
    where exists (
       select 1 from tf_f_relation_uu uu where usr.user_id=uu.user_id_b
           and uu.user_id_a=:USER_ID and uu.end_date>sysdate
    )