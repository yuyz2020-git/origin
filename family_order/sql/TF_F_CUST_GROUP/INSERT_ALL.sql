INSERT INTO tf_f_cust_group(cust_id,cust_name,group_id,group_cust_card_no,mp_group_cust_code,unify_pay_code,class_id,group_attr,client_status,user_count,company_address,post_code,website,fax_nbr,email,group_contact_phone,enterprise_scope,province,city,calling_type_code,calling_sub_type_code,trade_class1,trade_class2,calling_area_code,enterprise_type_code,enterprise_size_code,juristic_cust_id,juristic,juristic_type_code,all_emp_count,china_emp_count,local_emp_count,group_memo,emp_lsave,reg_money,cust_aim,scope,finance_earning,comm_budget,main_trade,mob_count,unicom_133,unicom_130,mobile_num_xlt,consume,turnover,year_gain,super_group_id,payfor_way_code,manager_staff_id,doyen_staff_id,newtrade_comment,employee_arpu,writefee_count,writefee_sum,boss_fee_sum,latency_fee_sum,remark,subclass_id,remove_tag,product_num,vpmn_count,prevaluec1,prevaluec2,prevaluec3,prevaluec4,prevalue1,prevalue2,prevalue3,prevalue4,prevalue5,prevaluen1,prevaluen2,prevaluen3,prevalued1,prevalued2,rsrv_1,rsrv_2)
 VALUES(TO_NUMBER(:CUST_ID),:CUST_NAME,:GROUP_ID,:GROUP_CUST_CARD_NO,:MP_GROUP_CUST_CODE,:UNIFY_PAY_CODE,:CLASS_ID,:GROUP_ATTR,:CLIENT_STATUS,:USER_COUNT,:COMPANY_ADDRESS,:POST_CODE,:WEBSITE,:FAX_NBR,:EMAIL,:GROUP_CONTACT_PHONE,:ENTERPRISE_SCOPE,:PROVINCE,:CITY,:CALLING_TYPE_CODE,:CALLING_SUB_TYPE_CODE,:TRADE_CLASS1,:TRADE_CLASS2,:CALLING_AREA_CODE,:ENTERPRISE_TYPE_CODE,:ENTERPRISE_SIZE_CODE,TO_NUMBER(:JURISTIC_CUST_ID),:JURISTIC,:JURISTIC_TYPE_CODE,:ALL_EMP_COUNT,:CHINA_EMP_COUNT,:LOCAL_EMP_COUNT,:GROUP_MEMO,:EMP_LSAVE,TO_NUMBER(:REG_MONEY),:CUST_AIM,:SCOPE,TO_NUMBER(:FINANCE_EARNING),TO_NUMBER(:COMM_BUDGET),:MAIN_TRADE,:MOB_COUNT,:UNICOM_133,:UNICOM_130,:MOBILE_NUM_XLT,:CONSUME,TO_NUMBER(:TURNOVER),TO_NUMBER(:YEAR_GAIN),:SUPER_GROUP_ID,:PAYFOR_WAY_CODE,:MANAGER_STAFF_ID,:DOYEN_STAFF_ID,:NEWTRADE_COMMENT,TO_NUMBER(:EMPLOYEE_ARPU),:WRITEFEE_COUNT,TO_NUMBER(:WRITEFEE_SUM),TO_NUMBER(:BOSS_FEE_SUM),TO_NUMBER(:LATENCY_FEE_SUM),:REMARK,:SUBCLASS_ID,:REMOVE_TAG,TO_NUMBER(:PRODUCT_NUM),TO_NUMBER(:VPMN_COUNT),:PREVALUEC1,:PREVALUEC2,:PREVALUEC3,:PREVALUEC4,:PREVALUE1,:PREVALUE2,:PREVALUE3,:PREVALUE4,:PREVALUE5,TO_NUMBER(:PREVALUEN1),TO_NUMBER(:PREVALUEN2),TO_NUMBER(:PREVALUEN3),TO_DATE(:PREVALUED1,'YYYY-MM-DD HH24:MI:SS'),TO_DATE(:PREVALUED2,'YYYY-MM-DD HH24:MI:SS'),:RSRV_1,:RSRV_2)