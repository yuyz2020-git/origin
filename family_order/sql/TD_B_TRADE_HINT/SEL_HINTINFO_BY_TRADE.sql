--IS_CACHE=Y
SELECT A.HINT_CODE,
       A.TRADE_TYPE_CODE,
       A.ELEMENT_TYPE_CODE,
       A.ELEMENT_ID,
       A.EXEC_COUNT,
       A.EXEC_MODE,
       A.NOTIFY_CONTENT,
       A.HINT_TYPE,
       A.VERIFY_TAG,
       A.IN_MODE_CODE,
       A.EPARCHY_CODE,
       TO_CHAR(A.START_DATE, 'YYYY-MM-DD') START_DATE,
       TO_CHAR(A.END_DATE, 'YYYY-MM-DD') END_DATE,
       TO_CHAR(A.UPDATE_TIME, 'YYYY-MM-DD') UPDATE_TIME,
       A.UPDATE_STAFF_ID,
       A.UPDATE_DEPART_ID,
       A.RSRV_STR1,
       A.RSRV_STR2,
       A.RSRV_STR3,
       TO_CHAR(A.RSRV_DATE1, 'YYYY-MM-DD') RSRV_DATE1,
       TO_CHAR(A.RSRV_DATE2, 'YYYY-MM-DD') RSRV_DATE2,
       TO_CHAR(A.RSRV_DATE3, 'YYYY-MM-DD') RSRV_DATE3,
       A.RSRV_TAG1,
       A.RSRV_TAG2,
       A.RSRV_TAG3,
       A.REMARK
  FROM TD_B_TRADE_HINT A
 WHERE 1 = 1
   AND A.VERIFY_TAG = :TAG
   AND A.TRADE_TYPE_CODE = :TRADE_TYPE_CODE
   AND A.IN_MODE_CODE = :IN_MODE_CODE
   AND A.EXEC_MODE = :EXEC_MODE
   AND A.HINT_TYPE = :HINT_TYPE
   AND A.ELEMENT_TYPE_CODE = :ELEMENT_TYPE_CODE
   AND A.ELEMENT_ID = :ELEMENT_ID
   AND A.EXEC_COUNT = :EXEC_COUNT
   AND SYSDATE BETWEEN A.START_DATE AND A.END_DATE
   AND (A.EPARCHY_CODE = :EPARCHY_CODE OR A.EPARCHY_CODE = 'ZZZZ')
 ORDER BY 1 DESC