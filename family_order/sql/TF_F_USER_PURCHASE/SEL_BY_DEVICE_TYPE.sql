SELECT c.eparchy_code,a.serial_number,c.cust_name,to_char(a.rpay_deposit) rpay_deposit,a.device_type,a.staff_id,to_char(a.finish_date,'yyyy-mm-dd hh24:mi:ss') finish_date  FROM tf_f_user_purchase a,tf_f_user b,tf_f_customer c
WHERE a.USER_ID =TO_NUMBER(:USER_ID) and c.eparchy_code=:EPARCHY_CODE and b.user_id=a.user_id and c.cust_id=b.cust_id