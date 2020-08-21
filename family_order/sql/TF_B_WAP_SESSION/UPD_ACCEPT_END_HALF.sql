UPDATE TF_B_WAP_SESSION
   SET ACCEPT_END = ACCEPT_END + (1/48)
 WHERE ID_TYPE = :ID_TYPE
   AND SERIAL_NUMBER = :SERIAL_NUMBER
   AND CREDENCE_NO = :CREDENCE_NO
   AND SESSION_ID = :SESSION_ID
   AND SYSDATE > ACCEPT_START
   AND SYSDATE < ACCEPT_END