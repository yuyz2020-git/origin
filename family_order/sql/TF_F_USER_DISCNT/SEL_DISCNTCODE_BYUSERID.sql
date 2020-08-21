SELECT A.DISCNT_CODE
  FROM TF_F_USER_DISCNT A
 WHERE 1=1
   AND A.USER_ID = TO_NUMBER(:USER_ID)
   AND A.DISCNT_CODE IN ('1237','1238','12789')
   AND A.START_DATE < SYSDATE
   AND A.END_DATE >SYSDATE