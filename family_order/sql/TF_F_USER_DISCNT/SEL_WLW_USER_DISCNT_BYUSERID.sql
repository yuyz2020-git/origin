SELECT TO_CHAR(A.USER_ID) USER_ID, A.USER_ID_A, A.DISCNT_CODE
  FROM TF_F_USER_DISCNT A, TD_S_COMMPARA B
 WHERE A.PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)
   AND A.USER_ID = :USER_ID
   AND SYSDATE BETWEEN A.START_DATE AND A.END_DATE
   AND A.END_DATE > TRUNC(LAST_DAY(SYSDATE))+ 1 + 1/24/60/60
   AND TO_CHAR(A.DISCNT_CODE) = B.PARAM_CODE
   AND B.SUBSYS_CODE = 'CSM'
   AND B.PARAM_ATTR = 9018
   AND B.END_DATE > SYSDATE