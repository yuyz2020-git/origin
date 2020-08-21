SELECT T.BUSIFORM_ID, 
       T.BUSIFORM_NODE_ID,
       T.ACCEPT_MONTH,
       T.TIMER_ID,
       TO_CHAR(T.TIMER_DATE, 'YYYY-MM-DD HH24:MI:SS') TIMER_DATE,
       T.TIMER_NUM,
       T.TIMER_CONTENT,
       T.TIMER_RESULT,
       T.REMARK,
       T.EPARCHY_CODE,
       T.ACCEPT_DEPART_ID,
       T.UPDATE_DEPART_ID,
       T.UPDATE_STAFF_ID,
       T.ACCEPT_STAFF_ID,
       TO_CHAR(T.CREATE_DATE, 'YYYY-MM-DD HH24:MI:SS') CREATE_DATE,
       TO_CHAR(T.UPDATE_DATE, 'YYYY-MM-DD HH24:MI:SS') UPDATE_DATE
  FROM TF_B_EWE_TIMER_TRA T
 WHERE T.BUSIFORM_NODE_ID = :BUSIFORM_NODE_ID
