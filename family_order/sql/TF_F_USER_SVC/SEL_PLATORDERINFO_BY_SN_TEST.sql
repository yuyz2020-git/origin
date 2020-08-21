SELECT A.SERVICE_ID,'1001' SP_ID,'' BIZ_CODE,'中国移动' SP_NAME,
       TO_CHAR(A.START_DATE, 'yyyy-mm-dd hh24:mi:ss') START_DATE,
       TO_CHAR(A.END_DATE, 'yyyy-mm-dd hh24:mi:ss') END_DATE,
       '' BIZ_STATE_CODE
  FROM TF_F_USER_SVC A WHERE A.USER_ID = :USER_ID
   AND A.PARTITION_ID = MOD(:USER_ID, '10000')
   AND SYSDATE BETWEEN A.START_DATE AND A.END_DATE
   AND NOT EXISTS  (SELECT 1 FROM TD_B_QRY_CONFIG K  WHERE K.BUSI_TYPE = 'P'  AND (K.ID_TYPE = 'Z' OR K.ID_TYPE = 'S') AND K.TAG = 'N'AND K.ID = A.SERVICE_ID AND SYSDATE BETWEEN K.START_DATE AND K.END_DATE)
   AND NOT EXISTS  (SELECT 1 FROM TD_B_QRY_RULE_CONFIG U WHERE U.ID_TYPE = 'P' AND U.ID = :PRODUCT_ID AND (U.SERV_TYPE = 'S' OR U.SERV_TYPE = 'Z') AND U.SERVICE_ID = A.SERVICE_ID AND (U.EPARCHY_CODE = :EPARCHY_CODE OR U.EPARCHY_CODE = 'ZZZZ') AND SYSDATE BETWEEN U.START_DATE AND U.END_DATE)
   AND NOT EXISTS  (SELECT 1 FROM TD_B_QRY_RULE_CONFIG X  WHERE X.ID_TYPE = 'B'AND X.ID = :BRAND_CODE AND (X.SERV_TYPE = 'S' OR X.SERV_TYPE = 'Z') AND X.SERVICE_ID = A.SERVICE_ID AND (X.EPARCHY_CODE = :EPARCHY_CODE OR X.EPARCHY_CODE = 'ZZZZ') AND SYSDATE BETWEEN X.START_DATE AND X.END_DATE)
   AND NOT EXISTS  (SELECT 1 FROM TD_B_QRY_RULE_CONFIG V, TF_F_USER_DISCNT W  WHERE V.ID_TYPE = 'D'AND V.ID = W.DISCNT_CODE AND W.END_DATE > SYSDATE AND W.USER_ID = :USER_ID AND W.PARTITION_ID = MOD(:USER_ID, '10000') AND (V.SERV_TYPE = 'S' OR V.SERV_TYPE = 'Z') AND V.SERVICE_ID = A.SERVICE_ID  AND (V.EPARCHY_CODE = :EPARCHY_CODE OR V.EPARCHY_CODE = 'ZZZZ') AND SYSDATE BETWEEN V.START_DATE AND V.END_DATE)
   AND NOT EXISTS (SELECT 1  FROM TD_B_QRY_RULE_CONFIG M, TF_F_USER_SVC N WHERE M.ID_TYPE = 'S' AND M.ID = N.SERVICE_ID AND N.USER_ID = :USER_ID AND N.PARTITION_ID = MOD(:USER_ID, '10000') AND N.END_DATE > SYSDATE AND (M.SERV_TYPE = 'S' OR M.SERV_TYPE = 'Z') AND M.SERVICE_ID = A.SERVICE_ID AND (M.EPARCHY_CODE = '0898' OR M.EPARCHY_CODE = 'ZZZZ') AND SYSDATE BETWEEN M.START_DATE AND M.END_DATE)