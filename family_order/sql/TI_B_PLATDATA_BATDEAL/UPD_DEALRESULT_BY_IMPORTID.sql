UPDATE TI_B_PLATDATA_BATDEAL 
SET DEAL_RESULT='0',DEAL_TIME=SYSDATE 
WHERE IMPORT_ID=:IMPORT_ID