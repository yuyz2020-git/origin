SELECT ACCT_DIFF_CODE
  FROM TF_F_ACCOUNT
 WHERE CUST_ID = (
 					SELECT CUST_ID 
 					  FROM TF_F_USER
 					 WHERE SERIAL_NUMBER = :SERIAL_NUMBER
 				  )