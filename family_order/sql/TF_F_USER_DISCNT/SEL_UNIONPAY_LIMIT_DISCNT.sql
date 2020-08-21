SELECT A.USER_ID, A.DISCNT_CODE, A.INST_ID, B.PARA_CODE1, B.PARAM_NAME
  FROM TF_F_USER_DISCNT A, TD_S_COMMPARA B
 WHERE A.DISCNT_CODE = B.PARA_CODE1
   AND A.PARTITION_ID = MOD(:USER_ID, 10000)
   AND A.USER_ID = TO_NUMBER(:USER_ID)
   AND B.SUBSYS_CODE = 'CSM'
   AND B.PARAM_ATTR = 700
   AND B.PARAM_CODE = :PARAM_CODE
   AND A.END_DATE > SYSDATE
   AND B.END_DATE > SYSDATE