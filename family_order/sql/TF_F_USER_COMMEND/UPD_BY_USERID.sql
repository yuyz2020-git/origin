UPDATE TF_F_USER_COMMEND
SET COMMEND_TAG='1',SUCCESS_TAG=:SUCCESS_TAG,COMMEND_STAFF_ID=:COMMEND_STAFF_ID,COMMEND_DATE=TO_DATE(:COMMEND_DATE,'YYYY-MM-DD HH24:MI:SS')
WHERE USER_ID=TO_NUMBER(:USER_ID)
AND COMMEND_TYPE=:COMMEND_TYPE