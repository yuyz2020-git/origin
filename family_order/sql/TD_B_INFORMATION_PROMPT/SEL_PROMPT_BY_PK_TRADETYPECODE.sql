--IS_CACHE=Y
SELECT TRADE_TYPE_CODE,TRADE_TYPE,CONSTRAINT_TYPE_CODE,CONSTRAINT_TYPE,END_DATE,CONSTRAINT_ATTR,CONSTRAINT_ATTR_NAME,PROMPT_INFO,RSRV_STR4,
RSRV_STR5,UPDATE_STAFF_ID,UPDATE_DEPART_ID,RSRV_NUM1,RSRV_NUM2,RSRV_NUM3,RSRV_STR1,RSRV_STR2,RSRV_STR3,RSRV_DATE1,RSRV_DATE2,RSRV_DATE3,VALID_TAG
FROM TD_B_INFORMATION_PROMPT
WHERE 1=1 
AND VALID_TAG='0'
AND VERIFY_STATUE='1'
AND (trade_type_code = :TRADE_TYPE_CODE or :TRADE_TYPE_CODE is null )
order by constraint_attr desc