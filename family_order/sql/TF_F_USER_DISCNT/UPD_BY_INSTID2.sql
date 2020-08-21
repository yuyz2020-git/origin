UPDATE TF_F_USER_DISCNT A
   SET (PRODUCT_ID, PACKAGE_ID) =
       (SELECT PRODUCT_ID, PACKAGE_ID
          FROM TF_B_TRADE_DISCNT_BAK B
         WHERE B.TRADE_ID = TO_NUMBER(:TRADE_ID)
           AND B.ACCEPT_MONTH = TO_NUMBER(SUBSTR(:TRADE_ID, 5, 2))
           AND B.DISCNT_CODE = :DISCNT_CODE
           AND A.INST_ID = B.INST_ID
           AND B.INST_ID = :INST_ID),
       UPDATE_TIME = SYSDATE
 WHERE USER_ID = TO_NUMBER(:USER_ID)
   AND PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)
   AND A.DISCNT_CODE = :DISCNT_CODE
   AND A.INST_ID = :INST_ID
   AND EXISTS
 (SELECT 1
          FROM TF_B_TRADE_DISCNT_BAK B
         WHERE B.TRADE_ID = TO_NUMBER(:TRADE_ID)
           AND B.ACCEPT_MONTH = TO_NUMBER(SUBSTR(:TRADE_ID, 5, 2))
           AND B.DISCNT_CODE = :DISCNT_CODE
           AND A.INST_ID = B.INST_ID
           AND B.INST_ID = :INST_ID)