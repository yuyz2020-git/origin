SELECT TO_CHAR(CUST_ID) CUST_ID,
       GROUP_ID,
       CUST_NAME,
       GROUP_TYPE,
       GROUP_ROLE,
       CLASS_ID,
       CLASS_ID2,
       LAST_CLASS_ID,
       TO_CHAR(CLASS_CHANGE_DATE, 'yyyy-mm-dd hh24:mi:ss') CLASS_CHANGE_DATE,
       CUST_CLASS_TYPE,
       GROUP_ATTR,
       GROUP_STATUS,
       GROUP_ADDR,
       GROUP_SOURCE,
       PROVINCE_CODE,
       EPARCHY_CODE,
       CITY_CODE,
       CITY_CODE_U,
       SUPER_GROUP_ID,
       SUPER_GROUP_NAME,
       PNATIONAL_GROUP_ID,
       PNATIONAL_GROUP_NAME,
       MP_GROUP_CUST_CODE,
       UNIFY_PAY_CODE,
       ORG_STRUCT_CODE,
       CUST_MANAGER_ID,
       CUST_MANAGER_APPR,
       TO_CHAR(ASSIGN_DATE, 'yyyy-mm-dd hh24:mi:ss') ASSIGN_DATE,
       ASSIGN_STAFF_ID,
       CALLING_TYPE_CODE,
       SUB_CALLING_TYPE_CODE,
       CALLING_AREA_CODE,
       CALL_TYPE,
       ACCEPT_CHANNEL,
       AGREEMENT,
       BUSI_TYPE,
       GROUP_CONTACT_PHONE,
       ENTERPRISE_TYPE_CODE,
       ENTERPRISE_SIZE_CODE,
       ENTERPRISE_SCOPE,
       JURISTIC_TYPE_CODE,
       TO_CHAR(JURISTIC_CUST_ID) JURISTIC_CUST_ID,
       JURISTIC_NAME,
       BUSI_LICENCE_TYPE,
       BUSI_LICENCE_NO,
       TO_CHAR(BUSI_LICENCE_VALID_DATE, 'yyyy-mm-dd hh24:mi:ss') BUSI_LICENCE_VALID_DATE,
       GROUP_MEMO,
       BANK_ACCT,
       BANK_NAME,
       TO_CHAR(REG_MONEY) REG_MONEY,
       TO_CHAR(REG_DATE, 'yyyy-mm-dd hh24:mi:ss') REG_DATE,
       CUST_AIM,
       SCOPE,
       MAIN_BUSI,
       MAIN_TRADE,
       EMP_LSAVE,
       TO_CHAR(LATENCY_FEE_SUM) LATENCY_FEE_SUM,
       TO_CHAR(YEAR_GAIN) YEAR_GAIN,
       TO_CHAR(TURNOVER) TURNOVER,
       CONSUME,
       GROUP_ADVERSARY,
       VPMN_GROUP_ID,
       GROUP_PAY_MODE,
       PAYFOR_WAY_CODE,
       WRITEFEE_COUNT,
       DOYEN_STAFF_ID,
       NEWTRADE_COMMENT,
       LIKE_MOBILE_TRADE,
       LIKE_DISCNT_MODE,
       TO_CHAR(FINANCE_EARNING) FINANCE_EARNING,
       EARNING_ORDER,
       CALLING_POLICY_FORCE,
       SUBCLASS_ID,
       WEBSITE,
       FAX_NBR,
       EMAIL,
       POST_CODE,
       TO_CHAR(GROUP_VALID_SCORE) GROUP_VALID_SCORE,
       TO_CHAR(GROUP_SUM_SCORE) GROUP_SUM_SCORE,
       GROUP_MGR_SN,
       TO_CHAR(GROUP_MGR_USER_ID) GROUP_MGR_USER_ID,
       GROUP_MGR_CUST_NAME,
       BASE_ACCESS_NO,
       BASE_ACCESS_NO_KIND,
       CUST_SERV_NBR,
       EC_CODE,
       IF_SHORT_PIN,
       AUDIT_STATE,
       TO_CHAR(AUDIT_DATE, 'yyyy-mm-dd hh24:mi:ss') AUDIT_DATE,
       AUDIT_STAFF_ID,
       AUDIT_NOTE,
       REMOVE_FLAG,
       REMOVE_METHOD,
       REMOVE_REASON_CODE,
       TO_CHAR(IN_DATE, 'yyyy-mm-dd hh24:mi:ss') IN_DATE,
       IN_STAFF_ID,
       IN_DEPART_ID,
       REMOVE_TAG,
       TO_CHAR(REMOVE_DATE, 'yyyy-mm-dd hh24:mi:ss') REMOVE_DATE,
       REMOVE_STAFF_ID,
       REMOVE_CHANGE,
       TO_CHAR(UPDATE_TIME, 'yyyy-mm-dd hh24:mi:ss') UPDATE_TIME,
       UPDATE_STAFF_ID,
       UPDATE_DEPART_ID,
       REMARK,
       GROUP_CHECK,
       SUPER_FLAG,
       PROVINCE_FLAG,
       IMPORT_FLAG,
       DANGER_FLAG,
       RSRV_NUM1,
       RSRV_NUM2,
       RSRV_NUM3,
       RSRV_STR1,
       RSRV_STR2,
       RSRV_STR3,
       RSRV_STR4,
       RSRV_STR5,
       RSRV_STR6,
       RSRV_STR7,
       RSRV_STR8,
       TO_CHAR(RSRV_DATE1, 'yyyy-mm-dd hh24:mi:ss') RSRV_DATE1,
       TO_CHAR(RSRV_DATE2, 'yyyy-mm-dd hh24:mi:ss') RSRV_DATE2,
       TO_CHAR(RSRV_DATE3, 'yyyy-mm-dd hh24:mi:ss') RSRV_DATE3,
       RSRV_TAG1,
       RSRV_TAG2,
       RSRV_TAG3
  FROM TF_F_CUST_GROUP
 WHERE CUST_ID = TO_NUMBER(:CUST_ID)
   AND REMOVE_TAG = :REMOVE_TAG
