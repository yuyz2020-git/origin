SELECT
	SESSION_ID, 
	ORDER_ID, 
	SEQUENCE_ID, 
	TRADE_TYPE_CODE, 
	TRADE_TYPE_NAME, 
	SERVICE_ID, 
	SP_CODE, 
	BIZ_CODE, 
	GROUP_ID, 
	USER_ID_A, 
	PRODUCT_ID, 
	INTERFACE_ID, 
	RESULT_CODE, 
	RESULT_INFO, 
	to_char(ACCEPT_TIME,'yyyy-mm-dd hh24:mi:ss') ACCEPT_TIME, 
	to_char(RSP_TIME,'yyyy-mm-dd hh24:mi:ss') RSP_TIME, 
	SVC_NAME, 
	SP_NAME, 
	GROUP_NAME, 
	PRODUCT_NAME, 
	SERIAL_NUMBER
FROM TF_B_UNION_ORDER_DLOG
WHERE SESSION_ID=:SESSION_ID AND ORDER_ID=:ORDER_ID