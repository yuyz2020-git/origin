--IS_CACHE=Y
SELECT 'ResFitting' KEY, eparchy_code VALUE1, DEVICE_TYPE_CODE VALUE2, FITTING_CODE VALUE3, FITTING VRESULT
  FROM TD_S_DEVICE_FITTING
 WHERE 'ResFitting' = :KEY