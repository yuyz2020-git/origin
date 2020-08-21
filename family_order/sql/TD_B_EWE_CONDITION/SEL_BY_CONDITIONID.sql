SELECT T.CONDITION_ID,
       T.CONDITION_NAME,
       T.VALID_COND,
       T.COND_SVC,
       T.JUDGE_RESULT,
       T.PRIORITY,
       T.REMARK,
       T.VALID_TAG,
       T.ACCEPT_DEPART_ID,
       T.UPDATE_DEPART_ID,
       T.UPDATE_STAFF_ID,
       T.ACCEPT_STAFF_ID,
       TO_CHAR(T.CREATE_DATE, 'YYYY-MM-DD HH24:MI:SS') CREATE_DATE,
       TO_CHAR(T.UPDATE_DATE, 'YYYY-MM-DD HH24:MI:SS') UPDATE_DATE
  FROM TD_B_EWE_CONDITION T
 WHERE T.CONDITION_ID = :CONDITION_ID
   AND T.VALID_TAG = :VALID_TAG