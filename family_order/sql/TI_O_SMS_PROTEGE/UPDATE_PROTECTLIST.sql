UPDATE TI_O_SMS_PROTEGE SET  EXPIRE_DATE=:EXPIRE_DATE,
UPDATE_TIME=to_date(:UPDATE_TIME,'yyyy-mm-dd,hh24:mi:ss')
,RECV_ID=:RECV_ID
where ACCESS_NO=:ACCESS_NO and SERIAL_NO=:SERIAL_NO and status=0 