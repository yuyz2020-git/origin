--IS_CACHE=Y
SELECT A.NAVIGATE_ID,
       A.NAVIGATE_TYPE,
       A.NAVIGATE_KIND,
       A.NAVIGATE_NAME,
       A.NAVIGATE_HINT,
       A.NAVIGATE_DESC,
       to_char(A.START_DATE,'yyyy-mm-dd') START_DATE,
       to_char(A.END_DATE,'yyyy-mm-dd') END_DATE,
       A.IS_NEED_AUTH,
       B.FLOW_ID,
       B.FLOW_TYPE,
       B.FLOW_KIND,
       B.FLOW_NAME,
       B.RIGHT_CODE,
       C.FLOW_HINT,
       C.FLOW_ORDER,
       C.FLOW_DESC,
       C.NAVIGATE_ID,
       C.FLOW_ID,
       C.FLOW_ORDER,
       C.IS_COMMIT,
       C.IS_OPEN,
       C.IS_CHOICE,
       C.IS_REDO,
       C.IS_AUTO_AUTH,
       C.RULE_TYPE_CODE CFG_RULE_TYPE_CODE,
       C.RULE_KIND_CODE CFG_KIND_CODE,
       C.INIT_METHOD,
       to_char(C.START_DATE,'yyyy-mm-dd') FLOW_START_DATE,
       to_char(C.END_DATE,'yyyy-mm-dd') FLOW_END_DATE
  FROM TD_B_NAVIGATE_DEF A, TD_B_NAVIGATE_FLOW B, TD_B_NAVIGATE_CFG C
 WHERE A.NAVIGATE_ID = C.NAVIGATE_ID
   AND B.FLOW_ID = C.FLOW_ID
   AND SYSDATE BETWEEN A.START_DATE AND A.END_DATE
   AND SYSDATE BETWEEN B.START_DATE AND B.END_DATE
   AND SYSDATE BETWEEN C.START_DATE AND C.END_DATE
   AND A.NAVIGATE_ID = :NAVIGATE_ID
   ORDER BY C.FLOW_ORDER ASC