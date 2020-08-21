SELECT DISTINCT :SYNC_SEQUENCE SYNC_SEQUENCE, :SYNC_DAY SYNC_DAY, '8' MODIFY_TAG, 
			:TRADE_ID TRADE_ID, B.PARTITION_ID, B.ACCT_ID, B.INST_ID, B.PAY_MODE_CODE,
			B.EPARCHY_CODE, B.CITY_CODE, B.SUPER_BANK_CODE,
			B.BANK_CODE, B.BANK_ACCT_NO, B.BANK_ACCT_NAME,
			B.CONTRACT_ID, B.CONTRACT_NAME, B.CONTACT,
			B.CONTACT_PHONE, B.POST_ADDRESS, B.POST_CODE,
			B.CONSIGN_MODE, B.PRIORITY, B.PAYMENT_ID,
			B.PAY_FEE_MODE_CODE, B.ASSISTANT_TAG, B.ACCT_BALANCE_ID,
			B.ACT_TAG, B.START_CYCLE_ID, B.END_CYCLE_ID,
			B.UPDATE_STAFF_ID, B.UPDATE_DEPART_ID, B.UPDATE_TIME,
			B.REMARK, B.RSRV_STR1, B.RSRV_STR2, B.RSRV_STR3,
			B.RSRV_STR4, B.RSRV_STR5, B.RSRV_STR6, B.RSRV_STR7,
			B.RSRV_STR8, B.RSRV_STR9, B.RSRV_STR10
  FROM TF_F_ACCOUNT_CONSIGN B
 WHERE B.ACCT_ID = :ACCT_ID
   AND B.PARTITION_ID = MOD(:ACCT_ID, 10000)