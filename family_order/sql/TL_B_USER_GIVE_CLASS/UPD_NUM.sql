UPDATE TL_B_USER_GIVE_CLASS T
SET T.USED_NUM = :USED_NUM , T.UNUSED_NUM = :UNUSED_NUM
WHERE 1=1
 AND  T.SERIAL_NUMBER = :SERIAL_NUMBER 
 AND  SYSDATE > T.START_DATE AND SYSDATE< T.END_DATE 
 	
 
