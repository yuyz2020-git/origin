--IS_CACHE=Y
SELECT max(EXEC_ORDER)+1 EXEC_ORDER
 FROM TD_RULE_FLOW
 WHERE RULE_TYPE_CODE = :RULE_TYPE_CODE
   AND TRADE_TYPE_CODE = :TRADE_TYPE_CODE
   AND EPARCHY_CODE = :EPARCHY_CODE
   AND BRAND_CODE = :BRAND_CODE
   AND PRODUCT_ID = :PRODUCT_ID