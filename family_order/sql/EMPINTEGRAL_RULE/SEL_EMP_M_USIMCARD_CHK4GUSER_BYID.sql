--IS_CACHE=N
SELECT COUNT(1) 统计数
  FROM TI_F_USER_4G_ALL A
 WHERE A.USER_ID = :USER_ID
   AND A.PARTITION_ID = MOD(:USER_ID, 10000)
   AND ROWNUM < 2