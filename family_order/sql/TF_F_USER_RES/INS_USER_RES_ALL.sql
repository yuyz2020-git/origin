INSERT INTO TF_F_USER_RES(PARTITION_ID, USER_ID, USER_ID_A, RES_TYPE_CODE, RES_CODE, IMSI, KI, INST_ID, CAMPN_ID, START_DATE, END_DATE, UPDATE_TIME, UPDATE_STAFF_ID, UPDATE_DEPART_ID, REMARK, RSRV_NUM1, RSRV_NUM2, RSRV_NUM3, RSRV_NUM4, RSRV_NUM5, RSRV_STR1, RSRV_STR2, RSRV_STR3, RSRV_STR4, RSRV_STR5, RSRV_DATE1, RSRV_DATE2, RSRV_DATE3, RSRV_TAG1, RSRV_TAG2, RSRV_TAG3) 
VALUES (:PARTITION_ID, to_number(:USER_ID) , to_number(:USER_ID_A) , :RES_TYPE_CODE, :RES_CODE, :IMSI, :KI, to_number(:INST_ID) , to_number(:CAMPN_ID) , to_date(:START_DATE,'yyyy-mm-dd hh24:mi:ss') , to_date(:END_DATE,'yyyy-mm-dd hh24:mi:ss') , to_date(:UPDATE_TIME,'yyyy-mm-dd hh24:mi:ss') , :UPDATE_STAFF_ID, :UPDATE_DEPART_ID, :REMARK, :RSRV_NUM1, :RSRV_NUM2, :RSRV_NUM3, to_number(:RSRV_NUM4) , to_number(:RSRV_NUM5) , :RSRV_STR1, :RSRV_STR2, :RSRV_STR3, :RSRV_STR4, :RSRV_STR5, to_date(:RSRV_DATE1,'yyyy-mm-dd hh24:mi:ss') , to_date(:RSRV_DATE2,'yyyy-mm-dd hh24:mi:ss') , to_date(:RSRV_DATE3,'yyyy-mm-dd hh24:mi:ss') , :RSRV_TAG1, :RSRV_TAG2, :RSRV_TAG3)