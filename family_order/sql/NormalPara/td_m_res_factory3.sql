--IS_CACHE=Y
SELECT FACTORY_CODE paracode,FACTORY paraname FROM td_m_res_factory
 WHERE EPARCHY_CODE=:TRADE_EPARCHY_CODE
   AND RES_TYPE_CODE='3'