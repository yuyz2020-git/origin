--IS_CACHE=Y
SELECT 'TermDeviceModel' KEY,DEVICE_MODEL_CODE VALUE1,EPARCHY_CODE||DEVICE_TYPE_CODE VALUE2,DEVICE_MODEL VRESULT 
  FROM TD_S_DEVICE_MODEL 
 WHERE 'TermDeviceModel'=:KEY