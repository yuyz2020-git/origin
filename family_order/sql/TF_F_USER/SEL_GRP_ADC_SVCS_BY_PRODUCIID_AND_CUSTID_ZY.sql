SELECT t.user_id,pm.product_id_b from tf_f_user t,td_b_product_meb pm where t.product_id=:PRODUCT_ID and t.cust_id=:CUST_ID and t.product_id=pm.product_id and t.remove_tag='0'