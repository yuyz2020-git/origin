update TF_B_TRADE_OTHER t
set t.rsrv_str1=:RES_NO,T.RSRV_STR6=:RES_KIND_CODE,T.UPDATE_STAFF_ID=:UPDATE_STAFF_ID,T.UPDATE_DEPART_ID=:UPDATE_DEPART_ID,T.RSRV_STR12=:TRADE_ID
WHERE t.rsrv_value_code = 'FTTH_GROUP' 
AND SYSDATE < t.END_DATE
AND T.RSRV_TAG2 = '1'
AND T.MODIFY_TAG = '0'
AND T.TRADE_ID = :TRADE_ID