SELECT TO_CHAR(IN_TIME, 'yyyy-mm-dd hh24:mi:ss') IN_TIME,
       to_date(START_DATE, 'yyyy-mm-dd hh24:mi:ss') START_DATE,
       to_date(ENTER_DATE, 'yyyy-mm-dd hh24:mi:ss') ENTER_DATE,
       SERIAL_NUMBER,
       X_CALL_EDMPHONECODE,
       REASON_CODE,
       DATA_TYPE,
       PROCESS_TAG,
       TRADE_NUMBER,
       MSG_ID,
       NOTICE_CONTENT,
       TO_CHAR(EXEC_TIME, 'yyyy-mm-dd hh24:mi:ss') EXEC_TIME,
       RSRV_STR1 PARA_CODE12,
       RSRV_STR2 PARA_CODE13,
       RSRV_STR3 PARA_CODE14,
       REMARK,
       INTF_ID,
       MONTH,
       '' PARA_CODE18,
       '' PARA_CODE19,
       '' PARA_CODE20,
       '' PARA_CODE21,
       '' PARA_CODE22,
       '' PARA_CODE24,
       '' PARA_CODE25,
       '' PARA_CODE26,
       '' PARA_CODE27,
       '' PARA_CODE28,
       '' PARA_CODE29,
       '' PARA_CODE30,
       '' END_DATE,
       '' EPARCHY_CODE,
       '' UPDATE_STAFF_ID,
       '' UPDATE_DEPART_ID,
       '' UPDATE_TIME,
       '' SUBSYS_CODE,
       0 PARAM_ATTR,
       '' PARAM_CODE,
       '' PARAM_NAME
  FROM TL_B_MONITORFILE A
  WHERE A.IN_TIME BETWEEN TO_DATE(:START_DATE, 'yyyy-mm-dd hh24:mi:ss') 
  AND TO_DATE(:END_DATE, 'yyyy-mm-dd hh24:mi:ss')
  AND (A.DATA_TYPE = :DATA_TYPE OR A.DATA_TYPE IS NULL)
  AND (A.REASON_CODE = :REASON_CODE OR A.REASON_CODE IS NULL)
  AND (A.PROCESS_TAG='A' OR A.PROCESS_TAG='0')