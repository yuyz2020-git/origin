--IS_CACHE=Y
SELECT T.PARAM_VALUE,T.PARA_NAME,T.PARA_CODE,T.PARA_CODE1,T.PARA_CODE2,T.PARA_CODE3,T.PARA_CODE4,
T.PARA_CODE5,T.PARA_CODE6,T.PARA_CODE7,T.PARA_CODE8,T.PARA_CODE9,T.PARA_CODE10,T.EPARCHY_CODE
 from TD_B_SALESERV_COMMPARA T
 WHERE PARAM_VALUE=:PARAM_VALUE
 AND PARA_CODE1=:PARA_CODE1
 AND PARA_CODE2=:PARA_CODE2
 AND (EPARCHY_CODE=:EPARCHY_CODE OR EPARCHY_CODE='ZZZZ')
 AND END_DATE>SYSDATE