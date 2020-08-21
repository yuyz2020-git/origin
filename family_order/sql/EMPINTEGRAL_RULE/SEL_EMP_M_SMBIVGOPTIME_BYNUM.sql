--IS_CACHE=N
SELECT COUNT(1) 活跃数
  FROM TF_SM_BI_VGOP T
 WHERE T.SERIAL_NUMBER = :MOBILE_NUM
   AND T.OPER_CODE = :OPER_CODE
   AND T.ACCEPT_MONTH =
       TO_NUMBER(TO_CHAR(TO_DATE(:CUMU_ACYC, 'YYYYMM'), 'MM'))
   AND T.VGOP_TIME >= TO_CHAR(TO_DATE(:SEND_TIME,'YYYYMMDD')+1, 'YYYYMMDD')