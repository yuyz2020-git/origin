--IS_CACHE=Y
SELECT VALUE_CODE paracode,VALUE_PRICE/100 paraname FROM td_m_resvalue
 WHERE EPARCHY_CODE=:TRADE_EPARCHY_CODE
   AND RES_TYPE_CODE='3'