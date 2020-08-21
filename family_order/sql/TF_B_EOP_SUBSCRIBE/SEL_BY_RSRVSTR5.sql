SELECT T.IBSYSID, T.BPM_TEMPLET_ID, T.GROUP_ID, T.CUST_NAME, T.RSRV_STR5
  FROM TF_B_EOP_SUBSCRIBE T
 WHERE T.RSRV_STR5 = :RSRV_STR5
UNION ALL
SELECT E.IBSYSID, E.BPM_TEMPLET_ID, E.GROUP_ID, E.CUST_NAME, E.RSRV_STR5
  FROM TF_BH_EOP_SUBSCRIBE E
 WHERE E.RSRV_STR5 = :RSRV_STR5