SELECT  
to_char(cg.CUST_ID) CUST_ID, cg.GROUP_ID, cg.CUST_NAME, cg.GROUP_TYPE, cg.GROUP_ROLE, cg.CLASS_ID, cg.CLASS_ID2, cg.LAST_CLASS_ID, 
to_char(cg.CLASS_CHANGE_DATE,'yyyy-mm-dd hh24:mi:ss') CLASS_CHANGE_DATE, cg.CUST_CLASS_TYPE, cg.GROUP_ATTR, cg.GROUP_STATUS, cg.GROUP_ADDR, cg.GROUP_SOURCE, cg.PROVINCE_CODE, cg.EPARCHY_CODE, cg.CITY_CODE, cg.CITY_CODE_U, cg.SUPER_GROUP_ID, cg.SUPER_GROUP_NAME, cg.PNATIONAL_GROUP_ID, cg.PNATIONAL_GROUP_NAME, cg.MP_GROUP_CUST_CODE, cg.UNIFY_PAY_CODE, cg.ORG_STRUCT_CODE, cg.CUST_MANAGER_ID, cg.CUST_MANAGER_APPR, to_char(cg.ASSIGN_DATE,'yyyy-mm-dd hh24:mi:ss') ASSIGN_DATE, cg.ASSIGN_STAFF_ID, cg.CALLING_TYPE_CODE, cg.SUB_CALLING_TYPE_CODE, cg.CALLING_AREA_CODE, cg.CALL_TYPE, cg.ACCEPT_CHANNEL, cg.AGREEMENT, cg.BUSI_TYPE, cg.GROUP_CONTACT_PHONE, cg.ENTERPRISE_TYPE_CODE, cg.ENTERPRISE_SIZE_CODE, cg.ENTERPRISE_SCOPE, cg.JURISTIC_TYPE_CODE, to_char(cg.JURISTIC_CUST_ID) JURISTIC_CUST_ID, cg.JURISTIC_NAME, cg.BUSI_LICENCE_TYPE, cg.BUSI_LICENCE_NO, to_char(cg.BUSI_LICENCE_VALID_DATE,'yyyy-mm-dd hh24:mi:ss') BUSI_LICENCE_VALID_DATE, cg.GROUP_MEMO, cg.BANK_ACCT, cg.BANK_NAME, to_char(cg.REG_MONEY) REG_MONEY, to_char(cg.REG_DATE,'yyyy-mm-dd hh24:mi:ss') REG_DATE, cg.CUST_AIM, cg.SCOPE, cg.MAIN_BUSI, cg.MAIN_TRADE, cg.EMP_LSAVE, to_char(cg.LATENCY_FEE_SUM) LATENCY_FEE_SUM, to_char(cg.YEAR_GAIN) YEAR_GAIN, to_char(cg.TURNOVER) TURNOVER, cg.CONSUME, to_char(cg.COMM_BUDGET) COMM_BUDGET, to_char(cg.GTEL_BUDGET) GTEL_BUDGET, to_char(cg.LTEL_BUDGET) LTEL_BUDGET, cg.GROUP_ADVERSARY, cg.VPMN_GROUP_ID, to_char(cg.VPMN_NUM) VPMN_NUM, to_char(cg.USER_NUM) USER_NUM, to_char(cg.EMP_NUM_LOCAL) EMP_NUM_LOCAL, to_char(cg.EMP_NUM_CHINA) EMP_NUM_CHINA, to_char(cg.EMP_NUM_ALL) EMP_NUM_ALL, to_char(cg.TELECOM_NUM_GH) TELECOM_NUM_GH, to_char(cg.TELECOM_NUM_XLT) TELECOM_NUM_XLT, to_char(cg.MOBILE_NUM_CHINAGO) MOBILE_NUM_CHINAGO, to_char(cg.MOBILE_NUM_GLOBAL) MOBILE_NUM_GLOBAL, to_char(cg.MOBILE_NUM_MZONE) MOBILE_NUM_MZONE, to_char(cg.MOBILE_NUM_LOCAL) MOBILE_NUM_LOCAL, to_char(cg.UNICOM_NUM_G) UNICOM_NUM_G, to_char(cg.UNICOM_NUM_C) UNICOM_NUM_C, to_char(cg.UNICOM_NUM_GC) UNICOM_NUM_GC, to_char(cg.PRODUCT_NUM_LOCAL) PRODUCT_NUM_LOCAL, to_char(cg.PRODUCT_NUM_OTHER) PRODUCT_NUM_OTHER, to_char(cg.PRODUCT_NUM_USE) PRODUCT_NUM_USE, to_char(cg.EMPLOYEE_ARPU) EMPLOYEE_ARPU, to_char(cg.NETRENT_PAYOUT) NETRENT_PAYOUT, to_char(cg.MOBILE_PAYOUT) MOBILE_PAYOUT, to_char(cg.UNICOM_PAYOUT) UNICOM_PAYOUT, to_char(cg.TELECOM_PAYOUT_XLT) TELECOM_PAYOUT_XLT, cg.GROUP_PAY_MODE, cg.PAYFOR_WAY_CODE, cg.WRITEFEE_COUNT, to_char(cg.WRITEFEE_SUM) WRITEFEE_SUM, to_char(cg.USER_NUM_FULLFREE) USER_NUM_FULLFREE, to_char(cg.USER_NUM_WRITEOFF) USER_NUM_WRITEOFF, to_char(cg.BOSS_FEE_SUM) BOSS_FEE_SUM, cg.DOYEN_STAFF_ID, cg.NEWTRADE_COMMENT, cg.LIKE_MOBILE_TRADE, cg.LIKE_DISCNT_MODE, to_char(cg.FINANCE_EARNING) FINANCE_EARNING, cg.EARNING_ORDER, cg.CALLING_POLICY_FORCE, cg.SUBCLASS_ID, cg.WEBSITE, cg.FAX_NBR, cg.EMAIL, cg.POST_CODE, to_char(cg.GROUP_VALID_SCORE) GROUP_VALID_SCORE, to_char(cg.GROUP_SUM_SCORE) GROUP_SUM_SCORE, cg.GROUP_MGR_SN, to_char(cg.GROUP_MGR_USER_ID) GROUP_MGR_USER_ID, cg.GROUP_MGR_CUST_NAME, cg.BASE_ACCESS_NO, cg.BASE_ACCESS_NO_KIND, cg.CUST_SERV_NBR, cg.EC_CODE, cg.IF_SHORT_PIN, cg.AUDIT_STATE 
      FROM tf_f_cust_group cg ,tf_f_customer  cc
     where cc.cust_id=cg.cust_id
     and cc.pspt_type_code=:PSPT_TYPE_CODE
     and cc.pspt_id=:PSPT_ID
     and cc.cust_type=:CUST_TYPE