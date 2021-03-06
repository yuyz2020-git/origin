SELECT TRADE_ID,ACCEPT_MONTH,USER_ID,SERIAL_NUMBER,ID_TYPE,SCORE_TYPE_CODE,YEAR_ID,START_CYCLE_ID,END_CYCLE_ID,SCORE,SCORE_CHANGED,VALUE_CHANGED,
SCORE_TAG,RULE_ID,ACTION_COUNT,RES_ID,GOODS_NAME,CANCEL_TAG,UPDATE_TIME,UPDATE_STAFF_ID,UPDATE_DEPART_ID,REMARK,RSRV_STR1,RSRV_STR2,RSRV_STR3,
RSRV_STR4,RSRV_STR5,RSRV_STR6,RSRV_STR7,RSRV_STR8,RSRV_STR9,RSRV_STR10
FROM TF_B_TRADE_SCORE
WHERE TRADE_ID=:TRADE_ID
AND ACCEPT_MONTH = TO_NUMBER(SUBSTR(:TRADE_ID,5,2))
AND CANCEL_TAG = :CANCEL_TAG
and RES_ID is not null
and rsrv_str1='2'