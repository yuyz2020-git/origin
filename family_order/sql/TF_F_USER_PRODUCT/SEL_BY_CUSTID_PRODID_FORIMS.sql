 SELECT TO_CHAR(U.CUST_ID) CUST_ID,
        TO_CHAR(U.USER_ID) USER_ID,
        U.SERIAL_NUMBER,
        TO_CHAR(P.PRODUCT_ID) PRODUCT_ID
   FROM TF_F_USER U, TF_F_USER_PRODUCT P
  WHERE 1 = 1
    AND U.CUST_ID = TO_NUMBER(:CUST_ID)
    AND U.USER_ID = P.USER_ID
    AND U.PARTITION_ID = P.PARTITION_ID
    AND U.REMOVE_TAG = '0'
    AND P.PRODUCT_ID = TO_NUMBER(:PRODUCT_ID)
    AND SYSDATE BETWEEN P.START_DATE AND P.END_DATE