UPDATE TS_A_DIFFERINFO
   SET AUDIT_TAG = :AUDIT_TAG,
       RSRV_STR7 = :RSRV_STR7,
       RSRV_STR8 = :RSRV_STR8
 WHERE TRADE_ID = to_number(:TRADE_ID)
   AND CANCEL_TAG = :CANCEL_TAG