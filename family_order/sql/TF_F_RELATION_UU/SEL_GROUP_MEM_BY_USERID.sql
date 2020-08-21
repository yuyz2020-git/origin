SELECT C.CUST_ID
   FROM TF_F_USER C, TF_F_RELATION_UU D
  WHERE D.USER_ID_B = :USER_ID
    AND D.RELATION_TYPE_CODE = :RELATION_TYPE_CODE
    AND D.END_DATE > SYSDATE
    AND D.USER_ID_A = C.USER_ID
    AND C.REMOVE_TAG = '0'