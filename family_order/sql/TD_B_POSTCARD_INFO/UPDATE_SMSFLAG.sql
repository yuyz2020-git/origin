UPDATE TD_B_POSTCARD_INFO 
   SET SEND_SMS_FLAG= :SEND_SMS_FLAG,UPDATA_TIME = sysdate  
 WHERE SERIAL_NUMBER = :SERIAL_NUMBER
   AND STATE='1'