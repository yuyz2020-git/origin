--IS_CACHE=Y
SELECT PARA_CODE2 DISCNT_CODE
  FROM TD_S_COMMPARA
 WHERE SUBSYS_CODE = 'CSM'
   AND PARAM_ATTR = 'PLAT'
   AND PARAM_CODE = :SERVICE_ID
   AND PARA_CODE1 = :PACKAGE_CODE