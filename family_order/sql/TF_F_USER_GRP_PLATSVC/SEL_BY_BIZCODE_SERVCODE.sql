SELECT t.SERVICE_ID,t.SERIAL_NUMBER,t.GROUP_ID,t.BIZ_ATTR,t.USER_ID
FROM TF_F_USER_GRP_PLATSVC t
WHERE t.BIZ_CODE=:BIZ_CODE AND t.SERV_CODE=:SERV_CODE
AND SYSDATE BETWEEN t.START_DATE AND t.END_DATE