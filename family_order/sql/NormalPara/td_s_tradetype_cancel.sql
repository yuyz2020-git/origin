--IS_CACHE=Y
SELECT TRADE_TYPE_CODE paracode,TRADE_TYPE paraname FROM td_s_tradetype
 WHERE EPARCHY_CODE=:TRADE_EPARCHY_CODE
  AND BACK_TAG='1'