select ROWID,OPR_NUMB,CHANNEL_ID,CHANNEL_TYPE,CUSTOM_ID from (select ROWID,OPR_NUMB,CHANNEL_ID,CHANNEL_TYPE,CUSTOM_ID from TF_F_USER_CERTIFICATE where 1=1 
AND USER_ID = :USER_ID 
AND SERIAL_NUMBER = :SERIAL_NUMBER 
AND RSRV_STR1='selfServiceCertificateRequest' AND RSRV_STR2 is null order by UPDATE_TIME DESC) b 
where  rownum = 1