insert into tl_b_abnormal_oper (OPER_STAFF_ID, TRADE_TYPE_CODE, SERIAL_NUMBER, OPER_TYPE, TRADE_TYPE, EPARCHY_CODE, OPER_TIME, UPDATE_TIME, OPER_DESC, STATE, REMARK, RSRV_NUM1, RSRV_NUM2, RSRV_STR1, RSRV_STR2)
values (:TRADE_STAFF_ID, to_number(:TRADE_TYPE_CODE), :SERIAL_NUMBER, 'T', '',:EPARCHY_CODE, to_date(:UPDATE_TIME, 'yyyy-mm-dd hh24:mi:ss'), null, '', '2', '', '', '', '', '')