SELECT 
	TSCC.TRADE_TYPE_CODE,
	TSCC.IN_MODE_CODE,
	TSCC.ORDER_TYPE_CODE,
	TSCC.FUNC_TYPE,
	TSCC.CHECK_PARAM,
	TSCC.SVC_NAME,
	TSCC.SVC_DESCRIPTION,
	TSCC.PARA_CODE1,
	TSCC.PARA_CODE2,
	TSCC.PARA_CODE3,
	TSCC.EPARCHY_CODE,
	TSCC.START_DATE,
	TSCC.END_DATE,
	TSCC.UPDATE_STAFF_ID,
	TSCC.UPDATE_DEPART_ID,
	TSCC.UPDATE_TIME,
	TSCC.REMARK
FROM  TD_S_SVC_COLLE_CONFIG TSCC 
WHERE TSCC.IN_MODE_CODE=:IN_MODE_CODE
AND TSCC.ORDER_TYPE_CODE=:ORDER_TYPE_CODE
AND TSCC.FUNC_TYPE=:FUNC_TYPE
AND TSCC.EPARCHY_CODE=:EPARCHY_CODE