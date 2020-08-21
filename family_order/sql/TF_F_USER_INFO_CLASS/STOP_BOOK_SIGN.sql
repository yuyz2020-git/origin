UPDATE TF_F_USER_INFO_CLASS T
SET T.END_DATE = TO_DATE(:END_DATE, 'yyyy-mm-dd hh24:mi:ss')
WHERE T.USER_ID = TO_NUMBER(:USER_ID)
 AND  T.SERIAL_NUMBER = :SERIAL_NUMBER
 AND  T.USER_CLASS = :USER_CLASS
 AND  T.RSRV_STR1 = '3'
 AND  T.END_DATE > SYSDATE