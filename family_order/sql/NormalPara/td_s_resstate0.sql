--IS_CACHE=Y
SELECT RES_STATE_CODE paracode,RES_STATE paraname FROM td_s_resstate
 WHERE (:TRADE_EPARCHY_CODE IS NULL OR :TRADE_EPARCHY_CODE IS NOT NULL)
   AND res_type_code='0'