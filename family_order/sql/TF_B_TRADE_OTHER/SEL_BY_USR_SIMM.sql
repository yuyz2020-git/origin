SELECT * FROM 
(SELECT A.*
FROM TF_B_TRADE_OTHER A
WHERE 1 = 1
AND A.USER_ID = :USER_ID
AND A.RSRV_VALUE_CODE = 'SIMM'
ORDER BY UPDATE_TIME DESC)
WHERE ROWNUM = 1