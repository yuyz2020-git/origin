SELECT A.DISCNT_CODE,TO_CHAR(START_DATE, 'YYYY-MM-DD HH24:MI:SS') START_DATE,
       TO_CHAR(END_DATE, 'YYYY-MM-DD HH24:MI:SS') END_DATE
  FROM TF_F_USER_DISCNT A
 WHERE A.USER_ID = TO_NUMBER(:USER_ID)
   AND A.DISCNT_CODE IN (SELECT B.DISCNT_CODE
                           FROM TD_B_DTYPE_DISCNT B
                          WHERE trim(B.DISCNT_TYPE_CODE) = '5')
   AND SYSDATE BETWEEN A.START_DATE AND A.END_DATE