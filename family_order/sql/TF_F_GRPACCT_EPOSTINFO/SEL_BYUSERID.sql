select *from tf_f_grpacct_epostinfo where 1=1 
and CUST_ID=:CUST_ID 
and USER_ID=:USER_ID
and partition_id=MOD(TO_NUMBER(:USER_ID),10000)