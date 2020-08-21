SELECT 
T2.CITY_CODE,
T2.SERIAL_NUMBER,
T2.TRADE_TYPE_CODE BUSI_TYPE_CODE,
T1.UPDATE_TIME,
T1.RSRV_NUM4/100 OWE_FEE,
T1.RSRV_NUM2 OPEN_AMOUNT,
T1.RSRV_NUM5 CUST_STAR_LEAVE,
T1.RSRV_VALUE ASSURE_NUMBER,
T1.RSRV_NUM3 ASSURE_STAR_LEAVE,
T1.UPDATE_STAFF_ID STAFF_ID
 FROM UCR_CRM1.TF_B_TRADE_OTHER T1,UCR_CRM1.TF_BH_TRADE T2 
WHERE 1=1 
AND T1.TRADE_ID = T2.TRADE_ID
AND T1.UPDATE_TIME >= to_date(:START_DATE, 'yyyy-mm-dd hh24:mi:ss') 
AND T1.UPDATE_TIME <= to_date(:END_DATE, 'yyyy-mm-dd hh24:mi:ss')
AND T2.TRADE_TYPE_CODE = :CHANGE_SVC_TYPE  
AND T2.SERIAL_NUMBER = :SERIAL_NUMBER
AND T1.UPDATE_STAFF_ID <=:END_STAFF_ID 
AND T1.UPDATE_STAFF_ID >=:START_STAFF_ID
AND T1.RSRV_NUM1 IS NOT NULL