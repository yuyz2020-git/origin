--IS_CACHE=Y
SELECT FOREGIFT_CODE paracode,FOREGIFT_NAME paraname
  FROM td_s_foregift
 WHERE (:TRADE_EPARCHY_CODE IS NULL OR :TRADE_EPARCHY_CODE IS NOT NULL)
   AND update_staff_id = '11111111'
ORDER BY TO_NUMBER(paracode)