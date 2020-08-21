INSERT INTO TI_B_USER_SPECIALEPAY(SYNC_SEQUENCE,MODIFY_TAG,TRADE_ID,PARTITION_ID, USER_ID, USER_ID_A, ACCT_ID, ACCT_ID_B,  PAYITEM_CODE, START_CYCLE_ID, END_CYCLE_ID, BIND_TYPE, LIMIT_TYPE, LIMIT, COMPLEMENT_TAG, RSRV_STR1, RSRV_STR2, RSRV_STR3, UPDATE_STAFF_ID, UPDATE_DEPART_ID, UPDATE_TIME)
SELECT TO_NUMBER(:SYNC_SEQUENCE),:MODIFY_TAG,TO_NUMBER(:TRADE_ID), PARTITION_ID, USER_ID, USER_ID_A, ACCT_ID, ACCT_ID_B, PAYITEM_CODE, START_CYCLE_ID, END_CYCLE_ID, BIND_TYPE, LIMIT_TYPE, LIMIT, COMPLEMENT_TAG, RSRV_STR1, RSRV_STR2, RSRV_STR3, UPDATE_STAFF_ID, UPDATE_DEPART_ID, UPDATE_TIME
FROM TF_F_USER_SPECIALEPAY
WHERE user_id = TO_NUMBER(:USER_ID)
AND PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)