UPDATE TF_F_USER
   SET CITY_CODE = :CITY_CODE
 WHERE PARTITION_ID = MOD(:USER_ID, 10000)
   AND USER_ID = TO_NUMBER(:USER_ID)