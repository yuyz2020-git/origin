--IS_CACHE=Y
SELECT T.NEW_STATE_CODE
  FROM TD_S_TRADE_SVCSTATE T
 WHERE T.TRADE_TYPE_CODE = :TRADE_TYPE_CODE
   AND (T.SERVICE_ID = '0' OR T.SERVICE_ID = '2010' OR T.SERVICE_ID = '2019' OR T.SERVICE_ID = '2020' OR T.SERVICE_ID = '2025')
   AND (T.EPARCHY_CODE = :EPARCHY_CODE OR T.EPARCHY_CODE = 'ZZZZ')