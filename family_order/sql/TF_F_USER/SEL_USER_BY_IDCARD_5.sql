SELECT TO_CHAR(A.USER_ID) USER_ID,
       TO_CHAR(A.CUST_ID) CUST_ID,
       A.SERIAL_NUMBER,
       A.OPEN_DATE
  FROM TF_F_USER A 
 WHERE 1=1
   AND A.PARTITION_ID = MOD(A.USER_ID,10000)
   AND A.USER_ID=:USER_ID
   AND A.SERIAL_NUMBER=:SERIAL_NUMBER
   AND A.REMOVE_TAG ='6' 
   AND A.UPDATE_TIME>(SYSDATE-183)

