SELECT T.BUSIFORM_NODE_ID,
	   T.BUSIFORM_ID,
	   T.ACCEPT_MONTH,
       T.STEP_ID,
       T.DEAL_SEQ,
       T.EXT_ID,
       T.STATE,
       T.REMARK,
       T.DEAL_NUM,
       T.DEAL_TIMELIMIT,
       T.EPARCHY_CODE,
       T.ACCEPT_DEPART_ID,
       T.UPDATE_DEPART_ID,
       T.UPDATE_STAFF_ID,
       T.ACCEPT_STAFF_ID,
       TO_CHAR(T.CREATE_DATE, 'YYYY-MM-DD HH24:MI:SS') CREATE_DATE,
       TO_CHAR(T.UPDATE_DATE, 'YYYY-MM-DD HH24:MI:SS') UPDATE_DATE
  FROM TF_B_EWE_STEP T
 WHERE T.BUSIFORM_NODE_ID = :BUSIFORM_NODE_ID
   AND T.STATE = :STATE
