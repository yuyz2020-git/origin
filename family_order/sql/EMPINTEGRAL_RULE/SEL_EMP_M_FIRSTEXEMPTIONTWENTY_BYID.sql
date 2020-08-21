--IS_CACHE=N
SELECT COUNT(1) 统计数
  FROM CHNL_CU_REGI_PARALLEL A, TF_F_USER_DISCNT B
 WHERE A.REGI_NUM = :REGI_NUM
   AND CAL_FLAG = 0
   AND CUMU_ID NOT LIKE 'Q%'
   AND TRIM(OPER_CODE) = :OPER_CODE
   AND TO_NUMBER(A.USER_ID) = B.USER_ID
   AND B.PARTITION_ID = MOD(TO_NUMBER(A.USER_ID), 10000)
   AND B.DISCNT_CODE = :V_DCODE
   AND TO_CHAR(B.START_DATE, 'YYYYMM') <= A.CUMU_ACYC
   AND TO_CHAR(B.END_DATE, 'YYYYMM') >= A.CUMU_ACYC
   AND TO_CHAR(B.START_DATE, 'DD') >= '20'