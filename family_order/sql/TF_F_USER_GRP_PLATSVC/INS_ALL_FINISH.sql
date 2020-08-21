INSERT INTO TF_F_USER_GRP_PLATSVC(PARTITION_ID, USER_ID, SERVICE_ID, SERV_CODE, SERIAL_NUMBER, GROUP_ID, BIZ_TYPE_CODE, BIZ_CODE, BIZ_ATTR, BIZ_NAME, BIZ_IN_CODE, BIZ_STATUS, BIZ_STATE_CODE, BIZ_PRI, AUTH_CODE, USAGE_DESC, INTRO_URL, BILLING_TYPE, BILLING_MODE, PRICE, PRE_CHARGE, CS_TEL, CS_URL, ACCESS_MODE, ACCESS_NUMBER, SI_BASE_IN_CODE, SI_BASE_IN_CODE_A, EC_BASE_IN_CODE, EC_BASE_IN_CODE_A, MAX_ITEM_PRE_DAY, MAX_ITEM_PRE_MON, DELIVER_NUM, FORBID_START_TIME_A, FORBID_END_TIME_A, FORBID_START_TIME_B, FORBID_END_TIME_B, FORBID_START_TIME_C, FORBID_END_TIME_C, FORBID_START_TIME_D, FORBID_END_TIME_D, IS_TEXT_ECGN, DEFAULT_ECGN_LANG, TEXT_ECGN_EN, TEXT_ECGN_ZH, OPR_EFF_TIME, OPR_SEQ_ID, OPER_STATE, ADMIN_NUM, MAS_ID, FIRST_DATE, PLAT_SYNC_STATE, START_DATE, END_DATE, UPDATE_DEPART_ID, UPDATE_STAFF_ID, UPDATE_TIME, REMARK, RSRV_NUM1, RSRV_NUM2, RSRV_NUM3, RSRV_NUM4, RSRV_NUM5, RSRV_STR1, RSRV_STR2, RSRV_STR3, RSRV_STR4, RSRV_STR5, RSRV_DATE1, RSRV_DATE2, RSRV_DATE3, RSRV_TAG1, RSRV_TAG2, RSRV_TAG3) 
VALUES (MOD(to_number(:USER_ID),10000), to_number(:USER_ID) , :SERVICE_ID, :SERV_CODE, :SERIAL_NUMBER, :GROUP_ID, :BIZ_TYPE_CODE, :BIZ_CODE, :BIZ_ATTR, :BIZ_NAME, :BIZ_IN_CODE, :BIZ_STATUS, :BIZ_STATE_CODE, :BIZ_PRI, :AUTH_CODE, :USAGE_DESC, :INTRO_URL, :BILLING_TYPE, :BILLING_MODE, :PRICE, :PRE_CHARGE, :CS_TEL, :CS_URL, :ACCESS_MODE, :ACCESS_NUMBER, :SI_BASE_IN_CODE, :SI_BASE_IN_CODE_A, :EC_BASE_IN_CODE, :EC_BASE_IN_CODE_A, to_number(:MAX_ITEM_PRE_DAY) , to_number(:MAX_ITEM_PRE_MON) , to_number(:DELIVER_NUM) , :FORBID_START_TIME_A, :FORBID_END_TIME_A, :FORBID_START_TIME_B, :FORBID_END_TIME_B, :FORBID_START_TIME_C, :FORBID_END_TIME_C, :FORBID_START_TIME_D, :FORBID_END_TIME_D, :IS_TEXT_ECGN, :DEFAULT_ECGN_LANG, :TEXT_ECGN_EN, :TEXT_ECGN_ZH, to_date(:OPR_EFF_TIME,'yyyy-mm-dd hh24:mi:ss') , :OPR_SEQ_ID, :OPER_STATE, :ADMIN_NUM, :MAS_ID, to_date(:FIRST_DATE,'yyyy-mm-dd hh24:mi:ss') , :PLAT_SYNC_STATE, to_date(:START_DATE,'yyyy-mm-dd hh24:mi:ss') , to_date(:END_DATE,'yyyy-mm-dd hh24:mi:ss') , :UPDATE_DEPART_ID, :UPDATE_STAFF_ID, to_date(:UPDATE_TIME,'yyyy-mm-dd hh24:mi:ss') , :REMARK, :RSRV_NUM1, :RSRV_NUM2, :RSRV_NUM3, to_number(:RSRV_NUM4) , to_number(:RSRV_NUM5) , :RSRV_STR1, :RSRV_STR2, :RSRV_STR3, :RSRV_STR4, :RSRV_STR5, to_date(:RSRV_DATE1,'yyyy-mm-dd hh24:mi:ss') , to_date(:RSRV_DATE2,'yyyy-mm-dd hh24:mi:ss') , to_date(:RSRV_DATE3,'yyyy-mm-dd hh24:mi:ss') , :RSRV_TAG1, :RSRV_TAG2, :RSRV_TAG3)