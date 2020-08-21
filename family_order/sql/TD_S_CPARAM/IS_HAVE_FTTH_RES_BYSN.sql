SELECT COUNT(1) RECORDCOUNT
  FROM TF_F_USER_OTHER T
 WHERE T.RSRV_VALUE_CODE = 'FTTH'
   AND T.RSRV_STR1 IS NOT NULL
   AND (T.RSRV_TAG1 IS NULL OR T.RSRV_TAG1 = :RSRV_TAG1)
   AND SYSDATE BETWEEN T.START_DATE AND T.END_DATE
   AND T.USER_ID IN (SELECT B.USER_ID
                       FROM TF_F_USER B
                      WHERE B.REMOVE_TAG = '0'
                        AND B.SERIAL_NUMBER = :SERIAL_NUMBER)