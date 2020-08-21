SELECT 
TRADE_ID,
ACCEPT_MONTH,
USER_ID,
USER_ID_A,
FEE_MODE,
FEE_TYPE_CODE,
FEE,
CHARGE_ID,
DISCNT_GIFT_ID,
LIMIT_MONEY,
MONTHS,
to_char(EFFICET_DATE,'YYYY-MM-DD HH24:MI:SS') EFFICET_DATE,
to_char(UPDATE_TIME,'YYYY-MM-DD HH24:MI:SS') UPDATE_TIME,
UPDATE_STAFF_ID,
UPDATE_DEPART_ID,
REMARK,
RSRV_STR1,
RSRV_STR2,
RSRV_STR3,
RSRV_STR4,
RSRV_STR5,
RSRV_STR6,
RSRV_STR7,
RSRV_STR8,
RSRV_STR9,
RSRV_STR10
FROM TF_B_TRADEFEE_GIFTFEE
WHERE trade_id = TO_NUMBER(:TRADE_ID)
AND accept_month = TO_NUMBER(SUBSTR(:TRADE_ID, 5, 2))