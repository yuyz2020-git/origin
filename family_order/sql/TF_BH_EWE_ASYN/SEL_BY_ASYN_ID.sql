SELECT T.ASYN_ID,
       T.BUSIFORM_ID,
       T.ACCEPT_MONTH,
       T.BUSIFORM_NODE_ID,
       T.NODE_ID,
       T.BI_SN,
       T.SUB_BI_SN,
       T.ATTR_CODE,
       T.ATTR_VALUE,
       T.VALID_TAG,
       T.RSRV_STR1,
       T.RSRV_STR2,
       T.RSRV_STR3,
       T.REMARK,
       T.EPARCHY_CODE,
       T.ACCEPT_DEPART_ID,
       T.UPDATE_DEPART_ID,
       T.UPDATE_STAFF_ID,
       T.ACCEPT_STAFF_ID,
       TO_CHAR(T.CREATE_DATE, 'YYYY-MM-DD HH24:MI:SS') CREATE_DATE,
       TO_CHAR(T.UPDATE_DATE, 'YYYY-MM-DD HH24:MI:SS') UPDATE_DATE
  FROM TF_BH_EWE_ASYN T
 WHERE T.ASYN_ID = :ASYN_ID
