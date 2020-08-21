INSERT INTO TF_F_ACCOUNT_CONSIGN(PARTITION_ID, ACCT_ID, PAY_MODE_CODE, EPARCHY_CODE, CITY_CODE, SUPER_BANK_CODE, BANK_CODE, BANK_ACCT_NO, BANK_ACCT_NAME, CONTRACT_ID, CONTRACT_NAME, CONTACT, CONTACT_PHONE, POST_ADDRESS, POST_CODE, CONSIGN_MODE, PRIORITY, PAYMENT_ID, PAY_FEE_MODE_CODE, ASSISTANT_TAG, ACCT_BALANCE_ID, ACT_TAG, START_CYCLE_ID, END_CYCLE_ID, UPDATE_STAFF_ID, UPDATE_DEPART_ID, UPDATE_TIME, REMARK, RSRV_STR1, RSRV_STR2, RSRV_STR3, RSRV_STR4, RSRV_STR5, RSRV_STR6, RSRV_STR7, RSRV_STR8, RSRV_STR9, RSRV_STR10) 
VALUES (MOD(to_number(:ACCT_ID),10000), to_number(:ACCT_ID) , :PAY_MODE_CODE, :EPARCHY_CODE, :CITY_CODE, :SUPER_BANK_CODE, :BANK_CODE, :BANK_ACCT_NO, :BANK_ACCT_NAME, :CONTRACT_ID, :CONTRACT_NAME, :CONTACT, :CONTACT_PHONE, :POST_ADDRESS, :POST_CODE, :CONSIGN_MODE, :PRIORITY, :PAYMENT_ID, :PAY_FEE_MODE_CODE, :ASSISTANT_TAG, to_number(:ACCT_BALANCE_ID) , :ACT_TAG, :START_CYCLE_ID, :END_CYCLE_ID, :UPDATE_STAFF_ID, :UPDATE_DEPART_ID, to_date(:UPDATE_TIME,'yyyy-mm-dd hh24:mi:ss') , :REMARK, :RSRV_STR1, :RSRV_STR2, :RSRV_STR3, :RSRV_STR4, :RSRV_STR5, :RSRV_STR6, :RSRV_STR7, :RSRV_STR8, :RSRV_STR9, :RSRV_STR10)