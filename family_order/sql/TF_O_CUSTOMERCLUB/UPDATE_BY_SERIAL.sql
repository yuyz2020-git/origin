UPDATE TF_O_CUSTOMERCLUB
SET  END_DATE = SYSDATE,update_time=sysdate
 WHERE SERIAL_NUMBER = :SERIAL_NUMBER  
 AND  CLUB_TYPE = :CLUB_TYPE
AND  ACCEPT_TAG = '1' 
AND  END_DATE > SYSDATE