--IS_CACHE=Y
SELECT AREA_CODE paracode,AREA_NAME paraname FROM td_m_area
 WHERE AREA_LEVEL=20 and (:TRADE_EPARCHY_CODE IS NULL OR :TRADE_EPARCHY_CODE IS NOT NULL)