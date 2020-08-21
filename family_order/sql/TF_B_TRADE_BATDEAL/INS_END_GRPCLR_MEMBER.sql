INSERT INTO TF_B_TRADE_BATDEAL
  (BATCH_TASK_ID,
   BATCH_ID,
   OPERATE_ID,
   BATCH_OPER_TYPE,
   PRIORITY,
   REFER_TIME,
   EXEC_TIME,
   SERIAL_NUMBER,
   ROUTE_EPARCHY_CODE,
   CANCEL_TAG,
   DEAL_STATE,
   DEAL_TIME,
   DEAL_DESC)
  SELECT TO_NUMBER(:BATCH_TASK_ID),
         TO_NUMBER(:BATCH_ID),
         F_SYS_GETSEQID('0898', 'BATCH_ID'),
         'GROUPMEMCANCEL',
         '500',
         SYSDATE,
         SYSDATE,
         B.SERIAL_NUMBER,
         :ROUTE_EPARCHY_CODE,
         '0',
         '1',
         SYSDATE,
         '彩铃成员批量退订(信控)'
    FROM TF_F_RELATION_UU A, TF_F_USER B,TF_A_PAYRELATION C
   WHERE A.USER_ID_A = :USER_ID_A
     AND SYSDATE BETWEEN A.START_DATE AND A.END_DATE
     AND A.USER_ID_B = B.USER_ID
     AND A.PARTITION_ID = B.PARTITION_ID
     AND B.REMOVE_TAG = '0'
     AND B.USER_ID = C.USER_ID 
     AND C.PAYITEM_CODE = 41743
     AND (TO_NUMBER(TO_CHAR(SYSDATE, 'YYYYMMDD')) BETWEEN C.START_CYCLE_ID AND C.END_CYCLE_ID)
     AND (TO_NUMBER(TO_CHAR((LAST_DAY(TRUNC(SYSDATE)) + 1), 'YYYYMMDD'))) < C.END_CYCLE_ID