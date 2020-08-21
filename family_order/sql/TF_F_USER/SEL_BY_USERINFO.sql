SELECT u.SERIAL_NUMBER,u.USER_ID,u.CUST_ID,u.EPARCHY_CODE,u.CITY_CODE,u.product_id,u.brand_code,c.CUST_NAME,c.PSPT_TYPE_CODE,c.PSPT_ID FROM TF_F_USER u,TF_F_CUST_PERSON c 
 WHERE u.SERIAL_NUMBER = :SERIAL_NUMBER
 AND u.EPARCHY_CODE =:EPARCHY_CODE
 AND u.REMOVE_TAG ='0'
 AND u.CUST_ID =c.CUST_ID