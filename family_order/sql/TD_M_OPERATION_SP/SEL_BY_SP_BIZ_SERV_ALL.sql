--IS_CACHE=Y
SELECT a.SP_ID RSRV_STR1,b.SP_CODE SP_CODE,a.SP_NAME RSRV_STR2,b.BIZ_CODE BIZ_CODE,b.PRODUCT_NO PRODUCT_NO,b.BIZ_NAME BIZ_NAME,b.BIZ_TYPE BIZ_TYPE,b.BIZ_TYPE_CODE BIZ_TYPE_CODE,b.BIZ_ATTR BIZ_ATTR,b.BIZ_DESC BIZ_DESC,b.ACCESS_MODE ACCESS_MODE,b.ORDER_MODE ORDER_MODE,b.COUNT_SIDE1 COUNT_SIDE1,b.COUNT_SIDE2 COUNT_SIDE2,b.BILL_TYPE BILL_TYPE,b.PRICE PRICE,to_char(b.START_DATE,'yyyy-mm-dd hh24:mi:ss') START_DATE,to_char(b.END_DATE,'yyyy-mm-dd hh24:mi:ss') END_DATE,b.COUNT_PCT COUNT_PCT,b.NUM_TIME NUM_TIME,b.NUM_DAY NUM_DAY,b.BIZ_STATE_CODE BIZ_STATE_CODE,b.USAGE_DESC USAGE_DESC,b.INTRO_URL INTRO_URL,b.BIZ_STATUS BIZ_STATUS,b.SERVICE_PHONE SERVICE_PHONE,b.CONTACT CONTACT,to_char(b.FIRST_DATE,'yyyy-mm-dd hh24:mi:ss') FIRST_DATE,b.FOREGIFT_TYPE FOREGIFT_TYPE,b.FOREGIFT FOREGIFT,b.OPR_SOURCE OPR_SOURCE,b.BIZ_PROCESS_TAG BIZ_PROCESS_TAG,b.SMS_PROCESS_TAG SMS_PROCESS_TAG,b.RECOGNIZE_CODE RECOGNIZE_CODE,b.NET_TAG NET_TAG,b.RSRV_STR3 RSRV_STR3,b.RSRV_STR4 RSRV_STR4,b.RSRV_STR5 RSRV_STR5,b.RSRV_STR6 RSRV_STR6,b.RSRV_STR7 RSRV_STR7,b.RSRV_STR8 RSRV_STR8,b.RSRV_STR9 RSRV_STR9,b.RSRV_STR10 RSRV_STR10,b.UPDATE_STAFF_ID UPDATE_STAFF_ID,b.UPDATE_DEPART_ID UPDATE_DEPART_ID,to_char(b.UPDATE_TIME,'yyyy-mm-dd hh24:mi:ss') UPDATE_TIME,b.FILE_NAME FILE_NAME
  FROM TD_M_CORPORATION_SP a,td_m_operation_sp b
where a.sp_code like :SP_CODE
  and a.sp_name like :SP_NAME
  and b.biz_code like :BIZ_CODE
  and b.biz_name like :BIZ_NAME
  and a.sp_code =b.sp_code
  and (:SERV_CODE is null or a.serv_code = :SERV_CODE)