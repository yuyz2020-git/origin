--IS_CACHE=Y
SELECT 'ResDeviceModel' KEY, eparchy_code VALUE1, DEVICE_TYPE_CODE VALUE2, DEVICE_MODEL_CODE VALUE3, DEVICE_MODEL VRESULT
  FROM  TD_S_DEVICE_MODEL
  WHERE 'ResDeviceModel' = :KEY