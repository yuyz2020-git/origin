SELECT T.*
  FROM TF_B_LEADER_INFO T
 WHERE (T.SERIAL_NUMBER = :SERIAL_NUMBER OR :SERIAL_NUMBER IS NULL)
   AND (T.LEADER_NAME = :LEADER_NAME OR :LEADER_NAME IS NULL)
   AND (T.POSITION = :POSITION OR :POSITION IS NULL)
   AND T.STATE = '0'