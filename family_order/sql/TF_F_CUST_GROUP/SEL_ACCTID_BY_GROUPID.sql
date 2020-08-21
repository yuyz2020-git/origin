SELECT to_char(a.cust_id) cust_id,a.cust_name cust_name,group_id,b.acct_id prevaluec1,b.pay_name prevaluec2,group_cust_card_no,mp_group_cust_code,unify_pay_code,class_id,group_attr,client_status,user_count,company_address,post_code,website,fax_nbr,email,group_contact_phone,enterprise_scope,province,city,calling_type_code,calling_sub_type_code,trade_class1,trade_class2,calling_area_code,enterprise_type_code,enterprise_size_code,to_char(juristic_cust_id) juristic_cust_id,juristic,juristic_type_code,all_emp_count,china_emp_count,local_emp_count,group_memo,emp_lsave,to_char(reg_money) reg_money,cust_aim,scope,to_char(finance_earning) finance_earning,
to_char(comm_budget) comm_budget,main_trade,mob_count,unicom_133,unicom_130,mobile_num_xlt,consume,
to_char(turnover) turnover,to_char(year_gain) year_gain,super_group_id,payfor_way_code,manager_staff_id,doyen_staff_id,
newtrade_comment,to_char(employee_arpu) employee_arpu,writefee_count,to_char(writefee_sum) writefee_sum,
to_char(boss_fee_sum) boss_fee_sum,to_char(latency_fee_sum) latency_fee_sum,remark,subclass_id,
a.remove_tag remove_tag,to_char(product_num) product_num,to_char(vpmn_count) vpmn_count,prevaluec3,prevaluec4,prevalue1,prevalue2,prevalue3,prevalue4,prevalue5,to_char(prevaluen1) prevaluen1,to_char(prevaluen2) prevaluen2,to_char(prevaluen3) prevaluen3,to_char(prevalued1,'yyyy-mm-dd hh24:mi:ss') prevalued1,to_char(prevalued2,'yyyy-mm-dd hh24:mi:ss') prevalued2,rsrv_1,rsrv_2 
  FROM tf_f_cust_group a,tf_f_account b
 WHERE group_id=:GROUP_ID
 AND a.cust_id=b.cust_id
 AND a.remove_tag='0'