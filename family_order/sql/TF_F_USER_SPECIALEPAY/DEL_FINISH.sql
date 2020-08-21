UPDATE TF_F_USER_SPECIALEPAY SET 
END_CYCLE_ID = :END_CYCLE_ID, UPDATE_STAFF_ID = :UPDATE_STAFF_ID, UPDATE_DEPART_ID = :UPDATE_DEPART_ID, UPDATE_TIME = to_date(:UPDATE_TIME,'yyyy-mm-dd hh24:mi:ss') 
WHERE USER_ID = to_number(:USER_ID) and ACCT_ID = to_number(:ACCT_ID) and PAYITEM_CODE = :PAYITEM_CODE and START_CYCLE_ID = :START_CYCLE_ID