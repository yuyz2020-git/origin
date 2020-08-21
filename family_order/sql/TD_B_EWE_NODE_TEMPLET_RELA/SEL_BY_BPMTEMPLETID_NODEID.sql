SELECT T.RELA_ID,
	   T.BPM_TEMPLET_ID,
       T.NODE_ID,
       T.NEXT_NODE_ID,
       T.CONDITION_ID,
       T.REMARK,
       T.VALID_TAG,
       T.ACCEPT_DEPART_ID,
       T.UPDATE_DEPART_ID,
       T.UPDATE_STAFF_ID,
       T.ACCEPT_STAFF_ID,
       TO_CHAR(T.CREATE_DATE, 'YYYY-MM-DD HH24:MI:SS') CREATE_DATE,
       TO_CHAR(T.UPDATE_DATE, 'YYYY-MM-DD HH24:MI:SS') UPDATE_DATE
  FROM TD_B_EWE_NODE_TEMPLET_RELA T
 WHERE T.BPM_TEMPLET_ID = :BPM_TEMPLET_ID
   AND T.NODE_ID = :NODE_ID
   AND T.VALID_TAG = :VALID_TAG