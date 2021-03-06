--IS_CACHE=Y
SELECT SP_CODE,BIZ_CODE,PRODUCT_NO,BIZ_NAME,BIZ_TYPE,BIZ_TYPE_CODE,BIZ_ATTR,BIZ_DESC,ACCESS_MODE,ORDER_MODE,COUNT_SIDE1,COUNT_SIDE2,BILL_TYPE,PRICE,to_char(START_DATE,'yyyy-mm-dd hh24:mi:ss') START_DATE,to_char(END_DATE,'yyyy-mm-dd hh24:mi:ss') END_DATE,COUNT_PCT,NUM_TIME,NUM_DAY,BIZ_STATE_CODE,USAGE_DESC,INTRO_URL,BIZ_STATUS,SERVICE_PHONE,CONTACT,to_char(FIRST_DATE,'yyyy-mm-dd hh24:mi:ss') FIRST_DATE,FOREGIFT_TYPE,FOREGIFT,OPR_SOURCE,BIZ_PROCESS_TAG,SMS_PROCESS_TAG,RECOGNIZE_CODE,NET_TAG,RSRV_STR1,RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5,RSRV_STR6,RSRV_STR7,RSRV_STR8,RSRV_STR9,RSRV_STR10,UPDATE_STAFF_ID,UPDATE_DEPART_ID,to_char(UPDATE_TIME,'yyyy-mm-dd hh24:mi:ss') UPDATE_TIME,FILE_NAME
  FROM TD_M_OPERATION_SP
 WHERE SP_CODE = :SP_CODE
   AND BIZ_CODE = :BIZ_CODE
   AND sysdate BETWEEN start_date AND end_date