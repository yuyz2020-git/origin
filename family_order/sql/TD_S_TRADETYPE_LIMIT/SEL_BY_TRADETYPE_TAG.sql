--IS_CACHE=Y
SELECT trade_type_code,limit_trade_type_code,brand_code,limit_attr,limit_tag,to_char(start_date,'yyyy-mm-dd hh24:mi:ss') start_date,to_char(end_date,'yyyy-mm-dd hh24:mi:ss') end_date,eparchy_code,remark,update_staff_id,update_depart_id,to_char(update_time,'yyyy-mm-dd hh24:mi:ss') update_time
  FROM td_s_tradetype_limit a
 WHERE trade_type_code=:TRADE_TYPE_CODE
   AND (brand_code=:BRAND_CODE OR brand_code = 'ZZZZ')
   AND limit_attr=:LIMIT_ATTR
   AND limit_tag=:LIMIT_TAG
   AND sysdate BETWEEN start_date AND end_date
   AND (eparchy_code=:EPARCHY_CODE OR eparchy_code = 'ZZZZ')