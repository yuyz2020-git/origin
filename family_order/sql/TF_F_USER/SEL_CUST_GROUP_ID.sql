select A.GROUP_ID from tf_f_cust_group a ,tf_f_user b where a.cust_id=b.cust_id and b.user_id=TO_NUMBER(:USER_ID)