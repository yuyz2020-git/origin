--IS_CACHE=Y
SELECT PARA_CODE2 PARA_CODE,PARA_CODE2||'|'||PARA_NAME PARA_NAME 
 FROM TD_M_RES_PARA 
 WHERE 1=1 
 AND (:EPARCHY_CODE IS NULL OR EPARCHY_CODE = :EPARCHY_CODE)
 AND (:PARA_ATTR IS NULL OR PARA_ATTR = :PARA_ATTR) 
 AND (:PARA_CODE1 IS NULL OR PARA_CODE1 = :PARA_CODE1) 
 AND (:VALID_TAG IS NULL OR VALID_TAG = :VALID_TAG) 
 AND (:PARA_VALUE2 IS NULL OR PARA_VALUE2 = :PARA_VALUE2) 
 ORDER BY PARA_CODE2