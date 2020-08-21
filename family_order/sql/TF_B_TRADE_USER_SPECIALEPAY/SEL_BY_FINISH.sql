select
to_char(TRADE_ID) TRADE_ID, ACCEPT_MONTH, to_char(USER_ID) USER_ID, to_char(USER_ID_A) USER_ID_A, to_char(ACCT_ID) ACCT_ID, to_char(ACCT_ID_B) ACCT_ID_B, PAYITEM_CODE, START_CYCLE_ID, END_CYCLE_ID, BIND_TYPE, LIMIT_TYPE, to_char(LIMIT) LIMIT, COMPLEMENT_TAG, MODIFY_TAG, to_char(UPDATE_TIME,'yyyy-mm-dd hh24:mi:ss') UPDATE_TIME, UPDATE_STAFF_ID, UPDATE_DEPART_ID, REMARK, RSRV_STR1, RSRV_STR2, RSRV_STR3
 FROM TF_B_TRADE_USER_SPECIALEPAY
 WHERE trade_id = :TRADE_ID
        AND accept_month = TO_NUMBER(SUBSTR(:TRADE_ID,5,2))
        AND modify_tag != '9'