UPDATE TD_S_SERVICELIMIT 
SET LIMIT_TAG = :LIMIT_TAG,
END_DATE = to_date(:END_DATE,'yyyy-mm-dd hh24:mi:ss')
WHERE SERVICE_ID_A = :SERVICE_ID_A
AND SERVICE_ID_B = :SERVICE_ID_B
AND START_DATE = to_date(:START_DATE,'yyyy-mm-dd hh24:mi:ss')
AND EPARCHY_CODE = :EPARCHY_CODE