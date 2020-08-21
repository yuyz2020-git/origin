INSERT INTO TI_B_ACCOUNT_CONSIGN(SYNC_SEQUENCE,MODIFY_TAG,TRADE_ID,PARTITION_ID,ACCT_ID,PAY_MODE_CODE,EPARCHY_CODE,CITY_CODE,SUPER_BANK_CODE,BANK_CODE,BANK_ACCT_NO,BANK_ACCT_NAME,CONTRACT_ID,CONTRACT_NAME,CONTACT,CONTACT_PHONE,POST_ADDRESS,POST_CODE,CONSIGN_MODE,PRIORITY,PAYMENT_ID,PAY_FEE_MODE_CODE,ASSISTANT_TAG,ACCT_BALANCE_ID,ACT_TAG,START_CYCLE_ID,END_CYCLE_ID,UPDATE_STAFF_ID,UPDATE_DEPART_ID,UPDATE_TIME,REMARK,RSRV_STR1,RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5,RSRV_STR6,RSRV_STR7,RSRV_STR8,RSRV_STR9,RSRV_STR10)
     SELECT :SYNC_SEQUENCE,'2',:TRADE_ID,a.PARTITION_ID,a.ACCT_ID,a.PAY_MODE_CODE,nvl(a.EPARCHY_CODE,'0'),nvl(a.CITY_CODE,'0'),a.SUPER_BANK_CODE,a.BANK_CODE,a.BANK_ACCT_NO,a.BANK_ACCT_NAME,a.CONTRACT_ID,a.CONTRACT_NAME,a.CONTACT,a.CONTACT_PHONE,a.POST_ADDRESS,a.POST_CODE,a.CONSIGN_MODE,a.PRIORITY,a.PAYMENT_ID,a.PAY_FEE_MODE_CODE,a.ASSISTANT_TAG,a.ACCT_BALANCE_ID,a.ACT_TAG,a.START_CYCLE_ID,a.END_CYCLE_ID,a.UPDATE_STAFF_ID,a.UPDATE_DEPART_ID,a.UPDATE_TIME,a.REMARK,a.RSRV_STR1,a.RSRV_STR2,a.RSRV_STR3,a.RSRV_STR4,a.RSRV_STR5,a.RSRV_STR6,a.RSRV_STR7,a.RSRV_STR8,a.RSRV_STR9,a.RSRV_STR10
     from TF_B_TRADE_CONSIGN_BAK a 
     where a.trade_id = :TRADE_ID
      AND a.accept_month = :ACCEPT_MONTH
      and NOT EXISTS (SELECT 1 FROM TI_B_ACCOUNT_CONSIGN
                         WHERE sync_sequence = TO_NUMBER(:SYNC_SEQUENCE)
                           AND a.acct_id = acct_id
                        )