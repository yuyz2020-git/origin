SELECT A.START_DATE,
       A.END_DATE,
       A.USER_ID,
       A.DISCNT_CODE,
       B.PARAM_NAME DISCNT_NAME
  FROM TF_F_USER_DISCNT A, TD_S_COMMPARA B
 WHERE 1 = 1
   AND A.USER_ID = :USER_ID
   AND PARTITION_ID = MOD(TO_NUMBER(:USER_ID), 10000)
   AND A.DISCNT_CODE = B.PARAM_CODE
   AND B.PARAM_ATTR = '8873'
   AND SYSDATE < A.START_DATE
   AND A.END_DATE > A.START_DATE
   AND SYSDATE BETWEEN B.START_DATE AND B.END_DATE
   AND (B.EPARCHY_CODE = :EPARCHY_CODE OR B.EPARCHY_CODE = 'ZZZZ')
   AND B.SUBSYS_CODE = 'CSM'