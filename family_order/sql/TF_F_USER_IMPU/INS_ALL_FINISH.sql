INSERT INTO TF_F_USER_IMPU(PARTITION_ID,USER_ID,TEL_URL,SIP_URL,IMPI,IMS_USER_ID,IMS_PASSWORD,START_DATE,END_DATE,RSRV_STR1,RSRV_STR2,RSRV_STR3,RSRV_STR4,RSRV_STR5 )
VALUES (MOD(to_number(:USER_ID),10000), to_number(:USER_ID) , :TEL_URL , :SIP_URL ,:IMPI, :IMS_USER_ID, :IMS_PASSWORD, to_date(:START_DATE,'yyyy-mm-dd hh24:mi:ss') , to_date(:END_DATE,'yyyy-mm-dd hh24:mi:ss') , :RSRV_STR1, :RSRV_STR2, :RSRV_STR3, :RSRV_STR4, :RSRV_STR5)