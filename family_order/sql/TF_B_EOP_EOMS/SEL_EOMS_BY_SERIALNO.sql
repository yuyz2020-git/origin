SELECT E.SUB_IBSYSID,
       E.IBSYSID,
       E.BUSI_ID,
       E.ACCEPT_MONTH,
       GROUP_SEQ,
       TRADE_DRIECT,
       BPM_TEMPLET_ID,
       SUB_BUSI_TYPE,
       BPM_ID,
       NODE_ID,
       PRODUCT_ID,
       PRODUCT_NAME,
       OPER_TYPE,
       DEAL_STATE,
       EOMS_ORDER_CODE,
       EOMS_TACHE_CODE,
       INSERT_TIME,
       UPDATE_TIME,
       SHEETTYPE,
       SERVICETYPE,
       SERIALNO,
       ATTACHREF,
       OPPERSON,
       OPCORP,
       OPDEPART,
       OPCONTACT,
       OPTIME,
       OPDETAIL,
       ERRLIST,
       RESULT_TIME,
       PLAN_DEAL_TIME,
       REAL_DEAL_TIME,
       CITY_CODE,
       EPARCHY_CODE,
       DEPART_ID,
       DEPART_NAME,
       STAFF_ID,
       STAFF_NAME,
       STAFF_PHONE,
       RSRV_STR1,
       RSRV_STR2,
       RSRV_STR3,
       RSRV_STR4,
       RSRV_STR5,
       RSRV_STR6,
       RSRV_STR7,
       REMARK,
       RECORD_NUM
  FROM TF_B_EOP_EOMS E
WHERE SERIALNO= :SERIALNO
order by INSERT_TIME  