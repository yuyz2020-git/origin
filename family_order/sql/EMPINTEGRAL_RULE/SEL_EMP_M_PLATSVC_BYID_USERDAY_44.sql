--IS_CACHE=N
SELECT COUNT(1) 统计数
  FROM TF_F_USER_PLATSVC A
 WHERE A.PARTITION_ID = MOD(:USER_ID, 10000)
   AND A.USER_ID = :USER_ID
   AND  A.Service_Id IN ('98001901','80012675')
   AND TO_DATE(:SEND_TIME, 'YYYYMMDD') BETWEEN TRUNC(A.START_DATE) AND
       A.END_DATE
   AND A.END_DATE < TO_DATE(:SEND_TIME, 'YYYYMMDD') + 1
   AND EXISTS (SELECT 1 FROM TD_CHL_COLLECT C WHERE C.COLLECT_ID=:COLLECT_ID AND C.COLLECT_DEF=A.SERVICE_ID)   