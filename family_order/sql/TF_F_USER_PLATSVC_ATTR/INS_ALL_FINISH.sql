INSERT INTO TF_F_USER_PLATSVC_ATTR(PARTITION_ID, USER_ID, SERVICE_ID, SERIAL_NUMBER, OPER_CODE, INFO_TYPE, INFO_TAG, INFO_CODE, INFO_VALUE, INFO_NAME, START_DATE, END_DATE, UPDATE_TIME, UPDATE_STAFF_ID, UPDATE_DEPART_ID, REMARK, RSRV_NUM1, RSRV_NUM2, RSRV_STR1, RSRV_STR2, RSRV_DATE1, RSRV_DATE2, RSRV_DATE3) 
VALUES (MOD(to_number(:USER_ID),10000), to_number(:USER_ID) , :SERVICE_ID, :SERIAL_NUMBER, :OPER_CODE, :INFO_TYPE, :INFO_TAG, :INFO_CODE, :INFO_VALUE, :INFO_NAME, to_date(:START_DATE,'yyyy-mm-dd hh24:mi:ss') , to_date(:END_DATE,'yyyy-mm-dd hh24:mi:ss') , to_date(:UPDATE_TIME,'yyyy-mm-dd hh24:mi:ss') , :UPDATE_STAFF_ID, :UPDATE_DEPART_ID, :REMARK, :RSRV_NUM1, :RSRV_NUM2, :RSRV_STR1, :RSRV_STR2, to_date(:RSRV_DATE1,'yyyy-mm-dd hh24:mi:ss') , to_date(:RSRV_DATE2,'yyyy-mm-dd hh24:mi:ss') , to_date(:RSRV_DATE3,'yyyy-mm-dd hh24:mi:ss') )