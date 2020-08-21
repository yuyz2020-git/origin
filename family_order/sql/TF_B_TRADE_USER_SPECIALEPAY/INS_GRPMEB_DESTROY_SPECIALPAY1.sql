INSERT INTO TF_B_TRADE_USER_SPECIALEPAY(TRADE_ID, ACCEPT_MONTH, USER_ID, USER_ID_A, ACCT_ID, ACCT_ID_B, PAYITEM_CODE, START_CYCLE_ID, END_CYCLE_ID, BIND_TYPE, LIMIT_TYPE, LIMIT, COMPLEMENT_TAG, MODIFY_TAG, UPDATE_TIME, UPDATE_STAFF_ID, UPDATE_DEPART_ID, REMARK, RSRV_STR1, RSRV_STR2, RSRV_STR3) 
   SELECT :TRADE_ID,SUBSTR(:TRADE_ID, 5, 2), USER_ID, USER_ID_A, ACCT_ID, ACCT_ID_B, PAYITEM_CODE, START_CYCLE_ID, :END_CYCLE_ID, BIND_TYPE, LIMIT_TYPE, LIMIT, COMPLEMENT_TAG, :MODIFY_TAG, TO_DATE(:UPDATE_TIME, 'yyyy-mm-dd hh24:mi:ss'), :UPDATE_STAFF_ID, :UPDATE_DEPART_ID, '过户', RSRV_STR1, RSRV_STR2, RSRV_STR3
   FROM TF_F_USER_SPECIALEPAY 
   WHERE USER_ID=TO_NUMBER(:USER_ID)
   AND PARTITION_ID = MOD(TO_NUMBER(:USER_ID),10000)
   AND :END_CYCLE_ID > END_CYCLE_ID 
   AND USER_ID_A NOT IN (SELECT USER_ID_A FROM TF_F_RELATION_UU U WHERE U.USER_ID_B = USER_ID 
   							AND (U.RELATION_TYPE_CODE = '90' OR U.RELATION_TYPE_CODE = '81') AND U.END_DATE>SYSDATE)