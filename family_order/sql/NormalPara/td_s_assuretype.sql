--IS_CACHE=Y
SELECT ASSURE_TYPE_CODE paracode,ASSURE_TYPE paraname FROM td_s_assuretype
 WHERE sysdate BETWEEN start_date AND end_date
   AND (:TRADE_EPARCHY_CODE IS NULL OR :TRADE_EPARCHY_CODE IS NOT NULL)