--IS_CACHE=Y
SELECT *
  FROM TD_S_COMMPARA T
 WHERE T.SUBSYS_CODE=:SUBSYS_CODE
   AND T.PARAM_ATTR =:PARAM_ATTR
   AND T.PARAM_CODE =:PARAM_CODE
   AND TO_DATE(:IN_DATE,'yyyy-MM-dd') BETWEEN TO_DATE(T.PARA_CODE1, 'yyyy-MM-dd') AND
       TO_DATE(T.PARA_CODE2, 'yyyy-MM-dd')