select RELA_INST_ID, TRADE_ID, ACCEPT_MONTH, USER_ID, INST_TYPE, INST_ID, ATTR_CODE, ATTR_VALUE, START_DATE, END_DATE,
MODIFY_TAG, UPDATE_TIME, UPDATE_STAFF_ID, UPDATE_DEPART_ID, REMARK, RSRV_NUM1, RSRV_NUM2, RSRV_NUM3, RSRV_NUM4, RSRV_NUM5,
RSRV_STR1, RSRV_STR2, RSRV_STR3, RSRV_STR4, RSRV_STR5, RSRV_DATE1, RSRV_DATE2, RSRV_DATE3, RSRV_TAG1, RSRV_TAG2, RSRV_TAG3 
from tf_b_trade_attr t where ATTR_CODE = :ATTR_CODE and MODIFY_TAG =:MODIFY_TAG and TRADE_ID=:TRADE_ID 
and (RSRV_STR4 =:RSRV_STR4 or RSRV_STR4 is null) 
and END_DATE > START_DATE 