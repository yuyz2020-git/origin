DELETE TF_F_USER_PLATSVC_ATTR A
 WHERE PARTITION_ID = MOD(:USER_ID, 10000)
   AND USER_ID = :USER_ID
   AND SERVICE_ID = :SERVICE_ID
   AND EXISTS
 (SELECT 1
          FROM TF_B_TRADE_PLATSVC_ATTR
         WHERE ACCEPT_MONTH = TO_NUMBER(SUBSTR(:TRADE_ID, 5, 2))
           AND TRADE_ID = :TRADE_ID
           AND USER_ID = :USER_ID
           AND SERVICE_ID = :SERVICE_ID
           AND USER_ID = A.USER_ID
           AND SERVICE_ID = A.SERVICE_ID
           AND INFO_CODE = A.INFO_CODE)