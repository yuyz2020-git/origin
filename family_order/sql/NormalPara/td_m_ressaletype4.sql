--IS_CACHE=Y
SELECT SALE_TYPE_CODE paracode,SALE_TYPE paraname FROM td_m_ressaletype
 WHERE EPARCHY_CODE=:TRADE_EPARCHY_CODE
   AND RES_TYPE_CODE='4'