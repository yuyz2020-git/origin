SELECT PARTITION_ID, to_char(USER_ID) USER_ID, SERVICE_ID, BIZ_STATE_CODE, to_char(FIRST_DATE,'yyyy-mm-dd hh24:mi:ss') FIRST_DATE, to_char(FIRST_DATE_MON,'yyyy-mm-dd hh24:mi:ss') FIRST_DATE_MON, GIFT_SERIAL_NUMBER, GIFT_USER_ID,  to_char(START_DATE,'yyyy-mm-dd hh24:mi:ss') START_DATE, to_char(END_DATE,'yyyy-mm-dd hh24:mi:ss') END_DATE, to_char(UPDATE_TIME,'yyyy-mm-dd hh24:mi:ss') UPDATE_TIME, UPDATE_STAFF_ID, UPDATE_DEPART_ID, REMARK, RSRV_NUM1, RSRV_NUM2, RSRV_NUM3, to_char(RSRV_NUM4) RSRV_NUM4, to_char(RSRV_NUM5) RSRV_NUM5, RSRV_STR1, RSRV_STR2, RSRV_STR3, RSRV_STR4, RSRV_STR5, RSRV_STR6, RSRV_STR7, RSRV_STR8, RSRV_STR9, RSRV_STR10, to_char(RSRV_DATE1,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE1, to_char(RSRV_DATE2,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE2, to_char(RSRV_DATE3,'yyyy-mm-dd hh24:mi:ss') RSRV_DATE3
FROM TF_F_USER_PLATSVC
WHERE USER_ID = TO_NUMBER(:USER_ID)
  AND PARTITION_ID = MOD(:USER_ID,10000)
  AND (BIZ_STATE_CODE = 'A' OR BIZ_STATE_CODE = 'N' OR BIZ_STATE_CODE = 'L')
  AND END_DATE >= to_date(:START_DATE,'yyyy-mm-dd hh24:mi:ss')   
  AND START_DATE <= to_date(:END_DATE ,'yyyy-mm-dd hh24:mi:ss')
