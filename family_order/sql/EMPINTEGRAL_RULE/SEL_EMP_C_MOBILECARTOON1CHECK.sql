--IS CACHE=Y
SELECT COUNT(1) 业务数
        FROM TF_F_USER_PLATSVC A, TF_F_USER B
       WHERE A.USER_ID = TO_NUMBER(:USER_ID)
         AND A.USER_ID = B.USER_ID
         AND A.PARTITION_ID = B.PARTITION_ID
         AND B.REMOVE_TAG = '0'
		 AND EXISTS (SELECT 1 FROM TD_CHL_COLLECT L WHERE L.COLLECT_ID=:COLLECT_ID AND L.COLLECT_DEF=to_char(A.SERVICE_ID))
         AND A.END_DATE > SYSDATE