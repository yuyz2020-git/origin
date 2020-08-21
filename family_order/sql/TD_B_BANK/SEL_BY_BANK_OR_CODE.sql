--IS_CACHE=Y
SELECT BANK_CODE,
       BANK,
       EPARCHY_CODE,
       CITY_CODE,
       SUPER_BANK_CODE,
       BANK_INNER_CODE,
       CONTACT,
       CONTACT_PHONE,
       REMARK,
       UPDATE_STAFF_ID,
       UPDATE_DEPART_ID,
       TO_CHAR(UPDATE_TIME, 'yyyy-mm-dd hh24:mi:ss') UPDATE_TIME
  FROM TD_B_BANK
 WHERE (EPARCHY_CODE = :EPARCHY_CODE OR :EPARCHY_CODE IS NULL OR
       EPARCHY_CODE = 'ZZZZ')
   AND (super_bank_code=:SUPER_BANK_CODE OR :SUPER_BANK_CODE IS NULL or super_bank_code='00')
   AND (BANK_CODE LIKE '%' ||:BANK_CODE||'%' OR BANK LIKE '%'||:BANK||'%')