select  USER_ID,
RSRV_VALUE_CODE,
RSRV_VALUE,
RSRV_STR1,
RSRV_STR2,
RSRV_STR3,
RSRV_STR4,
RSRV_STR5,
RSRV_STR6,
RSRV_STR7,
RSRV_STR9
from TF_F_USER_OTHER
where 1=1 
AND RSRV_VALUE_CODE=:RSRV_VALUE_CODE
AND TRADE_ID=:TRADE_ID