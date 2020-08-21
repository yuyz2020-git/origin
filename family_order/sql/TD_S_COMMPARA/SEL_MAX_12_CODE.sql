--IS_CACHE=Y
select max(PARA_CODE1) MAX_DAY, max(PARA_CODE2) MAX_FEE
 from TD_S_COMMPARA
where PARAM_ATTR = :PARAM_ATTR
  and PARAM_CODE = :PRODUCT_ID
  AND (EPARCHY_CODE = :EPARCHY_CODE OR EPARCHY_CODE='ZZZZ')
  and sysdate between START_DATE and END_DATE