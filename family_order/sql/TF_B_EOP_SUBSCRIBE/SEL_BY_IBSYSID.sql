SELECT T.IBSYSID,
       T.ORDER_ID,
       T.ACCEPT_MONTH,
       T.BPM_TEMPLET_ID,
       T.IN_MODE_CODE,
       T.DEAL_STATE,
       T.DEAL_RESULT,
       T.BUSI_TYPE,
       T.BUSI_CODE,
       T.GROUP_ID,
       T.ACCEPT_MONTH,
       T.CUST_NAME,
       TO_CHAR(T.ACCEPT_TIME, 'YYYY-MM-DD HH24:MI:SS') ACCEPT_TIME,
       T.EPARCHY_CODE,
       TO_CHAR(T.FLOW_EXPECT_TIME, 'YYYY-MM-DD HH24:MI:SS') FLOW_EXPECT_TIME,
       T.FLOW_LEVEL,
       T.FLOW_DESC,
       T.REMARK,
       T.RSRV_STR1,
       T.RSRV_STR2,
       T.RSRV_STR3,
       T.RSRV_STR4,
       T.RSRV_STR5,
       T.RSRV_STR6,
       T.RSRV_STR7
  FROM TF_B_EOP_SUBSCRIBE T
 WHERE T.IBSYSID = :IBSYSID
