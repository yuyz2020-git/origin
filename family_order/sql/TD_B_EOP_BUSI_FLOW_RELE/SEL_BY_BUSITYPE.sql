SELECT SP.PROD_SPEC_ID,
       T.BUSI_CODE,
       T.BUSI_NAME,
       T.AREA_ID,
       T.IN_MODE_CODE,
       T.PRIORITY,
       T.BPM_TEMPLET_ID,
       T.BUSI_TYPE,
       T.BUSI_SPEC_ID,
       T.BEGIN_TIME,
       T.END_TIME,
       T.REMARK,
       T.RSRV_STR1,
       T.RSRV_STR2,
       T.RSRV_STR3,
       T.BUSI_OPER_TYPE
  FROM TD_B_EOP_BUSI_FLOW_RELE T, TD_B_EOP_PROD_SPEC SP
 WHERE T.BUSI_SPEC_ID = SP.BUSI_SPEC_ID
   AND T.BUSI_TYPE = :BUSI_TYPE
   AND SP.VALID_TAG = :VALID_TAG
   AND SYSDATE BETWEEN T.BEGIN_TIME AND T.END_TIME