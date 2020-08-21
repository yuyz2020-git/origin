SELECT PARTITION_ID,SERIAL_NUMBER,to_char(USER_ID) USER_ID,EPARCHY_CODE,to_char(START_DATE,'yyyy-mm-dd hh24:mi:ss') START_DATE,to_char(END_DATE,'yyyy-mm-dd hh24:mi:ss') END_DATE,to_char(UPDATE_TIME,'yyyy-mm-dd hh24:mi:ss') UPDATE_TIME,RSRV_STR1,RSRV_STR2,to_char(RSRV_NUM3) RSRV_NUM3,to_char(RSRV_NUM4) RSRV_NUM4,to_char(RSRV_DAT5,'yyyy-mm-dd hh24:mi:ss') RSRV_DAT5,to_char(RSRV_DAT6,'yyyy-mm-dd hh24:mi:ss') RSRV_DAT6
  FROM TF_F_USER_HWOCS
WHERE USER_ID = to_number(:USER_ID)
  AND EPARCHY_CODE = :EPARCHY_CODE
  AND start_date>sysdate
  AND end_date>sysdate  
  AND start_Date<end_Date