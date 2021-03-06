SELECT PARTITION_ID,
       TO_CHAR(USER_ID_A) USER_ID_A,
       TO_CHAR(USER_ID_B) USER_ID_B,
       RELATION_TYPE_CODE,
       ROLE_CODE_A,
       ROLE_CODE_B,
       ORDERNO,
       SHORT_CODE,
       TO_CHAR(START_DATE, 'yyyy-mm-dd hh24:mi:ss') START_DATE,
       TO_CHAR(END_DATE, 'yyyy-mm-dd hh24:mi:ss') END_DATE
  FROM TF_F_RELATION_UU
 WHERE PARTITION_ID = MOD(TO_NUMBER(:USER_ID_B), 10000)
   AND USER_ID_B = TO_NUMBER(:USER_ID_B)
   AND RELATION_TYPE_CODE = :RELATION_TYPE_CODE
   AND END_DATE >= TO_DATE(TO_CHAR(ADD_MONTHS(SYSDATE, -3), 'yyyymm') || '01','yyyy-mm-dd')
   AND END_DATE <= TO_DATE(TO_CHAR(SYSDATE, 'yyyymm') || '01', 'yyyy-mm-dd') - 1