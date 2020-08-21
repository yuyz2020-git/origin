Select BIZ_CODE,BIZ_TYPE_CODE,BIZ_STATE_CODE,SERVICE_ID,START_DATE,END_DATE   
 From TF_F_USER_PLATSVC   
Where PARTITION_ID = MOD(:USER_ID,10000)    
AND USER_ID = :USER_ID    
AND SERVICE_ID = :SERVICE_ID    
AND SYSDATE BETWEEN START_DATE AND END_DATE    
AND BIZ_STATE_CODE = :BIZ_STATE_CODE