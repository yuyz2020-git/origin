select a.user_id,       b.user_id_b user_id_b,       b.serial_number_b serial_number,	   apro.product_id,       to_char(b.start_date,'YYYY-MM-DD hh24:mm:ss') start_date  from tf_f_user_product apro,       tf_f_relation_uu b,       tf_f_cust_group  c,       tf_f_user a where apro.user_id = b.user_id_a   and a.cust_id = c.cust_id   and a.remove_tag = '0'   and c.remove_tag = '0'   and sysdate between b.start_date and b.end_date   and apro.product_id = :PRODUCT_ID   and (:USER_ID_A is null or b.user_id_a = :USER_ID_A)   and c.group_id = :GROUP_ID   and a.user_id=apro.user_id