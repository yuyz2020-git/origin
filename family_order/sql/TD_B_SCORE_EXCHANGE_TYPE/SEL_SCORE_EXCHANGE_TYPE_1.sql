--IS_CACHE=Y
SELECT EXCHANGE_TYPE_CODE,EXCHANGE_TYPE
  FROM TD_B_SCORE_EXCHANGE_TYPE
 WHERE (EPARCHY_CODE=:EPARCHY_CODE OR EPARCHY_CODE ='ZZZZ')
    AND SYSDATE BETWEEN START_DATE AND END_DATE
    AND EXCHANGE_TYPE_CODE=:EXCHANGE_TYPE_CODE 