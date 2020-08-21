   SELECT A.USER_ID, A.SERIAL_NUMBER, A.CUST_ID, B.CUST_NAME, C.USECUST_NAME,
       C.CUST_TYPE, C.CUST_MANAGER_ID, A.CITY_CODE, A.EPARCHY_CODE
  FROM TF_F_USER A, TF_F_CUSTOMER B,
       (SELECT F.CUST_ID, F.USECUST_NAME,
                F.VIP_TYPE_CODE || '_' || F.VIP_CLASS_ID AS CUST_TYPE,
                F.CUST_MANAGER_ID
           FROM TF_F_CUST_VIP F
          WHERE F.USER_ID = :USER_ID
            AND F.REMOVE_TAG = '0'
            AND F.CUST_MANAGER_ID IS NOT NULL
         UNION ALL
         SELECT G.CUST_ID, G.USECUST_NAME,
                G.VIP_TYPE_CODE || '_' || G.VIP_CLASS_ID AS CUST_TYPE,
                G.CUST_MANAGER_ID
           FROM TF_F_CUST_VIP_SELFDEF G
          WHERE NOT EXISTS (SELECT 1
                   FROM TF_F_CUST_VIP H
                  WHERE G.CUST_ID = H.CUST_ID
                    AND H.REMOVE_TAG = '0'
                    AND H.CUST_MANAGER_ID IS NOT NULL)
            AND G.CUST_MANAGER_ID IS NOT NULL
            AND G.USER_ID = :USER_ID
            AND G.REMOVE_TAG = '0') C
 WHERE A.CUST_ID = B.CUST_ID
   AND B.PARTITION_ID = MOD(B.CUST_ID, 10000)
   AND B.CUST_ID = C.CUST_ID
   AND A.REMOVE_TAG = '0'
   AND B.REMOVE_TAG = '0'
   AND A.USER_ID = :USER_ID
   AND A.PARTITION_ID = MOD(:USER_ID, 10000)