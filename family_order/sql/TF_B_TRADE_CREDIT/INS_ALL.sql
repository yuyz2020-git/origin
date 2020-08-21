INSERT INTO TF_B_TRADE_CREDIT(TRADE_ID, ACCEPT_MONTH, USER_ID, CREDIT_VALUE, CREDIT_MODE, CREDIT_GIFT_MONTHS, TAG_SET, START_DATE, END_DATE, MODIFY_TAG, UPDATE_TIME, UPDATE_STAFF_ID, UPDATE_DEPART_ID, REMARK, RSRV_STR1, RSRV_STR2, RSRV_STR3, RSRV_STR4, RSRV_STR5, RSRV_STR6, RSRV_STR7, RSRV_STR8, RSRV_STR9, RSRV_STR10, RSRV_DATE1, RSRV_DATE2, RSRV_DATE3) 
VALUES (to_number(:TRADE_ID) , :ACCEPT_MONTH, to_number(:USER_ID) , to_number(:CREDIT_VALUE) , :CREDIT_MODE, :CREDIT_GIFT_MONTHS, :TAG_SET, to_date(:START_DATE,'yyyy-mm-dd hh24:mi:ss') , to_date(:END_DATE,'yyyy-mm-dd hh24:mi:ss') , :MODIFY_TAG, Sysdate , :UPDATE_STAFF_ID, :UPDATE_DEPART_ID, :REMARK, :RSRV_STR1, :RSRV_STR2, :RSRV_STR3, :RSRV_STR4, :RSRV_STR5, :RSRV_STR6, :RSRV_STR7, :RSRV_STR8, :RSRV_STR9, :RSRV_STR10, to_date(:RSRV_DATE1,'yyyy-mm-dd hh24:mi:ss') , to_date(:RSRV_DATE2,'yyyy-mm-dd hh24:mi:ss') , to_date(:RSRV_DATE3,'yyyy-mm-dd hh24:mi:ss') )