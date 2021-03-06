select count(distinct u.user_id) REAL_COUNT
   from tf_f_user u, tf_f_customer c
  Where u.cust_id = c.cust_id
  	and c.partition_id = mod(u.cust_id, 10000)
    and u.remove_tag = '0'
    and u.city_code not in ('HNSJ', 'HNHN')
    and c.cust_name = :CUST_NAME
    and c.pspt_id = :PSPT_ID
    and c.remove_tag = '0'
    and c.is_real_name = '1'
    and exists
  (SELECT 1
           FROM tf_F_user_product p
          where p.user_id = u.user_id
            and p.partition_id = mod(u.user_id, 10000)
            and p.main_tag = '1'
            and p.brand_code in ('G001', 'G002', 'G010', 'G005', 'PWLW')
            and sysdate between p.start_date and p.end_date)
