SELECT A.*, D.SERIAL_NUMBER
  FROM TF_F_USER_PLATSVC A, TF_F_USER D
 WHERE 1 = 1
   AND A.USER_ID = :USER_ID
   AND A.PARTITION_ID = MOD(:USER_ID, '10000')
   AND A.USER_ID = D.USER_ID
   AND A.PARTITION_ID = D.PARTITION_ID
   AND NOT SYSDATE BETWEEN A.START_DATE AND A.END_DATE
   AND A.BIZ_STATE_CODE = 'A'
   AND NOT EXISTS (SELECT 1
          FROM TD_B_QRY_CONFIG K
         WHERE K.BUSI_TYPE = 'P'
           AND (K.ID_TYPE = 'Z' OR K.ID_TYPE = 'S')
           AND K.TAG = 'N'
           AND K.ID = A.SERVICE_ID
           AND SYSDATE BETWEEN K.START_DATE AND K.END_DATE)
   AND NOT EXISTS
 (SELECT 1
          FROM TD_B_QRY_RULE_CONFIG U
         WHERE U.ID_TYPE = 'P'
           AND U.ID = :PRODUCT_ID
           AND (U.SERV_TYPE = 'S' OR U.SERV_TYPE = 'Z')
           AND U.SERVICE_ID = A.SERVICE_ID
           AND (U.EPARCHY_CODE = :EPARCHY_CODE OR U.EPARCHY_CODE = 'ZZZZ')
           AND SYSDATE BETWEEN U.START_DATE AND U.END_DATE)
   AND NOT EXISTS
 (SELECT 1
          FROM TD_B_QRY_RULE_CONFIG X
         WHERE X.ID_TYPE = 'B'
           AND X.ID = :BRAND_CODE
           AND (X.SERV_TYPE = 'S' OR X.SERV_TYPE = 'Z')
           AND X.SERVICE_ID = A.SERVICE_ID
           AND (X.EPARCHY_CODE = :EPARCHY_CODE OR X.EPARCHY_CODE = 'ZZZZ')
           AND SYSDATE BETWEEN X.START_DATE AND X.END_DATE)
   AND NOT EXISTS
 (SELECT 1
          FROM TD_B_QRY_RULE_CONFIG V, TF_F_USER_DISCNT W
         WHERE V.ID_TYPE = 'D'
           AND V.ID = W.DISCNT_CODE
           AND W.END_DATE > SYSDATE
           AND W.USER_ID = :USER_ID
           AND W.PARTITION_ID = MOD(:USER_ID, '10000')
           AND (V.SERV_TYPE = 'S' OR V.SERV_TYPE = 'Z')
           AND V.SERVICE_ID = A.SERVICE_ID
           AND (V.EPARCHY_CODE = :EPARCHY_CODE OR V.EPARCHY_CODE = 'ZZZZ')
           AND SYSDATE BETWEEN V.START_DATE AND V.END_DATE)
   AND NOT EXISTS
 (SELECT 1
          FROM TD_B_QRY_RULE_CONFIG T, TF_F_USER_SALE_ACTIVE P
         WHERE T.ID_TYPE = 'K'
           AND T.ID = P.PACKAGE_ID
           AND P.END_DATE > SYSDATE
           AND P.USER_ID = :USER_ID
           AND P.PARTITION_ID = MOD(:USER_ID, '10000')
           AND (T.SERV_TYPE = 'S' OR T.SERV_TYPE = 'Z')
           AND T.SERVICE_ID = A.SERVICE_ID
           AND (T.EPARCHY_CODE = :EPARCHY_CODE OR T.EPARCHY_CODE = 'ZZZZ')
           AND SYSDATE BETWEEN T.START_DATE AND T.END_DATE)
