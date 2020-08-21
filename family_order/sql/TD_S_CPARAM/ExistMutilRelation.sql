SELECT COUNT(*) recordcount
FROM tf_f_relation_uu a
WHERE a.user_id_b=:USER_ID
AND a.relation_type_code in('20','21')
AND a.end_date>TRUNC(LAST_DAY(SYSDATE ) + 1)