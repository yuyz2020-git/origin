SELECT V.*
  FROM (SELECT /*+ INDEX (B PK_TD_S_TRADETYPE) */
         TO_CHAR(A.TRADE_ID) TRADE_ID,
         A.TRADE_TYPE_CODE,
         A.USER_ID,
         A.BPM_ID,
         A.SUBSCRIBE_STATE,
         B.BPM_CODE,
         substr(B.tag_set,9,1) TRADE_SPLIT,
         A.CANCEL_TAG,
         A.EPARCHY_CODE,
         A.PRIORITY,
         TO_CHAR(EXEC_TIME, 'YYYY-MM-DD HH24:MI:SS') ACCEPT_DATE
          FROM TF_B_TRADE A, TD_S_TRADETYPE B
         WHERE A.EXEC_TIME <= SYSDATE
           AND A.EXEC_TIME > (SYSDATE - :INDAYS)
           AND A.NEXT_DEAL_TAG = '0'
           AND A.SUBSCRIBE_STATE IN ('0', '2', '5', '8', 'C', 'D')
           AND A.TRADE_TYPE_CODE = B.TRADE_TYPE_CODE
           AND A.EPARCHY_CODE = B.EPARCHY_CODE
           AND (SUBSTR(B.BPM_CODE, 1, 1) <> 'J' OR B.BPM_CODE IS NULL)
           AND A.CANCEL_TAG IN ('0', '2')
         ) V
 WHERE ROWNUM <= :ROWNUM