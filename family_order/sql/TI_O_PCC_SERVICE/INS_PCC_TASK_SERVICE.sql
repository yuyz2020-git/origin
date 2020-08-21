insert into TI_O_PCC_SERVICE
  (BASS_FLOW_ID,
   ACCEPT_MONTH,
   IN_DATE,
   OPERATION_TYPE,
   USER_ID,
   USR_IDENTIFIER,
   SERVICE_CODE,
   SERVICE_BILLING_TYPE,
   SERVICE_START_DATE_TIME,
   SERVICE_END_DATE_TIME,
   SERVICE_USAGE_STATE,
   EXEC_TYPE,
   EXEC_STATE,
   EPARCHY_CODE,
   UPDATE_TIME,
   UPDATE_STAFF_ID,
   UPDATE_DEPART_ID)
values
  (:BASS_FLOW_ID,
   TO_CHAR(TO_NUMBER(TO_CHAR(SYSDATE, 'MM'))),
   SYSDATE,
   :OPERATION_TYPE,
   :USER_ID,
   :USR_IDENTIFIER,
   :SERVICE_CODE,
   :SERVICE_BILLING_TYPE,
   TO_DATE(:SERVICE_START_DATE_TIME, 'YYYY-MM-DD HH24:MI:SS'),
   TO_DATE(:SERVICE_END_DATE_TIME, 'YYYY-MM-DD HH24:MI:SS'),
   :SERVICE_USAGE_STATE,
   '0',
   '0',
   :EPARCHY_CODE,
   SYSDATE,
   :UPDATE_STAFF_ID,
   :UPDATE_DEPART_ID)