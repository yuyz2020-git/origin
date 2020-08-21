UPDATE TF_F_USER_ACCOUNT 
SET IDENT_END_TIME =to_date(:IDENT_END_TIME ,'yyyy-mm-dd hh24:mi;ss'),UPDATE_TIME=sysdate,UPDATE_STAFF_ID=:TRADE_STAFF_ID,UPDATE_DEPART_ID=:TRADE_DEPART_ID
WHERE 1=1 
AND ACCOUNT= :MICRO_ACCOUNT 
AND SERIAL_NUMBER= :SERIAL_NUMBER AND USER_ID= :USER_ID 
AND PARTITION_ID= MOD(:USER_ID, 10000) 
AND sysdate between IDENT_START_TIME and IDENT_END_TIME
