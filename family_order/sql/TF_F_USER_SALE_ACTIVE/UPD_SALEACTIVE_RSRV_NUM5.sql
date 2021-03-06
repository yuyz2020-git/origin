UPDATE TF_F_USER_SALE_ACTIVE
   SET RSRV_NUM5 = TO_NUMBER(:RSRV_NUM5),
       UPDATE_TIME = SYSDATE
 WHERE USER_ID = TO_NUMBER(:USER_ID)
   AND PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)
   AND PRODUCT_ID = :PRODUCT_ID
   AND PACKAGE_ID = :PACKAGE_ID
   AND RELATION_TRADE_ID = :RELATION_TRADE_ID