--IS_CACHE=Y
SELECT PARA_CODE2 paracode,PARA_NAME paraname FROM td_m_goods_para
 WHERE EPARCHY_CODE=:TRADE_EPARCHY_CODE
   AND PARA_CODE1='GOODSMOVE'
   AND start_date<=SYSDATE
   AND end_date>=SYSDATE