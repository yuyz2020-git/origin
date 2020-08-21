INSERT INTO TF_B_TRADE_ACCOUNT(TRADE_ID, ACCEPT_MONTH, ACCT_ID, CUST_ID, PAY_NAME, PAY_MODE_CODE, ACCT_DIFF_CODE, ACCT_PASSWD, ACCT_TAG, NET_TYPE_CODE, EPARCHY_CODE, CITY_CODE, BANK_CODE, BANK_ACCT_NO, SCORE_VALUE, CREDIT_CLASS_ID, BASIC_CREDIT_VALUE, CREDIT_VALUE, DEBUTY_USER_ID, DEBUTY_CODE, CONTRACT_NO, DEPOSIT_PRIOR_RULE_ID, ITEM_PRIOR_RULE_ID, OPEN_DATE, REMOVE_TAG, REMOVE_DATE, MODIFY_TAG, UPDATE_STAFF_ID, UPDATE_DEPART_ID, UPDATE_TIME, REMARK, RSRV_STR1, RSRV_STR2, RSRV_STR3, RSRV_STR4, RSRV_STR5, RSRV_STR6, RSRV_STR7, RSRV_STR8, RSRV_STR9, RSRV_STR10) 
VALUES (to_number(:TRADE_ID) , :ACCEPT_MONTH, to_number(:ACCT_ID) , to_number(:CUST_ID) , :PAY_NAME, :PAY_MODE_CODE, :ACCT_DIFF_CODE, :ACCT_PASSWD, :ACCT_TAG, :NET_TYPE_CODE, :EPARCHY_CODE, :CITY_CODE, :BANK_CODE, :BANK_ACCT_NO, to_number(:SCORE_VALUE) , :CREDIT_CLASS_ID, to_number(:BASIC_CREDIT_VALUE) , to_number(:CREDIT_VALUE) , to_number(:DEBUTY_USER_ID) , :DEBUTY_CODE, :CONTRACT_NO, :DEPOSIT_PRIOR_RULE_ID, :ITEM_PRIOR_RULE_ID, to_date(:OPEN_DATE,'yyyy-mm-dd hh24:mi:ss') , :REMOVE_TAG, to_date(:REMOVE_DATE,'yyyy-mm-dd hh24:mi:ss') , :MODIFY_TAG, :UPDATE_STAFF_ID, :UPDATE_DEPART_ID, to_date(:UPDATE_TIME,'yyyy-mm-dd hh24:mi:ss') , :REMARK, :RSRV_STR1, :RSRV_STR2, :RSRV_STR3, :RSRV_STR4, :RSRV_STR5, :RSRV_STR6, :RSRV_STR7, :RSRV_STR8, :RSRV_STR9, :RSRV_STR10)