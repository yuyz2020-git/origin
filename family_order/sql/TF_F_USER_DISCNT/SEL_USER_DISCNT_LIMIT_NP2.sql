SELECT DISCNT_CODE FROM TF_F_USER_DISCNT A
WHERE USER_ID = TO_NUMBER(:VUSER_ID)
AND PARTITION_ID = MOD(TO_NUMBER(:USER_ID),10000)
AND SYSDATE BETWEEN START_DATE AND END_DATE
AND EXISTS (
 SELECT 1 FROM TD_S_COMMPARA
 WHERE SUBSYS_CODE = 'CSM'
 AND PARAM_ATTR = 2006
 AND PARAM_CODE = 'OUTNPLIMIT'
 AND PARA_CODE2 = 'D'
 AND PARA_CODE1 = TO_CHAR(A.DISCNT_CODE)
 AND (EPARCHY_CODE = :EPARCHY_CODE OR EPARCHY_CODE = 'ZZZZ')
 AND SYSDATE BETWEEN START_DATE AND END_DATE
)