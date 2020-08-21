SELECT SERIAL_NUMBER_A,
       FOREGIFT,
       DEPOSIT,
       TO_CHAR(PLAN_BEGIN,'YYYY-MM-DD HH24:MI:SS') PLAN_BEGIN,
       TO_CHAR(PLAN_END,'YYYY-MM-DD HH24:MI:SS') PLAN_END,
       TO_CHAR(START_DATE,'YYYY-MM-DD HH24:MI:SS') START_DATE,
       TO_CHAR(END_DATE,'YYYY-MM-DD HH24:MI:SS') END_DATE,
       TRANS_COUNT,
       OPEN_TAG,
       UPDATE_STAFF_ID,
       TO_CHAR(UPDATE_TIME,'YYYY-MM-DD HH24:MI:SS') UPDATE_TIME,
       RSRV_STR1,
       RSRV_STR2,
       RSRV_STR3,
       RSRV_STR4,
       RSRV_STR5,
       TO_CHAR(RSRV_DATE1,'YYYY-MM-DD HH24:MI:SS') RSRV_DATE1,
       TO_CHAR(RSRV_DATE2,'YYYY-MM-DD HH24:MI:SS') RSRV_DATE2,
       TO_CHAR(RSRV_DATE3,'YYYY-MM-DD HH24:MI:SS') RSRV_DATE3,
       RSRV_NUM1,
       RSRV_NUM2,
       RSRV_NUM3,
       REMARK
  FROM TF_SA_ACTION_CODE
 WHERE SERIAL_NUMBER_A = :SERIAL_NUMBER_A