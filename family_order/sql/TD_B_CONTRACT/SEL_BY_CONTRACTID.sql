--IS_CACHE=Y
SELECT CONTRACT_ID, CONTRACT_CODE, CONTRACT_NAME, MATERIAL_CODE, CUSTOMER_BRAND, CONTRACT_TYPE, 
 RIGHT_CODE, ADD_LIMIT_MODE, ADD_DAYS_LIMIT, VIP_STATE, CONTRACT_STATUS, MIN_NUMBER, MAX_NUMBER, 
 TROOP_ID, ENABLE_TAG, START_ABSOLUTE_DATE, START_OFFSET, START_UNIT, END_ENABLE_TAG, 
 END_ABSOLUTE_DATE, END_OFFSET, END_UNIT, CANCEL_TAG, UPDATE_TIME, UPDATE_DEPART_ID, 
 UPDATE_STAFF_ID, EPARCHY_CODE, RSRV_NUM1, RSRV_NUM2, RSRV_NUM3, RSRV_NUM4, RSRV_NUM5,
 RSRV_STR1, RSRV_STR2, RSRV_STR3, RSRV_STR4, RSRV_STR5, RSRV_DATE1, RSRV_DATE2, RSRV_DATE3
FROM  TD_B_CONTRACT 
WHERE CONTRACT_ID=:CONTRACT_ID