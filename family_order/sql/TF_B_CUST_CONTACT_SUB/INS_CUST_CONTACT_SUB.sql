INSERT INTO tf_b_cust_contact_sub(cust_contact_id,accept_month,sub_id_type,sub_id,accept_date,serial_number)
 VALUES(TO_NUMBER(:CUST_CONTACT_ID),TO_NUMBER(SUBSTR(:CUST_CONTACT_ID,5,2)),:SUB_ID_TYPE,:SUB_ID,decode(:ACCEPT_DATE,'',sysdate,TO_DATE(:ACCEPT_DATE,'YYYY-MM-DD HH24:MI:SS')),:SERIAL_NUMBER)