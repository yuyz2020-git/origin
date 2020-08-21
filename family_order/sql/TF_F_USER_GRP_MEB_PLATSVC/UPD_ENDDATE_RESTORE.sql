UPDATE TF_F_USER_GRP_MEB_PLATSVC V
   SET V.END_DATE = TO_DATE(:END_DATE, 'yyyy-mm-dd hh24:mi:ss')
 WHERE V.USER_ID = :USER_ID
   AND V.PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)
   AND EXISTS
 (SELECT 1
          FROM TF_B_TRADE_GRP_MEB_PLATSVC T
         WHERE T.TRADE_ID = :TRADE_ID
           AND T.USER_ID = V.USER_ID
           AND T.EC_SERIAL_NUMBER = V.EC_SERIAL_NUMBER
           AND EXISTS (SELECT 1
                  FROM TF_F_CUST_GROUP G, TF_F_USER U
                 WHERE U.USER_ID = T.EC_SERIAL_NUMBER
                   AND U.PARTITION_ID =
                       MOD(TO_NUMBER(T.EC_SERIAL_NUMBER), 10000)
                   AND G.CUST_ID = U.CUST_ID
                   AND G.REMOVE_TAG = '0'))