--IS_CACHE=Y
SELECT A.PARAM_ATTR,
       A.PARAM_CODE,
       A.PARAM_NAME,
       A.PARA_CODE1
  FROM TD_S_COMMPARA A
 WHERE A.PARAM_ATTR = '3766'
   AND A.PARAM_CODE = :PARAM_CODE
   AND A.PARA_CODE1 = :PARA_CODE1
   AND SYSDATE BETWEEN A.START_DATE AND A.END_DATE