UPDATE TF_F_USER_SERVICE_TIMER
   SET PROCESS_TAG = '9'
  where MODIFY_TAG ='1' and USER_ID = :USER_ID AND SALE_PROJECT_ID=:SALE_PROJECT_ID