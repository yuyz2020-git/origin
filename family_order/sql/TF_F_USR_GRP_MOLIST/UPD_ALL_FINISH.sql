UPDATE TF_F_USR_GRP_MOLIST SET 
USER_ID = to_number(:USER_ID),SERVICE_ID = to_number(:SERVICE_ID), MO_CODE = :MO_CODE, MO_MATH = :MO_MATH, MO_TYPE = :MO_TYPE, DEST_SERV_CODE = :DEST_SERV_CODE, DEST_SERV_CODE_MATH = :DEST_SERV_CODE_MATH, UPDATE_TIME = to_date(:UPDATE_TIME,'yyyy-mm-dd hh24:mi:ss'), UPDATE_STAFF_ID = :UPDATE_STAFF_ID, UPDATE_DEPART_ID = :UPDATE_DEPART_ID, REMARK = :REMARK, RSRV_NUM1 = :RSRV_NUM1, RSRV_NUM2 = :RSRV_NUM2, RSRV_NUM3 = :RSRV_NUM3, RSRV_NUM4 = to_number(:RSRV_NUM4), RSRV_NUM5 = to_number(:RSRV_NUM5), RSRV_STR1 = :RSRV_STR1, RSRV_STR2 = :RSRV_STR2, RSRV_STR3 = :RSRV_STR3, RSRV_STR4 = :RSRV_STR4, RSRV_STR5 = :RSRV_STR5, RSRV_DATE1 = to_date(:RSRV_DATE1,'yyyy-mm-dd hh24:mi:ss'), RSRV_DATE2 = to_date(:RSRV_DATE2,'yyyy-mm-dd hh24:mi:ss'), RSRV_DATE3 = to_date(:RSRV_DATE3,'yyyy-mm-dd hh24:mi:ss'), RSRV_TAG1 = :RSRV_TAG1, RSRV_TAG3 = :RSRV_TAG3 WHERE SEQ_ID = to_number(:SEQ_ID)