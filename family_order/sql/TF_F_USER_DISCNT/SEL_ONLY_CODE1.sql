SELECT
       T.DISCNT_CODE,
       T.START_DATE,
       T.END_DATE 
  FROM TF_F_USER_DISCNT T
 WHERE T.USER_ID=TO_NUMBER(:USER_ID)
   AND T.PARTITION_ID=MOD(TO_NUMBER(:USER_ID), 10000)
   AND T.PRODUCT_ID=:PRODUCT_ID
   AND T.DISCNT_CODE=:DISCNT_CODE
   AND SYSDATE BETWEEN T.START_DATE AND T.END_DATE
