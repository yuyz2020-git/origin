--IS_CACHE=Y
SELECT MOFFICE_ID paracode,EPARCHY_CODE paraname FROM td_m_moffice
 WHERE (:TRADE_EPARCHY_CODE IS NULL OR :TRADE_EPARCHY_CODE IS NOT NULL)