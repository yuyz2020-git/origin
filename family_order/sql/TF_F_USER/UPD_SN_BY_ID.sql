UPDATE TF_F_USER
   SET SERIAL_NUMBER = :SERIAL_NUMBER
 WHERE PARTITION_ID = MOD(:USER_ID, 10000)
   AND USER_ID = TO_NUMBER(:USER_ID)