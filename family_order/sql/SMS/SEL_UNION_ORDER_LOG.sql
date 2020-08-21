SELECT U.SERIAL_NUMBER, U.USER_ID, P.BRAND_CODE, P.PRODUCT_ID, U.OPEN_DATE,
       NVL(UC.CITY_CODE, U.CITY_CODE) CITY_CODE, C.CUST_NAME, NP.NP_TAG,
       NP.PORT_IN_NETID,
       TO_CHAR(NP.PORT_OUT_DATE, 'YYYY-MM-DD HH24:MI:SS') PORT_OUT_DATE,
       TO_CHAR(NP.APPLY_DATE, 'YYYY-MM-DD HH24:MI:SS') APPLY_DATE,
       V.VIP_TYPE_CODE, V.VIP_CLASS_ID, V.CUST_MANAGER_ID,
       U.CUST_ID USER_CUST_ID, CG.USER_ID CUST_USER_ID, UU.USER_ID_A,
       U.REMOVE_TAG, NP.PORT_OUT_NETID
  FROM TF_F_USER_NP NP, TF_F_USER U, TF_F_USER_PRODUCT P, TF_F_USER_CITY UC,
       TF_F_CUSTOMER C, TF_F_CUST_VIP V, TF_F_CUST_GROUPMEMBER CG,
       TF_F_RELATION_UU UU
 WHERE NP.USER_ID = U.USER_ID
   AND U.PARTITION_ID = MOD(NP.USER_ID, 10000)
   AND UC.USER_ID(+) = U.USER_ID
   AND UC.END_DATE(+) > SYSDATE
   AND C.CUST_ID = U.CUST_ID
   AND C.PARTITION_ID = MOD(U.CUST_ID, 10000)
   AND V.CUST_ID(+) = U.CUST_ID
   AND V.REMOVE_TAG(+) = '0'
   AND NVL(V.VIP_CLASS_ID, 'n') = '1'
   AND NVL(V.VIP_TYPE_CODE, 'n') = '0'
   AND P.USER_ID = U.USER_ID
   AND P.MAIN_TAG = '1'
   AND NP.NP_TAG = '4'
   AND CG.MEMBER_CUST_ID(+) = U.CUST_ID
   AND CG.REMOVE_TAG(+) = '0'
   AND UU.RELATION_TYPE_CODE(+) = '20'
   AND UU.END_DATE(+) > SYSDATE
   AND UU.USER_ID_B(+) = U.USER_ID
   AND UU.PARTITION_ID(+) = MOD(U.USER_ID, 10000)
   AND NP.APPLY_DATE >= TRUNC(TO_DATE(:START_DATE, 'YYYY-MM-DD HH24:MI:SS'))
   AND NP.APPLY_DATE < TRUNC(TO_DATE(:END_DATE, 'YYYY-MM-DD HH24:MI:SS')) + 1
   AND U.SERIAL_NUMBER = :SERIAL_NUMBER
 ORDER BY NP.APPLY_DATE DESC
