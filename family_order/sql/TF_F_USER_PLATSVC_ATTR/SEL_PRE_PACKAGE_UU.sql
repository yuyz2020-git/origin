--IS_CACHE=Y
SELECT PARA_CODE2, PARA_CODE10
  FROM TD_S_COMMPARA
 WHERE SUBSYS_CODE = 'CSM'
   AND PARAM_ATTR = 3700
   AND PARAM_CODE = :SERVICE_ID
   AND PARA_CODE3 = :INFO_CODE
   AND PARA_CODE1 = :INFO_VALUE
   AND PARA_CODE4 = 'UU'