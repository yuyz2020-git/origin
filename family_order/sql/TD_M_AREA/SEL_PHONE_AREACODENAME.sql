--IS_CACHE=Y
SELECT AREA_CODE, AREA_NAME 
FROM TD_M_AREA 
WHERE 
PARENT_AREA_CODE = :PARENT_AREA_CODE 
 AND AREA_LEVEL = '30'