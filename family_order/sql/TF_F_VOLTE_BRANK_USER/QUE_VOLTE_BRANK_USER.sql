SELECT T.SERIAL_NUMBER, to_char(T.UPDATE_TIME,'yyyy-mm-dd')UPDATE_TIME
  FROM TF_F_VOLTE_BRANK_USER T
 WHERE 1 = 1
   AND T.SERIAL_NUMBER = :SERIAL_NUMBER
   AND T.UPDATE_TIME >= to_date(:START_DATE,'yyyy-mm-dd') 
   AND T.UPDATE_TIME <= to_date(:END_DATE,'yyyy-mm-dd')