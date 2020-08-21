Select count(1) recordcount 
FROM TF_F_USER_OTHER T 
where T.user_id = TO_NUMBER(:USER_ID) 
AND T.PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000) 
and t.rsrv_value_code='FTTH' 
and t.rsrv_str1 is not null
AND SYSDATE BETWEEN T.START_DATE AND T.END_DATE