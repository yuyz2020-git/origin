--IS_CACHE=Y
SELECT MOFFICE_ID paracode,SWITCH_ID paraname FROM td_m_moffice
 WHERE EPARCHY_CODE=:TRADE_EPARCHY_CODE