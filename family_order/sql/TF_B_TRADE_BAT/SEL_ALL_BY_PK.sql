SELECT BATCH_TASK_ID,
       BATCH_ID,
       BATCH_OPER_TYPE,
       TO_CHAR(ACCEPT_DATE, 'YYYY-MM-DD HH24:MI:SS') ACCEPT_DATE,
       STAFF_ID,
       DEPART_ID,
       CITY_CODE,
       EPARCHY_CODE,
       TERM_IP,
       IN_MODE_CODE,
       BATCH_COUNT,
       REMOVE_TAG,
       ACTIVE_FLAG,
       TO_CHAR(ACTIVE_TIME, 'YYYY-MM-DD HH24:MI:SS') ACTIVE_TIME,
       AUDIT_STATE,
       AUDIT_REMARK,
       TO_CHAR(AUDIT_DATE, 'YYYY-MM-DD HH24:MI:SS') AUDIT_DATE,
       AUDIT_STAFF_ID,
       AUDIT_DEPART_ID,
       AUDIT_INFO,
       ACCEPT_MONTH,
       DST_ONE_KEY_FLAG
  FROM TF_B_TRADE_BAT
 WHERE BATCH_ID = :BATCH_ID
   AND ACCEPT_MONTH = TO_NUMBER(SUBSTR(:BATCH_ID, 5, 2))
