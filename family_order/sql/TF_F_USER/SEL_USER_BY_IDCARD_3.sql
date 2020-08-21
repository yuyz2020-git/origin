SELECT TO_CHAR(A.USER_ID) USER_ID,
       TO_CHAR(A.CUST_ID) CUST_ID,
       A.SERIAL_NUMBER,
       A.OPEN_DATE
  FROM TF_F_USER A, TF_F_CUSTOMER B 
 WHERE 1=1
   AND A.PARTITION_ID = MOD(A.USER_ID,10000)
   AND A.CUST_ID = B.CUST_ID
   AND B.PARTITION_ID = MOD(B.CUST_ID,10000)
   AND B.PSPT_ID = :PSPT_ID    
   AND A.REMOVE_TAG IN ( '1','2','3','4') 
   AND A.DESTROY_TIME>(SYSDATE-183)
   AND A.USER_STATE_CODESET IN ('6','8','9','E','F') 

