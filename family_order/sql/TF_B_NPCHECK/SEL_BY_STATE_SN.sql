SELECT *
  FROM TF_B_NPCHECK A
 WHERE 1 = 1
   AND A.SERIAL_NUMBER = :SERIAL_NUMBER
   AND A.STATE = :STATE
   AND A.ACCEPT_DATE =
(SELECT MAX(t.accept_date)
  FROM TF_B_NPCHECK T
 WHERE 1 = 1
   AND T.SERIAL_NUMBER = :SERIAL_NUMBER)