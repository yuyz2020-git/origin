SELECT TO_CHAR(A.USER_ID) USER_ID,
       TO_CHAR(A.CUST_ID) CUST_ID,
       A.SERIAL_NUMBER,
       A.REMOVE_TAG
  FROM TF_F_USER A, TF_F_CUSTOMER B
 WHERE 1=1
   AND A.PARTITION_ID = MOD(A.USER_ID,10000)
   AND A.CUST_ID = B.CUST_ID
   AND B.PARTITION_ID = MOD(B.CUST_ID,10000)
   AND B.PSPT_ID = :PSPT_ID 