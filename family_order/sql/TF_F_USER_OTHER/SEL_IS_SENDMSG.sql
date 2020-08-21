SELECT T.USER_ID, T.RSRV_VALUE_CODE, T.RSRV_VALUE
  FROM TF_F_USER_OTHER T
 WHERE T.USER_ID = :USER_ID
   AND T.RSRV_VALUE_CODE = 'UNLOCKMSG'
   AND SYSDATE BETWEEN T.START_DATE AND T.END_DATE