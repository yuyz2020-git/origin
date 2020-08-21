SELECT 
       SERIAL_NUMBER,
       USER_ID,
       POST_TAG,
       POST_CHANNEL,
       RECEIVE_NUMBER,
       POST_ADR,
       POST_DATE,
       UPDATE_TIME,
       RSRV_STR1,
       RSRV_STR2,
       RSRV_STR3,
       RSRV_STR4
   FROM TF_F_USER_EPOSTINFO
   WHERE SERIAL_NUMBER=:SERIAL_NUMBER
   AND POST_TAG = '0'
   AND RSRV_STR1 = '0'