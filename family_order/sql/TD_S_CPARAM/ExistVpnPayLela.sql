SELECT COUNT(1) recordcount FROM tf_b_trade_relation a
WHERE trade_id = :TRADE_ID
AND accept_month = :ACCEPT_MONTH
AND relation_type_code = :RELATION_TYPE_CODE
AND modify_tag = :MODIFY_TAG
AND (role_code_b = :ROLE_CODE_B OR :ROLE_CODE_B = '*')
AND EXISTS (SELECT 1 FROM tf_a_payrelation
            WHERE user_id= a.id_b
            AND partition_id = MOD(a.id_b,10000)
            AND default_tag = '0'
            AND act_tag='1'
            AND (SELECT MIN(acyc_id) FROM td_a_acycpara WHERE use_tag=0) BETWEEN start_acyc_id  AND end_acyc_id)