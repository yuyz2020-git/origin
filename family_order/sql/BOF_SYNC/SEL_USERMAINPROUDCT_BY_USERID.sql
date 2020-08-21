SELECT USER_ID, PRODUCT_ID, BRAND_CODE
FROM TF_F_USER_PRODUCT C 
WHERE C.USER_ID = :USER_ID 
AND C.PARTITION_ID = MOD(:USER_ID, 10000) 
AND C.MAIN_TAG = '1' 
AND SYSDATE BETWEEN C.START_DATE AND C.END_DATE