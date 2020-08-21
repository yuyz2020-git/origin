--IS CACHE=Y
 SELECT count(1) 业务数
        FROM TF_F_USER_PLATSVC A, TF_F_USER B
       WHERE a.PARTITION_ID = MOD(:USER_ID, 10000)
       and A.USER_ID = TO_NUMBER(:USER_ID)
         AND A.USER_ID = B.USER_ID
         AND A.PARTITION_ID = B.PARTITION_ID
         AND B.REMOVE_TAG = '0'
         AND a.START_DATE >= ADD_MONTHS(TO_DATE(:ACCEPT_MONTH, 'YYYYMM'), -3)
		 AND EXISTS (SELECT 1 FROM TD_CHL_COLLECT L WHERE L.COLLECT_ID=:COLLECT_ID AND L.COLLECT_DEF=to_char(A.SERVICE_ID))
         AND a.START_DATE < TO_DATE(:ACCEPT_MONTH, 'YYYYMM')