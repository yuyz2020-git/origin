--IS_CACHE=Y
SELECT DATA_ID AS KEY_1
	   , DATA_NAME AS VALUE_1
   FROM TD_S_STATIC
   WHERE PDATA_ID = :PDATA_ID
      AND TYPE_ID = :TYPE_ID
      AND EPARCHY_CODE =:EPARCHY_CODE