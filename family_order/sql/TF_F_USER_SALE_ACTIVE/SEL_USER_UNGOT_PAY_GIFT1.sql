SELECT A.USER_ID, A.PRODUCT_ID, A.PACKAGE_ID, A.RELATION_TRADE_ID,
       TO_CHAR(A.END_DATE, 'yyyy-mm-dd hh24:mi:ss') END_DATE, PARAM_CODE,
       PARA_CODE1, PARA_CODE2, PARA_CODE3
  FROM TF_F_USER_SALE_ACTIVE A, TD_S_COMMPARA B
 WHERE A.USER_ID = :USER_ID
   AND A.PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)
   AND A.PROCESS_TAG = '0'
   AND A.END_DATE > SYSDATE
   AND A.PRODUCT_ID = B.PARAM_CODE
   AND A.PACKAGE_ID = B.PARA_CODE1
   AND B.END_DATE > SYSDATE
   AND B.PARAM_ATTR = '50'
   AND NVL(B.PARA_CODE4, '0') != 'V'
   AND A.PACKAGE_ID NOT IN
       (SELECT D.PACKAGE_ID
          FROM TF_F_USER_SALE_ACTIVE D, TD_S_COMMPARA E
         WHERE D.USER_ID = :USER_ID
           AND D.PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)
           AND D.PROCESS_TAG = '0'
           AND D.END_DATE > SYSDATE
           AND D.PRODUCT_ID = E.PARAM_CODE
           AND D.PACKAGE_ID = E.PARA_CODE1
           AND E.END_DATE > SYSDATE
           AND E.PARAM_ATTR = '50'
           AND EXISTS
         (SELECT 1
                  FROM TF_F_USER_SALE_GOODS F
                 WHERE F.USER_ID = D.USER_ID
                   AND F.PARTITION_ID = D.PARTITION_ID
                   AND F.RELATION_TRADE_ID = D.RELATION_TRADE_ID
                   AND F.RSRV_DATE2 > SYSDATE
                   AND F.PRODUCT_ID = E.PARAM_CODE
                   AND F.PACKAGE_ID = E.PARA_CODE1
                   AND (F.RSRV_STR1 = 'Y' OR F.RES_CODE = E.PARA_CODE2)))
