INSERT INTO TS_A_AUDITRESULT(ACCEPT_DATE,TRADE_DEPART_ID,TRADE_STAFF_ID,TRADE_TYPE_CODE,TRADE_NUMBER,DEVICE_NUM,ERROR_NUM,AUDIT_TAG,AUDIT_DATE,AUDIT_STAFF_ID,AUDITING_STAFF_ID,RSRV_STR1,RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5,RSRV_STR6,RSRV_STR7,RSRV_STR8)
VALUES(to_date(:ACCEPT_DATE,'yyyy-mm-dd hh24:mi:ss'),:TRADE_DEPART_ID,:TRADE_STAFF_ID,:TRADE_TYPE_CODE,:TRADE_NUMBER,:DEVICE_NUM,:ERROR_NUM,:AUDIT_TAG,to_date(:AUDIT_DATE,'yyyy-mm-dd hh24:mi:ss'),:AUDIT_STAFF_ID,:AUDITING_STAFF_ID,:RSRV_STR1,:RSRV_STR2,:RSRV_STR3,:RSRV_STR4,:RSRV_STR5,:RSRV_STR6,:RSRV_STR7,:RSRV_STR8)