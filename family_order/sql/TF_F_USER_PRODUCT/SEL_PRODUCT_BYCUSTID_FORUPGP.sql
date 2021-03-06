SELECT U.SERIAL_NUMBER,U.USER_ID,P.PRODUCT_ID
  FROM TF_F_USER U, TF_F_USER_PRODUCT P
 WHERE U.CUST_ID = :CUST_ID
   AND U.REMOVE_TAG = '0'
   AND U.USER_ID = P.USER_ID
   AND U.PARTITION_ID = P.PARTITION_ID
   AND P.PRODUCT_ID = 7345
   AND P.END_DATE > SYSDATE