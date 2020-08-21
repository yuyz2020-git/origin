SELECT USER_ID_A
  FROM TF_F_RELATION_UU
   WHERE USER_ID_A = TO_NUMBER(:USER_ID_A)
    AND RELATION_TYPE_CODE = :RELATION_TYPE_CODE
    AND END_DATE > START_DATE
    AND END_DATE > SYSDATE
    AND ROWNUM < 2
