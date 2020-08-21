SELECT SUB_IBSYSID,
       IBSYSID,
       SEQ,
       GROUP_SEQ,
       NODE_ID,
       ACCEPT_MONTH,
       ATTR_CODE,
       ATTR_NAME,
       ATTR_VALUE,
       ATTR_TYPE,
       PARENT_ATTR_CODE,
       RECORD_NUM,
       UPDATE_TIME,
       RSRV_STR1,
       RSRV_STR2
  FROM TF_BH_EOP_ATTR A
 WHERE A.NODE_ID = :NODE_ID
   AND A.RECORD_NUM > 0
   AND A.IBSYSID = :IBSYSID