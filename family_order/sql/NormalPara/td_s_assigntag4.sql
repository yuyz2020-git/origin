--IS_CACHE=Y
SELECT ASSIGN_TAG paracode,ASSIGN_TAG_NAME paraname FROM td_s_assigntag
 WHERE RES_TYPE_CODE='4' AND (:TRADE_EPARCHY_CODE IS NULL OR :TRADE_EPARCHY_CODE IS NOT NULL)