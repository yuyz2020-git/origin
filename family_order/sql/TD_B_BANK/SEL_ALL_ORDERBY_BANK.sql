--IS_CACHE=Y
SELECT BANK_CODE,BANK,SUPER_BANK_CODE, BANK_CODE||'|'||BANK BANK_SHOW
FROM td_b_bank
WHERE eparchy_code = :EPARCHY_CODE
and BANK != '现金'
ORDER BY bank_code