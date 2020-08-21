--IS_CACHE=Y
SELECT TRADE_TYPE_CODE,IN_MODE_CODE,PRODUCT_ID,PACKAGE_ID,ELEMENT_ID,ELEMENT_TYPE_CODE,FEE_MODE,
FEE_TYPE_CODE, FEE,RULE_BIZ_KIND_CODE,LIMIT_MONEY,START_DATE,END_DATE,EPARCHY_CODE,REMARK,
UPDATE_STAFF_ID,UPDATE_DEPART_ID,UPDATE_TIME,PAY_MODE,OUT_DEPOSIT_CODE,IN_DEPOSIT_CODE,VIP_CLASS_ID,
RSRV_STR1,RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5,RSRV_STR6,RSRV_STR7,RSRV_STR8,RSRV_STR9,RSRV_STR10
FROM TD_B_PRODUCT_TRADEFEE
 WHERE (TRADE_TYPE_CODE = :TRADE_TYPE_CODE OR TRADE_TYPE_CODE ='-1')
   AND (product_id=:PRODUCT_ID OR product_id=-1)
   AND (vip_class_id=:VIP_CLASS_ID OR vip_class_id is null)
   AND sysdate BETWEEN start_date AND end_date
   and (EPARCHY_CODE = :EPARCHY_CODE or EPARCHY_CODE = 'ZZZZ') 
   and TRADE_FEE_TYPE =:TRADE_FEE_TYPE