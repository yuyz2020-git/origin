UPDATE TF_F_USER_BLACKWHITE SET 
 EC_USER_ID=to_number(:EC_USER_ID),BIZ_IN_CODE_A=:BIZ_IN_CODE_A,SERV_CODE = :SERV_CODE, SERIAL_NUMBER = :SERIAL_NUMBER, EC_SERIAL_NUMBER =:EC_SERIAL_NUMBER , GROUP_ID = :GROUP_ID, BIZ_CODE = :BIZ_CODE, BIZ_NAME = :BIZ_NAME, BIZ_DESC = :BIZ_DESC, BOOK_DATE = to_date(:BOOK_DATE,'yyyy-mm-dd hh24:mi:ss'), CONTRACT_ID = :CONTRACT_ID, PRICE = to_number(:PRICE), BILLING_TYPE = :BILLING_TYPE, OPR_EFF_TIME = to_date(:OPR_EFF_TIME,'yyyy-mm-dd hh24:mi:ss'), OPR_SEQ_ID = :OPR_SEQ_ID, OPER_STATE = :OPER_STATE, EXPECT_TIME = to_date(:EXPECT_TIME,'yyyy-mm-dd hh24:mi:ss'), PLAT_SYNC_STATE = :PLAT_SYNC_STATE, END_DATE = to_date(:END_DATE,'yyyy-mm-dd hh24:mi:ss'), UPDATE_TIME = to_date(:UPDATE_TIME,'yyyy-mm-dd hh24:mi:ss'), UPDATE_STAFF_ID = :UPDATE_STAFF_ID, UPDATE_DEPART_ID = :UPDATE_DEPART_ID, REMARK = :REMARK, RSRV_NUM1 = :RSRV_NUM1, RSRV_NUM2 = :RSRV_NUM2, RSRV_NUM3 = :RSRV_NUM3, RSRV_NUM4 = to_number(:RSRV_NUM4), RSRV_NUM5 = to_number(:RSRV_NUM5), RSRV_STR1 = :RSRV_STR1, RSRV_STR2 = :RSRV_STR2, RSRV_STR3 = :RSRV_STR3, RSRV_STR4 = :RSRV_STR4, RSRV_STR5 = :RSRV_STR5, RSRV_DATE1 = to_date(:RSRV_DATE1,'yyyy-mm-dd hh24:mi:ss'), RSRV_DATE2 = to_date(:RSRV_DATE2,'yyyy-mm-dd hh24:mi:ss'), RSRV_DATE3 = to_date(:RSRV_DATE3,'yyyy-mm-dd hh24:mi:ss'), RSRV_TAG1 = :RSRV_TAG1, RSRV_TAG2 = :RSRV_TAG2, RSRV_TAG3 = :RSRV_TAG3 WHERE PARTITION_ID = MOD(to_number(:USER_ID),10000) and USER_ID = to_number(:USER_ID) and USER_TYPE_CODE = :USER_TYPE_CODE and SERVICE_ID = :SERVICE_ID and BIZ_IN_CODE = :BIZ_IN_CODE and START_DATE = to_date(:START_DATE,'yyyy-mm-dd hh24:mi:ss')