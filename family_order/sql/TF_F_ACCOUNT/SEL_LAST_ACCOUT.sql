select 
t.PARTITION_ID, to_char(t.ACCT_ID) ACCT_ID, to_char(t.CUST_ID) CUST_ID, t.PAY_NAME, t.PAY_MODE_CODE, t.ACCT_DIFF_CODE, t.ACCT_PASSWD, t.ACCT_TAG, t.NET_TYPE_CODE, t.EPARCHY_CODE, t.CITY_CODE, t.BANK_CODE, t.BANK_ACCT_NO, to_char(t.SCORE_VALUE) SCORE_VALUE, t.CREDIT_CLASS_ID, to_char(t.BASIC_CREDIT_VALUE) BASIC_CREDIT_VALUE, to_char(t.CREDIT_VALUE) CREDIT_VALUE, to_char(t.DEBUTY_USER_ID) DEBUTY_USER_ID, t.DEBUTY_CODE, t.CONTRACT_NO, t.DEPOSIT_PRIOR_RULE_ID, t.ITEM_PRIOR_RULE_ID, to_char(t.OPEN_DATE,'yyyy-mm-dd hh24:mi:ss') OPEN_DATE, t.REMOVE_TAG, to_char(t.REMOVE_DATE,'yyyy-mm-dd hh24:mi:ss') REMOVE_DATE, t.UPDATE_STAFF_ID, t.UPDATE_DEPART_ID, to_char(t.UPDATE_TIME,'yyyy-mm-dd hh24:mi:ss') UPDATE_TIME, t.REMARK, t.RSRV_STR1, t.RSRV_STR2, t.RSRV_STR3, t.RSRV_STR4, t.RSRV_STR5, t.RSRV_STR6, t.RSRV_STR7, t.RSRV_STR8, t.RSRV_STR9, t.RSRV_STR10
 from tf_f_account t
 where t.cust_id=TO_NUMBER(:CUST_ID)
     and t.remove_tag='0'
     and t.open_date+0= (select MAX(a.open_date) from tf_f_account a where a.remove_tag='0' and a.cust_id=TO_NUMBER(:CUST_ID))