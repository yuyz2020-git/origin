--IS_CACHE=Y
SELECT AREA_CODE paracode,AREA_NAME paraname FROM td_m_area
 WHERE (:TRADE_EPARCHY_CODE IS NULL OR :TRADE_EPARCHY_CODE IS NOT NULL) AND validflag='0' AND area_level=30