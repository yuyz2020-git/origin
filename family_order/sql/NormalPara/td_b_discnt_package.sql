--IS_CACHE=Y
SELECT distinct(PACKAGE_ID) paracode,PACKAGE_NAME paraname FROM td_b_discnt_package
 WHERE EPARCHY_CODE=:TRADE_EPARCHY_CODE