INSERT INTO tf_b_trade_group(trade_id,trade_type_code,group_id,group_cust_card_no,mp_group_cust_code,unify_pay_code,class_id,group_attr,client_status,user_count,company_address,post_code,website,fax_nbr,email,group_contact_phone,enterprise_scope,province,city,calling_type_code,calling_sub_type_code,trade_class1,trade_class2,calling_area_code,enterprise_type_code,enterprise_size_code,juristic_cust_id,juristic,juristic_type_code,all_emp_count,china_emp_count,local_emp_count,group_memo,emp_lsave,reg_money,cust_aim,scope,finance_earning,comm_budget,main_trade,mob_count,unicom_133,unicom_130,mobile_num_xlt,consume,turnover,year_gain,super_group_id,payfor_way_code,manager_staff_id,doyen_staff_id,newtrade_comment,employee_arpu,writefee_count,writefee_sum,boss_fee_sum,latency_fee_sum,vpmn_id,area_code,scp_code,vpmn_type,sub_state,func_tlags,inter_feeindex,out_feeindex,outgrp_feeindex,subgrp_feeindex,pre_ip_no,pre_ip_disc,othor_ip_disc,trans_no,max_close_num,max_num_close,person_maxclose,max_outnum,max_users,pkg_start_date,pkg_type,discount,limit_fee,zone_max,zonefree_num,zone_fee,mt_maxnum,aip_id,accept_date,trade_staff_id,trade_depart_id,trade_city_code,trade_eparchy_code,client_info1,client_info2,client_info3,client_info4,client_info5,client_info6,client_info7,client_tag1,client_tag2,remark)
 VALUES(TO_NUMBER(:TRADE_ID),:TRADE_TYPE_CODE,:GROUP_ID,:GROUP_CUST_CARD_NO,:MP_GROUP_CUST_CODE,:UNIFY_PAY_CODE,:CLASS_ID,:GROUP_ATTR,:CLIENT_STATUS,:USER_COUNT,:COMPANY_ADDRESS,:POST_CODE,:WEBSITE,:FAX_NBR,:EMAIL,:GROUP_CONTACT_PHONE,:ENTERPRISE_SCOPE,:PROVINCE,:CITY,:CALLING_TYPE_CODE,:CALLING_SUB_TYPE_CODE,:TRADE_CLASS1,:TRADE_CLASS2,:CALLING_AREA_CODE,:ENTERPRISE_TYPE_CODE,:ENTERPRISE_SIZE_CODE,TO_NUMBER(:JURISTIC_CUST_ID),:JURISTIC,:JURISTIC_TYPE_CODE,:ALL_EMP_COUNT,:CHINA_EMP_COUNT,:LOCAL_EMP_COUNT,:GROUP_MEMO,:EMP_LSAVE,TO_NUMBER(:REG_MONEY),:CUST_AIM,:SCOPE,TO_NUMBER(:FINANCE_EARNING),TO_NUMBER(:COMM_BUDGET),:MAIN_TRADE,:MOB_COUNT,:UNICOM_133,:UNICOM_130,:MOBILE_NUM_XLT,:CONSUME,TO_NUMBER(:TURNOVER),TO_NUMBER(:YEAR_GAIN),:SUPER_GROUP_ID,:PAYFOR_WAY_CODE,:MANAGER_STAFF_ID,:DOYEN_STAFF_ID,:NEWTRADE_COMMENT,TO_NUMBER(:EMPLOYEE_ARPU),:WRITEFEE_COUNT,TO_NUMBER(:WRITEFEE_SUM),TO_NUMBER(:BOSS_FEE_SUM),TO_NUMBER(:LATENCY_FEE_SUM),:VPMN_ID,:AREA_CODE,:SCP_CODE,:VPMN_TYPE,:SUB_STATE,:FUNC_TLAGS,:INTER_FEEINDEX,:OUT_FEEINDEX,:OUTGRP_FEEINDEX,:SUBGRP_FEEINDEX,:PRE_IP_NO,:PRE_IP_DISC,:OTHOR_IP_DISC,:TRANS_NO,:MAX_CLOSE_NUM,:MAX_NUM_CLOSE,:PERSON_MAXCLOSE,:MAX_OUTNUM,:MAX_USERS,TO_DATE(:PKG_START_DATE,'YYYY-MM-DD HH24:MI:SS'),:PKG_TYPE,:DISCOUNT,TO_NUMBER(:LIMIT_FEE),:ZONE_MAX,:ZONEFREE_NUM,TO_NUMBER(:ZONE_FEE),:MT_MAXNUM,:AIP_ID,TO_DATE(:ACCEPT_DATE,'YYYY-MM-DD HH24:MI:SS'),:TRADE_STAFF_ID,:TRADE_DEPART_ID,:TRADE_CITY_CODE,:TRADE_EPARCHY_CODE,:CLIENT_INFO1,:CLIENT_INFO2,:CLIENT_INFO3,:CLIENT_INFO4,:CLIENT_INFO5,:CLIENT_INFO6,:CLIENT_INFO7,:CLIENT_TAG1,:CLIENT_TAG2,:REMARK)