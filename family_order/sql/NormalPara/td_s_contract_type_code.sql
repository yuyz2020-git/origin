SELECT contract_type_code paracode,contract_type paraname
FROM td_s_contract_type_code
WHERE eparchy_code = :TRADE_EPARCHY_CODE