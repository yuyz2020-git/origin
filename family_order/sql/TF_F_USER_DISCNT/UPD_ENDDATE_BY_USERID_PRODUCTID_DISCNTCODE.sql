UPDATE TF_F_USER_DISCNT T 
SET T.END_DATE=TO_DATE(:END_DATE,'YYYY-MM-DD HH24:MI:SS')
WHERE T.USER_ID=:USER_ID
AND T.PARTITION_ID = MOD(:USER_ID, 10000) 
AND T.DISCNT_CODE=:DISCNT_CODE
AND T.END_DATE>=TO_DATE(:END_DATE, 'YYYY-MM-DD HH24:MI:SS')
AND T.START_DATE<T.END_DATE