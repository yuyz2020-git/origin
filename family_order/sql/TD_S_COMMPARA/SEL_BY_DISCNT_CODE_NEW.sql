--IS_CACHE=Y
SELECT PARAM_CODE,PARAM_NAME,PARA_CODE1,PARA_CODE2,PARA_CODE3,PARA_CODE4,PARA_CODE5, PARA_CODE6
FROM TD_S_COMMPARA
WHERE PARAM_ATTR = '909'
AND PARAM_CODE = :TRADE_TYPE_CODE
AND PARA_CODE2 = :DISCNT_CODE
AND (EPARCHY_CODE = :EPARCHY_CODE OR EPARCHY_CODE = 'ZZZZ')
AND SYSDATE BETWEEN START_DATE AND END_DATE
