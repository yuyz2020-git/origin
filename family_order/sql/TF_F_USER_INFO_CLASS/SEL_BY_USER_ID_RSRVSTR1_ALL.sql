SELECT T.* ,ROWID 
FROM UCR_CRM1.TF_F_USER_INFO_CLASS T 
WHERE 1=1 
AND T.USER_ID =:USER_ID
AND T.RSRV_STR1 =:RSRV_STR1
ORDER BY T.IN_DATE DESC 