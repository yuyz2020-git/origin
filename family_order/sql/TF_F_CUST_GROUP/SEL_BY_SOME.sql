SELECT to_char(cust_id) cust_id,cust_name,group_id,group_cust_card_no,mp_group_cust_code,unify_pay_code,class_id,group_attr,client_status,user_count,company_address,post_code,website,fax_nbr,email,group_contact_phone,enterprise_scope,province,city,calling_type_code,calling_sub_type_code,trade_class1,trade_class2,calling_area_code,enterprise_type_code,enterprise_size_code,to_char(juristic_cust_id) juristic_cust_id,juristic,juristic_type_code,all_emp_count,china_emp_count,local_emp_count,group_memo,emp_lsave,to_char(reg_money) reg_money,cust_aim,scope,to_char(finance_earning) finance_earning,to_char(comm_budget) comm_budget,main_trade,mob_count,unicom_133,unicom_130,mobile_num_xlt,consume,to_char(turnover) turnover,to_char(year_gain) year_gain,super_group_id,payfor_way_code,manager_staff_id,doyen_staff_id,newtrade_comment,to_char(employee_arpu) employee_arpu,writefee_count,to_char(writefee_sum) writefee_sum,to_char(boss_fee_sum) boss_fee_sum,to_char(latency_fee_sum) latency_fee_sum,remark,subclass_id 
 FROM tf_f_cust_group a,tf_f_customer b
 WHERE a.remove_tag='0' AND b.remove_tag='0' AND a.cust_id =b.cust_id
   AND (:GROUP_ID is null  or a.group_id =:GROUP_ID)
  AND (:STARTDATE  is null  or b.in_date >=to_date(:STARTDATE,'yyyy-mm-dd'))
  AND (:ENDDATE is null or b.in_date<=to_date(:ENDDATE,'yyyy-mm-dd'))
  AND (:USER_COUNT is null  or to_number(a.user_count) >=to_number(:USER_COUNT))
  AND (:CLIENT_STATUS is null or a.client_status =:CLIENT_STATUS)
  AND (:CALLING_TYPE_CODE is null or a.calling_type_code =:CALLING_TYPE_CODE)
  AND (:CALLING_SUB_TYPE_CODE is null or a.calling_sub_type_code =:CALLING_SUB_TYPE_CODE)
  AND (:MANAGER_STAFF_ID is NULL  or a.manager_staff_id=:MANAGER_STAFF_ID)
  AND EXISTS
      ( select 1
         from td_m_staff e,td_m_depart f
         where a.manager_staff_id = e.staff_id
         and e.depart_id = f.depart_id
         and f.depart_frame like (
           select t.depart_frame from td_m_depart t where t.depart_id= :DEPART_ID)||'%'
         and (f.parent_depart_id = :PARENT_DEPART_ID OR :PARENT_DEPART_ID IS NULL ) )