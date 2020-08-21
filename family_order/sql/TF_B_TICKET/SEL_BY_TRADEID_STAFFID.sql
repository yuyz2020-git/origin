SELECT PRINT_ID,
       TRADE_ID,
       ACCEPT_MONTH,
       FEE_MODE,
       FEE,
       TICKET_ID,
       TAX_NO,
       SECURITY_CODE,
       QR_CODE,
       TICKET_TYPE_CODE,
       SERIAL_NUMBER,
       USER_ID,
       TRADE_TYPE_CODE,
       TRADE_STAFF_ID,
       TRADE_DEPART_ID,
       TRADE_CITY_CODE,
       TRADE_EPARCHY_CODE,
       ACCEPT_TIME,
       TICKET_STATE_CODE,
       REMARK,
       RSRV_STR1,
       RSRV_STR2,
       RSRV_STR3,
       RSRV_STR4,
       RSRV_STR5,
       RSRV_STR6,
       RSRV_STR7,
       RSRV_STR8,
       RSRV_STR9, 
       RSRV_STR10
  FROM TF_B_TICKET
 WHERE TRADE_ID = :TRADE_ID
   AND TRADE_STAFF_ID = :TRADE_STAFF_ID
and partition_id = to_number(substr(:TRADE_ID,length(:TRADE_ID)-3))