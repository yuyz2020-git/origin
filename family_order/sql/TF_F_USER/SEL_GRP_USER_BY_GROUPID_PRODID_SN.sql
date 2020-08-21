SELECT U.USER_ID, U.SERIAL_NUMBER, U.CUST_ID, C.CUST_NAME, C.GROUP_ID,
       P.PRODUCT_ID, U.REMOVE_TAG
  FROM TF_F_USER U, TF_F_CUST_GROUP C, TF_F_USER_PRODUCT P
 WHERE U.CUST_ID = C.CUST_ID
   AND U.USER_ID = P.USER_ID
   AND U.PARTITION_ID = P.PARTITION_ID
   AND C.GROUP_ID = :GROUP_ID
   AND P.PRODUCT_ID = :PRODUCT_ID
   AND U.SERIAL_NUMBER = :SERIAL_NUMBER
   AND U.NET_TYPE_CODE = :NET_TYPE_CODE
   AND U.REMOVE_TAG = :REMOVE_TAG
