INSERT INTO TI_B_ACCOUNT
        (SYNC_SEQUENCE, SYNC_DAY, MODIFY_TAG, TRADE_ID, PARTITION_ID, ACCT_ID,
         CUST_ID, PAY_NAME, PAY_MODE_CODE, ACCT_DIFF_CODE, ACCT_PASSWD, ACCT_TAG,
         NET_TYPE_CODE, EPARCHY_CODE, CITY_CODE, BANK_CODE, BANK_ACCT_NO,
         SCORE_VALUE, CREDIT_CLASS_ID, BASIC_CREDIT_VALUE, CREDIT_VALUE,
         DEBUTY_USER_ID, DEBUTY_CODE, CONTRACT_NO, DEPOSIT_PRIOR_RULE_ID,
         ITEM_PRIOR_RULE_ID, OPEN_DATE, REMOVE_TAG, REMOVE_DATE, UPDATE_STAFF_ID,
         UPDATE_DEPART_ID, UPDATE_TIME, REMARK, RSRV_STR1, RSRV_STR2, RSRV_STR3,
         RSRV_STR4, RSRV_STR5, RSRV_STR6, RSRV_STR7, RSRV_STR8, RSRV_STR9,
         RSRV_STR10)
        SELECT :SYNC_SEQUENCE, :SYNC_DAY,
               DECODE(B.MODIFY_TAG, '0', '0', '1', '2', '2', '2', '2'),
               B.TRADE_ID, MOD(B.ACCT_ID, 10000), B.ACCT_ID, B.CUST_ID,
               B.PAY_NAME, B.PAY_MODE_CODE, B.ACCT_DIFF_CODE, B.ACCT_PASSWD,
               B.ACCT_TAG, B.NET_TYPE_CODE, B.EPARCHY_CODE, B.CITY_CODE,
               B.BANK_CODE, B.BANK_ACCT_NO, B.SCORE_VALUE, B.CREDIT_CLASS_ID,
               B.BASIC_CREDIT_VALUE, B.CREDIT_VALUE, B.DEBUTY_USER_ID,
               B.DEBUTY_CODE, B.CONTRACT_NO, B.DEPOSIT_PRIOR_RULE_ID,
               B.ITEM_PRIOR_RULE_ID, B.OPEN_DATE, B.REMOVE_TAG, B.REMOVE_DATE,
               B.UPDATE_STAFF_ID, B.UPDATE_DEPART_ID, B.UPDATE_TIME, B.REMARK,
               B.RSRV_STR1, B.RSRV_STR2, B.RSRV_STR3, B.RSRV_STR4, B.RSRV_STR5,
               B.RSRV_STR6, B.RSRV_STR7, B.RSRV_STR8, B.RSRV_STR9, B.RSRV_STR10
          FROM TF_B_TRADE_ACCOUNT B
         WHERE B.TRADE_ID = :TRADE_ID
           AND B.ACCEPT_MONTH = :ACCEPT_MONTH