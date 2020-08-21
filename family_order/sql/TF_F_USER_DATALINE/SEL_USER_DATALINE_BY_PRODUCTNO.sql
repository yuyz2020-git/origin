SELECT *
  FROM TF_F_USER_DATALINE T
 WHERE 1=1
   AND T.PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)
   AND T.USER_ID = :USER_ID
   AND T.PRODUCT_NO = :PRODUCT_NO
   AND T.END_DATE > SYSDATE   