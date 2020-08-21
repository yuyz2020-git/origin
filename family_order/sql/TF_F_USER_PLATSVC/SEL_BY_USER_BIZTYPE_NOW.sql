SELECT a.*
FROM TF_F_USER_PLATSVC a
  WHERE  a.PARTITION_ID = MOD(:USER_ID,10000)
    AND a.USER_ID = :USER_ID
    AND SYSDATE BETWEEN a.START_DATE AND a.END_DATE
