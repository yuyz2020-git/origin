SELECT COUNT(*) NUM
 FROM TF_B_EOP_PROXY
 WHERE STAFF_ID_B =:STAFF_ID_B
    AND ROLE_ID =:ROLE_ID
    AND (START_DATE <=SYSDATE   AND  END_DATE >= SYSDATE)