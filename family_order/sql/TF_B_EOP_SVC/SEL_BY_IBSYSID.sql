SELECT T.SUB_IBSYSID,
       T.IBSYSID,
       T.SEQ,
       T.GROUP_SEQ,
       T.NODE_ID,
       T.ACCEPT_MONTH,
       T.ATTR_CODE,
       T.ATTR_NAME,
       T.ATTR_VALUE,
       T.PARENT_ATTR_CODE,
       T.RECORD_NUM,
       TO_CHAR(T.UPDATE_TIME, 'YYYY-MM-DD HH24:MI:SS') UPDATE_TIME,
       T.RSRV_STR1,
       T.RSRV_STR2
  FROM TF_B_EOP_SVC T
 WHERE T.IBSYSID = :IBSYSID
