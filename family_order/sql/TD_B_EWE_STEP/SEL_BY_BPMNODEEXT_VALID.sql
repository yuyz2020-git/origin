SELECT T.STEP_ID,
       T.BPM_TEMPLET_ID,
       T.NODE_ID,
       T.EXT_ID,
       T.DATA_STRUCTURE,
       T.GET_MODE,
       T.LOAD_CLASS,
       T.LOAD_SVC,
       T.DEAL_MAXNUM,
       T.REMARK,
       T.VALID_TAG,
       T.ACCEPT_DEPART_ID,
       T.UPDATE_DEPART_ID,
       T.UPDATE_STAFF_ID,
       T.ACCEPT_STAFF_ID,
       TO_CHAR(T.CREATE_DATE, 'YYYY-MM-DD HH24:MI:SS') CREATE_DATE,
       TO_CHAR(T.UPDATE_DATE, 'YYYY-MM-DD HH24:MI:SS') UPDATE_DATE
  FROM TD_B_EWE_STEP T
 WHERE T.BPM_TEMPLET_ID = :BPM_TEMPLET_ID
   AND T.NODE_ID = :NODE_ID
   AND T.EXT_ID = :EXT_ID
   AND T.VALID_TAG = :VALID_TAG