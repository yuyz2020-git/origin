SELECT COUNT(1) COUNT
  FROM TF_F_WIDENET_BOOK T
 WHERE T.RSRV_STR2 = :SERIAL_NUMBER
   AND T.SET_ADDR = :SET_ADDR