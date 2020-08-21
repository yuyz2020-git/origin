SELECT 		VIP_ID, to_char(CUST_ID) CUST_ID, to_char(USECUST_ID) USECUST_ID,
			to_char(USER_ID) USER_ID, SERIAL_NUMBER, NET_TYPE_CODE, CUST_NAME, 
			USECUST_NAME, USEPSPT_TYPE_CODE, USEPSPT_ID, 
			to_char(USEPSPT_END_DATE,'yyyy-mm-dd hh24:mi:ss') USEPSPT_END_DATE, 
      USEPSPT_ADDR, USEPHONE, USEPOST_ADDR, EPARCHY_CODE, CITY_CODE, 
      VIP_TYPE_CODE, VIP_CLASS_ID, LAST_VIP_TYPE_CODE, LAST_VIP_CLASS_ID, 
      to_char(CLASS_CHANGE_DATE,'yyyy-mm-dd hh24:mi:ss') CLASS_CHANGE_DATE, 
      VIP_TYPE_CODE_B, VIP_CLASS_ID_B, LAST_VIP_TYPE_CODE_B, LAST_VIP_CLASS_ID_B, 
      to_char(CLASS_CHANGE_DATE_B,'yyyy-mm-dd hh24:mi:ss') CLASS_CHANGE_DATE_B, 
      VIP_CARD_NO, VIP_CARD_TYPE, VIP_CARD_PASSWD, VIP_CARD_STATE, VIP_CARD_SPELL, 
      VIP_CARD_INFO, VIP_CARD_SEND_TYPE, 
      to_char(VIP_CARD_SEND_DATE,'yyyy-mm-dd hh24:mi:ss') VIP_CARD_SEND_DATE, 
      VIP_CARD_POST_ADDR, to_char(VIP_CARD_START_DATE,'yyyy-mm-dd hh24:mi:ss') VIP_CARD_START_DATE, 
      to_char(VIP_CARD_END_DATE,'yyyy-mm-dd hh24:mi:ss') VIP_CARD_END_DATE, 
      to_char(VIP_CARD_CHANGE_DATE,'yyyy-mm-dd hh24:mi:ss') VIP_CARD_CHANGE_DATE, 
      VIP_CARD_CHANGE_REASON, CUST_MANAGER_ID, CUST_MANAGER_ID_B, CUST_MANAGER_APPR, 
      to_char(ASSIGN_DATE,'yyyy-mm-dd hh24:mi:ss') ASSIGN_DATE, ASSIGN_STAFF_ID, 
      JOIN_TYPE, to_char(JOIN_DATE,'yyyy-mm-dd hh24:mi:ss') JOIN_DATE, 
      to_char(JOIN_DATE_B,'yyyy-mm-dd hh24:mi:ss') JOIN_DATE_B, JOIN_STAFF_ID, JOIN_DEPART_ID, 
      to_char(IDENTITY_CHK_DATE,'yyyy-mm-dd hh24:mi:ss') IDENTITY_CHK_DATE,
      to_char(IDENTITY_CHK_SCORE,'yyyy-mm-dd hh24:mi:ss') IDENTITY_CHK_SCORE, IDENTITY_PRI, 
      to_char(IDENTITY_EFF_DATE,'yyyy-mm-dd hh24:mi:ss') IDENTITY_EFF_DATE, 
      to_char(IDENTITY_EXP_DATE,'yyyy-mm-dd hh24:mi:ss') IDENTITY_EXP_DATE, GROUP_ID, 
      GROUP_CUST_NAME, to_char(MONTH_FEE) MONTH_FEE, HVALUE_TAG, to_char(CLUB_ID) CLUB_ID, 
      VISIT_NUM, SVC_NUM, SVC_NUM_B, INNET_NUM, SVC_MODE_CODE, SVC_CYCLE_CODE, 
      to_char(BIRTHDAY,'yyyy-mm-dd hh24:mi:ss') BIRTHDAY, BIRTHDAY_LUNAR, BIRTHDAY_FLAG, 
      APPROVAL_FLAG, APPROVAL_STAFF_ID, to_char(APPROVAL_TIME,'yyyy-mm-dd hh24:mi:ss') APPROVAL_TIME, 
      APPROVAL_DESC, GROUP_BRAND_CODE, BRAND_CODE, PRODUCT_ID, USER_TYPE_CODE, USER_STATE_CODESET, 
      to_char(OPEN_DATE,'yyyy-mm-dd hh24:mi:ss') OPEN_DATE, to_char(FIRST_CALL_TIME,'yyyy-mm-dd hh24:mi:ss') FIRST_CALL_TIME, 
      to_char(LAST_STOP_TIME,'yyyy-mm-dd hh24:mi:ss') LAST_STOP_TIME, to_char(SCORE_VALUE) SCORE_VALUE, 
      CREDIT_CLASS, to_char(CREDIT_VALUE) CREDIT_VALUE, CTAG_SET, CHECK_NO, to_char(TRADE_ID) TRADE_ID, 
      CANCEL_TAG, REMOVE_TAG, to_char(REMOVE_DATE,'yyyy-mm-dd hh24:mi:ss') REMOVE_DATE, REMOVE_STAFF_ID, 
      REMOVE_REASON, EXEMPT_SCORE_TAG,to_char(SYNC_TIME,'yyyy-mm-dd hh24:mi:ss') SYNC_TIME, 
      to_char(UPDATE_TIME,'yyyy-mm-dd hh24:mi:ss') UPDATE_TIME, UPDATE_STAFF_ID, UPDATE_DEPART_ID, REMARK
    FROM   TF_F_CUST_VIP 
    WHERE   USER_ID=to_number(:USER_ID)
    AND     REMOVE_TAG = :REMOVE_TAG