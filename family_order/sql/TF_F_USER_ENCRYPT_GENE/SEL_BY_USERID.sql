SELECT USER_ID,ENCRYPT_GENE FROM TF_F_USER_ENCRYPT_GENE T WHERE T.USER_ID=:USER_ID
 AND T.PARTITION_ID=MOD(TO_NUMBER(:USER_ID),10000)