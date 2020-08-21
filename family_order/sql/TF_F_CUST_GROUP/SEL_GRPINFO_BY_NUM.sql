SELECT G.GROUP_ID GROUP_ID, G.CUST_NAME GROUP_NAME, G.GROUP_MGR_SN GROUP_MGR_SN
  FROM TF_F_CUST_GROUPMEMBER GMB, TF_F_CUST_GROUP G
 WHERE GMB.REMOVE_TAG = '0'
   AND G.REMOVE_TAG = '0'
   AND GMB.GROUP_ID = G.GROUP_ID
   AND GMB.SERIAL_NUMBER = :SERIAL_NUMBER
UNION ALL
SELECT G.GROUP_ID GROUP_ID, G.CUST_NAME GROUP_NAME, G.GROUP_MGR_SN GROUP_MGR_SN
  FROM TF_F_RELATION_UU T,TF_F_USER U,TF_F_CUST_GROUP G
 WHERE T.SERIAL_NUMBER_B = :SERIAL_NUMBER
   AND T.RELATION_TYPE_CODE = '20'
   AND T.END_DATE > SYSDATE
   AND T.USER_ID_A = U.USER_ID
   AND T.SERIAL_NUMBER_A = U.SERIAL_NUMBER
   AND U.REMOVE_TAG = '0'
   AND U.CUST_ID = G.CUST_ID
   AND G.REMOVE_TAG = '0'  