--IS_CACHE=Y
SELECT TO_CHAR(ID) ID, ID_TYPE, ATTR_OBJ, ATTR_CODE, ATTR_NAME, ATTR_VALUE, EPARCHY_CODE,    RSRV_STR1, RSRV_STR2, RSRV_STR3, RSRV_STR4, RSRV_STR5
  FROM TD_B_ATTR_BIZ T
 WHERE ID=TO_NUMBER(:ID)
 AND ID_TYPE=:ID_TYPE
 AND ATTR_OBJ=:ATTR_OBJ
 AND ATTR_CODE = :ATTR_CODE 
 AND (EPARCHY_CODE = :EPARCHY_CODE OR EPARCHY_CODE = 'ZZZZ')  
 AND SYSDATE BETWEEN T.START_DATE AND T.END_DATE
