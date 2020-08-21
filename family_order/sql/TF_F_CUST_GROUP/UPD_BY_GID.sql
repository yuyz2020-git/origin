UPDATE tf_f_cust_group
   SET cust_name=:CUST_NAME,group_cust_card_no=:GROUP_CUST_CARD_NO,mp_group_cust_code=:MP_GROUP_CUST_CODE,unify_pay_code=:UNIFY_PAY_CODE,class_id=:CLASS_ID,group_attr=:GROUP_ATTR,client_status=:CLIENT_STATUS,user_count=:USER_COUNT,company_address=:COMPANY_ADDRESS,post_code=:POST_CODE,website=:WEBSITE,fax_nbr=:FAX_NBR,email=:EMAIL,group_contact_phone=:GROUP_CONTACT_PHONE,enterprise_scope=:ENTERPRISE_SCOPE,province=:PROVINCE,city=:CITY,calling_type_code=:CALLING_TYPE_CODE,calling_sub_type_code=:CALLING_SUB_TYPE_CODE,trade_class1=:TRADE_CLASS1,trade_class2=:TRADE_CLASS2,calling_area_code=:CALLING_AREA_CODE,enterprise_type_code=:ENTERPRISE_TYPE_CODE,enterprise_size_code=:ENTERPRISE_SIZE_CODE,juristic_cust_id=TO_NUMBER(:JURISTIC_CUST_ID),juristic=:JURISTIC,juristic_type_code=:JURISTIC_TYPE_CODE,all_emp_count=:ALL_EMP_COUNT,china_emp_count=:CHINA_EMP_COUNT,local_emp_count=:LOCAL_EMP_COUNT,group_memo=:GROUP_MEMO,emp_lsave=:EMP_LSAVE,reg_money=TO_NUMBER(:REG_MONEY),cust_aim=:CUST_AIM,scope=:SCOPE,finance_earning=TO_NUMBER(:FINANCE_EARNING),comm_budget=TO_NUMBER(:COMM_BUDGET),main_trade=:MAIN_TRADE,mob_count=:MOB_COUNT,unicom_133=:UNICOM_133,unicom_130=:UNICOM_130,mobile_num_xlt=:MOBILE_NUM_XLT,consume=:CONSUME,turnover=TO_NUMBER(:TURNOVER),year_gain=TO_NUMBER(:YEAR_GAIN),super_group_id=:SUPER_GROUP_ID,payfor_way_code=:PAYFOR_WAY_CODE,manager_staff_id=:MANAGER_STAFF_ID,doyen_staff_id=:DOYEN_STAFF_ID,newtrade_comment=:NEWTRADE_COMMENT,employee_arpu=TO_NUMBER(:EMPLOYEE_ARPU),writefee_count=:WRITEFEE_COUNT,writefee_sum=TO_NUMBER(:WRITEFEE_SUM),boss_fee_sum=TO_NUMBER(:BOSS_FEE_SUM),latency_fee_sum=TO_NUMBER(:LATENCY_FEE_SUM),remark=:REMARK,subclass_id=:SUBCLASS_ID  
 WHERE group_id=:GROUP_ID
 and remove_tag = '0'