--IS_CACHE=Y
SELECT t.PARAM_CODE,t.PARA_CODE2
 FROM TD_S_COMMPARA t 
 WHERE t.SUBSYS_CODE  = :SUBSYS_CODE
 AND t.PARAM_ATTR = :PARAM_ATTR
 AND t.PARA_CODE1 = :PARA_CODE1