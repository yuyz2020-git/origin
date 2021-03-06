SELECT group_id para_code1,
       b.product_id para_code2,
       a.cust_id para_code3,
       cust_name para_code4,
       b.serial_number para_code5,
       to_char(b.open_date, 'yyyy-mm-dd hh24:mi:ss') para_code6,
       decode(b.destroy_time,'',to_date('2050-12-31 23:59:59','yyyy-mm-dd hh24:mi:ss'),to_char(b.destroy_time, 'yyyy-mm-dd hh24:mi:ss'))  para_code7,
       '' para_code8,
       '' para_code9,
       '' para_code10,
       '' para_code11,
       '' para_code12,
       '' para_code13,
       '' para_code14,
       '' para_code15,
       '' para_code16,
       '' para_code17,
       '' para_code18,
       '' para_code19,
       '' para_code20,
       '' para_code21,
       '' para_code22,
       '' para_code23,
       '' para_code24,
       '' para_code25,
       '' para_code26,
       '' para_code27,
       '' para_code28,
       '' para_code29,
       '' para_code30,
       '' start_date,
       '' end_date,
       '' eparchy_code,
       '' remark,
       '' update_staff_id,
       '' update_depart_id,
       '' update_time,
       '' subsys_code,
       0 param_attr,
       '' param_code,
       '' param_name 
  from tf_f_cust_group a,tf_f_user b
    where a.cust_id = b.cust_id
    and a.remove_tag = '0' and b.remove_tag = '0'
    and b.user_id in (select user_id_a from tf_F_relation_uu 
                       where serial_number_b = :PARA_CODE1
                        and relation_type_code = :PARA_CODE2 and role_code_b = :PARA_CODE3
                        and end_date > sysdate)
   AND (:PARA_CODE4 = '' OR :PARA_CODE5 IS NULL)
   AND (:PARA_CODE5 = '' OR :PARA_CODE5 IS NULL)
   AND (:PARA_CODE6 = '' OR :PARA_CODE6 IS NULL)
   AND (:PARA_CODE7 = '' OR :PARA_CODE7 IS NULL)
   AND (:PARA_CODE8 = '' OR :PARA_CODE8 IS NULL)
   AND (:PARA_CODE9 = '' OR :PARA_CODE9 IS NULL)
   AND (:PARA_CODE10 = '' OR :PARA_CODE10 IS NULL)