SELECT C.PRODUCT_ID,A.GROUP_ID,A.CUST_ID,B.USER_ID
  FROM TF_F_CUST_GROUP A,TF_F_USER B,TF_F_USER_PRODUCT C
 WHERE A.GROUP_ID = :GROUP_ID
   AND A.CUST_ID = B.CUST_ID
   AND B.USER_ID = C.USER_ID 
  AND SYSDATE BETWEEN C.START_DATE AND C.END_DATE 