--IS_CACHE=Y
SELECT PARA_CODE5, PARA_CODE25
  FROM TD_S_COMMPARA
 WHERE SUBSYS_CODE = 'CSM'
   AND PARAM_ATTR = '3701'
   AND PARAM_CODE = :ORG_DOMAIN
   AND PARA_CODE1 = :BIZ_TYPE_CODE
   AND PARA_CODE3 = :PARA_CODE3
   AND PARA_CODE4 = :PARA_CODE4
   AND PARA_CODE5 = '5'