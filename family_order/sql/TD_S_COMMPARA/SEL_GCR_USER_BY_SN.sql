SELECT a.serial_number_a para_code1, 
( select v1.cust_name from tf_f_customer v1, tf_f_user v2 where v2.partition_id=mod(a.user_id_a,10000) and v2.user_id = a.user_id_a 
and v1.cust_id = v2.cust_id ) para_code2, a.serial_number_b para_code3, 
to_char( a.start_date,'yyyy-mm-dd hh24:mi:ss') para_code4, to_char( a.end_date ,'yyyy-mm-dd hh24:mi:ss') para_code5, 
(select s1.discnt_code from tf_f_user_discnt s1 where s1.partition_id=mod(a.user_id_b,10000) and s1.user_id = a.user_id_b and 
s1.discnt_code='950'  and sysdate between s1.start_date and s1.end_date
) para_code6, '' para_code7, '' para_code8, '' para_code9, '' para_code10, '' para_code11,'' para_code12,'' para_code13,'' para_code14,'' para_code15, '' para_code16,'' para_code17,'' para_code18,'' para_code19,'' para_code20, '' para_code21,'' para_code22,'' para_code23,'' para_code24,'' para_code25, '' para_code26,'' para_code27,'' para_code28,'' para_code29,'' para_code30, '' start_date,'' end_date,'' eparchy_code,'' remark,'' update_staff_id, '' update_depart_id,'' update_time,'' subsys_code,0 param_attr,'' param_code,'' param_name  
FROM tf_f_relation_uu a
where relation_type_code = '26'
      AND a.serial_number_b = :PARA_CODE1
      AND (:PARA_CODE2 IS NOT NULL OR :PARA_CODE3 IS NULL)
      AND (:PARA_CODE3 IS NOT NULL OR :PARA_CODE3 IS NULL)
      AND (:PARA_CODE4 IS NOT NULL OR :PARA_CODE4 IS NULL)
      AND (:PARA_CODE5 IS NOT NULL OR :PARA_CODE5 IS NULL)
      AND (:PARA_CODE6 IS NOT NULL OR :PARA_CODE6 IS NULL)
      AND (:PARA_CODE7 IS NOT NULL OR :PARA_CODE7 IS NULL)
      AND (:PARA_CODE8 IS NOT NULL OR :PARA_CODE8 IS NULL)
      AND (:PARA_CODE9 IS NOT NULL OR :PARA_CODE9 IS NULL)
      AND (:PARA_CODE10 IS NOT NULL OR :PARA_CODE10 IS NULL)