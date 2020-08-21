select   
  to_char(TRADE_ID) TRADE_ID, ACCEPT_MONTH, to_char(ACCT_ID) ACCT_ID, to_char(CUST_ID) CUST_ID, PAY_NAME, PAY_MODE_CODE, ACCT_PASSWD, NET_TYPE_CODE, EPARCHY_CODE, CITY_CODE, BANK_CODE, BANK_ACCT_NO, to_char(SCORE_VALUE) SCORE_VALUE, CREDIT_CLASS_ID, to_char(BASIC_CREDIT_VALUE) BASIC_CREDIT_VALUE, to_char(CREDIT_VALUE) CREDIT_VALUE, to_char(DEBUTY_USER_ID) DEBUTY_USER_ID, DEBUTY_CODE, CONTRACT_NO, DEPOSIT_PRIOR_RULE_ID, ITEM_PRIOR_RULE_ID, to_char(OPEN_DATE,'yyyy-mm-dd hh24:mi:ss') OPEN_DATE, REMOVE_TAG, to_char(REMOVE_DATE,'yyyy-mm-dd hh24:mi:ss') REMOVE_DATE, MODIFY_TAG, UPDATE_STAFF_ID, UPDATE_DEPART_ID, to_char(UPDATE_TIME,'yyyy-mm-dd hh24:mi:ss') UPDATE_TIME, REMARK, RSRV_STR1, RSRV_STR2, RSRV_STR3, RSRV_STR4, RSRV_STR5, RSRV_STR6, RSRV_STR7, RSRV_STR8, RSRV_STR9, RSRV_STR10
from tf_b_trade_account t
where t.trade_id=to_number(:TRADE_ID)
and   t.accept_month=TO_NUMBER(SUBSTR(:TRADE_ID,5,2))