--IS_CACHE=Y
SELECT TO_CHAR(SERVICE_ID) SERVICE_ID, ATTR_CODE, ATTR_NAME, TO_CHAR(UPDATE_TIME) UPDATE_TIME, 
		UPDATE_STAFF_ID, UPDATE_DEPART_ID, REMARK, RSRV_STR1, RSRV_STR2, RSRV_STR3, 
		RSRV_STR4, RSRV_STR5 
FROM TD_B_PLATSVC_ATTR 
WHERE SERVICE_ID = TO_NUMBER(:SERVICE_ID)