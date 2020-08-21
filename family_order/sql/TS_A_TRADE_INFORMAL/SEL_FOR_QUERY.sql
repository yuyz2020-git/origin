SELECT to_char(TRADE_ID) TRADE_ID,TRADE_DEPART_ID,TRADE_STAFF_ID,to_char(ACCEPT_DATE,'yyyy-mm-dd hh24:mi:ss') ACCEPT_DATE,TRADE_TYPE_CODE,TRADE_NUMBER,REMARK,UPDATE_STAFF_ID,to_char(UPDATE_TIME,'yyyy-mm-dd hh24:mi:ss') UPDATE_TIME,AUDIT_TAG,RSRV_STR1,RSRV_STR2,RSRV_STR3,
decode(AUDIT_TAG,'1','一级未稽核','2','一级稽核通过','3','一级稽核回退','其他') RSRV_STR4,RSRV_STR5,RSRV_STR6,RSRV_STR7,RSRV_STR8
  FROM TS_A_TRADE_INFORMAL
 WHERE TRADE_DEPART_ID = :TRADE_DEPART_ID
   AND trunc(UPDATE_TIME)=TRUNC(TO_DATE(:ACCEPT_DATE,'YYYY-MM-DD HH24:MI:SS'))
   AND audit_tag <> '1'