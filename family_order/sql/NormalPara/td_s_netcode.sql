--IS_CACHE=Y
SELECT NET_TYPE_CODE paracode,NET_TYPE_NAME paraname FROM td_s_netcode WHERE (:TRADE_EPARCHY_CODE IS NULL OR :TRADE_EPARCHY_CODE IS NOT NULL)