SELECT PARTITION_ID,
       TO_CHAR(USER_ID) USER_ID,
       TO_CHAR(USER_ID_A) USER_ID_A,
       DISCNT_CODE,
       SPEC_TAG,
       RELATION_TYPE_CODE,
       TO_CHAR(START_DATE, 'yyyy-mm-dd hh24:mi:ss') START_DATE,
       TO_CHAR(END_DATE, 'yyyy-mm-dd hh24:mi:ss') END_DATE
  FROM TF_F_USER_DISCNT D
 WHERE D.PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)
   AND D.USER_ID = TO_NUMBER(:USER_ID)
   AND D.RELATION_TYPE_CODE = :RELATION_TYPE_CODE
   AND D.PRODUCT_ID = :PRODUCT_ID
   AND D.PACKAGE_ID = :PACKAGE_ID
   AND D.END_DATE < SYSDATE
 AND D.END_DATE > to_date(:END_DATE,'yyyy-mm-dd hh24:mi:ss')
   ORDER BY END_DATE DESC