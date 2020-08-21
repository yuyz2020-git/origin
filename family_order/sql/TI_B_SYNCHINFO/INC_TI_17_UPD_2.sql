UPDATE TI_B_ACCOUNT t SET t.modify_tag = '2'
        WHERE EXISTS (SELECT 1 FROM (SELECT PARTITION_ID,ACCT_ID,CUST_ID,PAY_NAME,PAY_MODE_CODE,ACCT_PASSWD,ACCT_TAG,NET_TYPE_CODE,EPARCHY_CODE,CITY_CODE,BANK_CODE,BANK_ACCT_NO,SCORE_VALUE,CREDIT_CLASS_ID,BASIC_CREDIT_VALUE,CREDIT_VALUE,DEBUTY_USER_ID,DEBUTY_CODE,CONTRACT_NO,DEPOSIT_PRIOR_RULE_ID,ITEM_PRIOR_RULE_ID,OPEN_DATE,REMOVE_TAG,REMOVE_DATE,UPDATE_STAFF_ID,UPDATE_DEPART_ID,UPDATE_TIME,REMARK,RSRV_STR1,RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5,RSRV_STR6,RSRV_STR7,RSRV_STR8,RSRV_STR9,RSRV_STR10
                               FROM TI_B_ACCOUNT
                               WHERE sync_sequence = to_number(:SYNC_SEQUENCE)
                               AND MODIFY_TAG='9'
                             MINUS
                             SELECT PARTITION_ID,ACCT_ID,CUST_ID,PAY_NAME,PAY_MODE_CODE,ACCT_PASSWD,ACCT_TAG,NET_TYPE_CODE,EPARCHY_CODE,CITY_CODE,BANK_CODE,BANK_ACCT_NO,SCORE_VALUE,CREDIT_CLASS_ID,BASIC_CREDIT_VALUE,CREDIT_VALUE,DEBUTY_USER_ID,DEBUTY_CODE,CONTRACT_NO,DEPOSIT_PRIOR_RULE_ID,ITEM_PRIOR_RULE_ID,OPEN_DATE,REMOVE_TAG,REMOVE_DATE,UPDATE_STAFF_ID,UPDATE_DEPART_ID,UPDATE_TIME,REMARK,RSRV_STR1,RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5,RSRV_STR6,RSRV_STR7,RSRV_STR8,RSRV_STR9,RSRV_STR10
                               FROM TF_B_TRADE_ACCOUNT_BAK
                               WHERE TRADE_ID=:TRADE_ID
                               AND accept_month=:ACCEPT_MONTH ) b
               WHERE b.acct_id = t.acct_id )
       AND sync_sequence = to_number(:SYNC_SEQUENCE)
       AND modify_tag = '9'