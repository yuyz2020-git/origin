SELECT T.*
  FROM TF_F_USER_GPON_DESTROY T
 WHERE 1 = 1
   AND T.KD_SERIAL_NUMBER = :KD_SERIAL_NUMBER
   AND (SYSDATE < T.DESTROY_ORDER_TIME OR
       TO_CHAR(SYSDATE, 'YYYYMMDD') =
       TO_CHAR(T.DESTROY_ORDER_TIME, 'YYYYMMDD') 
       OR (T.DESTROY_ORDER_TIME IS NULL AND T.ACCEPT_MONTH = TO_CHAR(SYSDATE,'YYYYMM') ))