--IS_CACHE=Y
SELECT PARA_CODE2, PARA_CODE10
  FROM TD_S_COMMPARA
 WHERE SUBSYS_CODE = 'CSM'
   AND PARAM_ATTR = 3700
   AND PARAM_CODE = :PARAM_CODE
   AND PARA_CODE3 = :PARA_CODE3
   AND PARA_CODE1 = :PARA_CODE1