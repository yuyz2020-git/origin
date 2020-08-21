 SELECT T.SUB_IBSYSID,
       T.IBSYSID,
       T.ACCEPT_MONTH,
       T.SEQ,
       T.NODE_ID,
       T.ATTR_CODE,
       T.ATTR_NAME,
       T.ATTR_VALUE,
       T.PARENT_ATTR_CODE,
       T.RECORD_NUM,
       TO_CHAR(T.UPDATE_TIME, 'YYYY-MM-DD HH24:MI:SS') UPDATE_TIME,
       T.RSRV_STR1,
       T.RSRV_STR2
  FROM TF_B_EOP_ATTR T
 WHERE T.IBSYSID = :IBSYSID
       and T.NODE_ID = :NODE_ID
       and T.RECORD_NUM = :RECORD_NUM
 ORDER BY T.RECORD_NUM asc