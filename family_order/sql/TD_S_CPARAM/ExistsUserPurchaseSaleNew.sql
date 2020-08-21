SELECT COUNT(1) recordcount
  FROM TF_F_USER_SALE_NEW
 WHERE PARTITION_ID = MOD(TO_NUMBER(:USER_ID),10000)
   AND user_id = TO_NUMBER(:USER_ID)
   AND PRODUCT_ID = :PRODUCT_ID
   AND PROCESS_TAG = '0'
   and nvl(rsrv_date2,end_date) > sysdate