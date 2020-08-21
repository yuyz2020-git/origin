SELECT T.TRADE_ID,
       T.ACTIVE_CODE,
       TO_CHAR(T.TRACE_TIME) TRACE_TIME,
       T.RESULT_CODE,
       T.RESULT_INFO
  FROM TL_B_ORDER_TRACE T
 WHERE ORDER_ID = :ORDER_ID