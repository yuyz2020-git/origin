SELECT RSRV_STR3
FROM TF_B_TRADE_PLATSVC A
 WHERE A.SERVICE_ID ='98003701'   
   AND A.INTF_TRADE_ID = :INTF_TRADE_ID
   AND A.RSRV_STR4 = :RSRV_STR4
   AND A.USER_ID = :USER_ID