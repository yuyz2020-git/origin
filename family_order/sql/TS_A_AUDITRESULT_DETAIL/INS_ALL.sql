INSERT INTO TS_A_AUDITRESULT_DETAIL(TRADE_ID,CANCEL_TAG,STATE_CODE,TRADE_DEPART_ID,TRADE_STAFF_ID,ACCEPT_DATE,TRADE_TYPE_CODE,ERROR_NUM,AUDIT_DATE,AUDIT_STAFF_ID,START_DATE,AUDITING_STAFF_ID,END_DATE,RSRV_STR1,RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5,RSRV_STR6,RSRV_STR7,RSRV_STR8)
VALUES(to_number(:TRADE_ID),:CANCEL_TAG,:STATE_CODE,:TRADE_DEPART_ID,:TRADE_STAFF_ID,to_date(:ACCEPT_DATE,'yyyy-mm-dd hh24:mi:ss'),:TRADE_TYPE_CODE,:ERROR_NUM,to_date(:AUDIT_DATE,'yyyy-mm-dd hh24:mi:ss'),:AUDIT_STAFF_ID,to_date(:START_DATE,'yyyy-mm-dd hh24:mi:ss'),:AUDITING_STAFF_ID,to_date(:END_DATE,'yyyy-mm-dd hh24:mi:ss'),:RSRV_STR1,:RSRV_STR2,:RSRV_STR3,:RSRV_STR4,:RSRV_STR5,:RSRV_STR6,:RSRV_STR7,:RSRV_STR8)